#!/bin/bash

# 🎮 Gaming Platform Setup Script
# This script sets up the complete gaming platform environment

echo "🎮 Starting Gaming Platform Setup..."

# Check if Node.js is installed
if ! command -v node &> /dev/null; then
    echo "❌ Node.js is not installed. Please install Node.js 14+ first."
    exit 1
fi

# Check if MySQL is installed
if ! command -v mysql &> /dev/null; then
    echo "❌ MySQL is not installed. Please install MySQL 8+ first."
    exit 1
fi

echo "✅ Prerequisites check passed"

# Install dependencies
echo "📦 Installing dependencies..."
npm install

# Copy environment file
if [ ! -f .env ]; then
    echo "📝 Creating environment file..."
    cp dev.env .env
    echo "⚠️  Please update .env file with your database credentials"
else
    echo "✅ Environment file already exists"
fi

# Create required directories
echo "📁 Creating required directories..."
mkdir -p uploads
mkdir -p logs
mkdir -p ssl

# Database setup
echo "🗄️  Setting up database..."
read -p "Enter MySQL root password: " -s mysql_password
echo

# Check MySQL connection
mysql -u root -p$mysql_password -e "SELECT 1;" &> /dev/null
if [ $? -ne 0 ]; then
    echo "❌ Cannot connect to MySQL. Please check your credentials."
    exit 1
fi

# Create database
echo "Creating database..."
mysql -u root -p$mysql_password -e "CREATE DATABASE IF NOT EXISTS big_mumbai_win_dev;"

# Update .env with database credentials
echo "🔧 Updating database configuration..."
sed -i "s/DATABASE_HOST=.*/DATABASE_HOST=localhost/" .env
sed -i "s/DATABASE_USER=.*/DATABASE_USER=root/" .env
sed -i "s/DATABASE_PASSWORD=.*/DATABASE_PASSWORD=$mysql_password/" .env

# Initialize database tables
echo "🏗️  Creating database tables..."
npm run database
npm run database:user
npm run database:trx
npm run database:activity
npm run database:admin

# Create uploads directory structure
echo "📁 Setting up upload directories..."
mkdir -p src/public/uploads/avatars
mkdir -p src/public/uploads/banners
mkdir -p src/public/uploads/documents

# Set permissions
chmod 755 src/public/uploads
chmod 755 src/public/uploads/avatars
chmod 755 src/public/uploads/banners
chmod 755 src/public/uploads/documents

# Generate JWT secret
echo "🔐 Generating JWT secret..."
jwt_secret=$(openssl rand -base64 32)
sed -i "s/JWT_ACCESS_TOKEN=.*/JWT_ACCESS_TOKEN=$jwt_secret/" .env

# Generate app secret
app_secret=$(openssl rand -base64 16)
sed -i "s/secret_key=.*/secret_key=$app_secret/" .env

echo "✅ Setup completed successfully!"
echo ""
echo "📋 Next steps:"
echo "1. Update .env file with your payment gateway credentials"
echo "2. Configure SMS API key in .env"
echo "3. Set up your domain and SSL certificates"
echo "4. Run 'npm run dev' to start development server"
echo "5. Access admin panel at http://localhost:3009/admin"
echo ""
echo "🔑 Default admin credentials:"
echo "Phone: 6666666666"
echo "Password: 6666666666"
echo ""
echo "⚠️  Important: Change default admin credentials before production!"

# Start the application in development mode
read -p "Start the application now? (y/n): " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]; then
    echo "🚀 Starting application..."
    npm run dev
fi