# 🎮 Advanced Gaming Platform - Complete Feature Suite

A comprehensive gaming platform featuring multiple casino games, payment systems, user management, and admin controls. Built with Node.js, Express, MySQL, and Socket.IO.

## 🌟 Features Overview

### 🎲 Gaming Features
- **WinGo Games** - Color & number prediction games (1min, 3min, 5min, 10min)
- **TRX WinGo** - Tron-based prediction games  
- **K3 Games** - Dice betting games with multiple time intervals
- **5D Lottery** - 5-digit lottery games
- **Jili Games Integration** - Slots, fishing, casino, poker games
- **JDB Games Integration** - Multiple game categories
- **Aviator Games** - Crash/multiplier games

### 👤 User Management
- **Registration/Login** - Phone-based authentication with OTP
- **User Profile** - Avatar, level system, VIP status
- **Referral System** - Multi-level commission structure (F1-F4)
- **Wallet System** - Balance management, transactions, transfers

### 💰 Financial Features
- **Payment Gateway Integration** - Multiple payment providers
- **Deposit System** - Bank transfer, UPI, USDT
- **Withdrawal System** - Automated and manual processing
- **Bonus System** - Registration, daily, attendance bonuses
- **Commission System** - Real-time calculation and distribution

### 🎯 Promotional Features
- **Daily Check-in** - Attendance rewards
- **Daily Tasks** - Recharge rewards and achievements
- **Invitation Bonuses** - Referral rewards
- **VIP System** - Level-based benefits
- **Jackpot System** - Progressive jackpots
- **Activity Center** - Various promotional campaigns

### 🔧 Admin Features
- **User Management** - View, edit, ban users
- **Game Control** - Manual game results, win rate control
- **Financial Management** - Deposits, withdrawals, bonuses
- **Statistics Dashboard** - Real-time analytics
- **System Settings** - Game configuration, payment settings

## 🛠️ Technical Stack

- **Backend**: Node.js, Express.js
- **Database**: MySQL 2
- **Real-time**: Socket.IO
- **Authentication**: JWT, bcrypt
- **Payments**: Multiple gateway integrations
- **Frontend**: EJS templates, vanilla JavaScript
- **Validation**: Joi schema validation
- **Security**: Rate limiting, CORS, input sanitization

## 📋 Prerequisites

- Node.js (v14 or higher)
- MySQL (v8 or higher)
- NPM or Yarn package manager

## 🚀 Installation & Setup

### 1. Clone the Repository
```bash
git clone <repository-url>
cd gaming-platform
```

### 2. Install Dependencies
```bash
npm install
```

### 3. Database Setup
```bash
# Install MySQL and create database
mysql -u root -p
CREATE DATABASE big_mumbai_win_dev;
exit

# Create database tables
npm run database
npm run database:user
npm run database:trx
npm run database:activity
npm run database:admin
```

### 4. Environment Configuration
Create a `.env` file with the following variables:

```env
# Server Configuration
PORT=3009
NODE_ENV=development

# Database Configuration
DATABASE_HOST=localhost
DATABASE_USER=your_mysql_user
DATABASE_PASSWORD=your_mysql_password
DATABASE_NAME=big_mumbai_win_dev

# Security
JWT_ACCESS_TOKEN=your_jwt_secret_key
SALT_ROUNDS=10
secret_key=your_app_secret

# Application Settings
APP_BASE_URL=http://localhost:3009
APP_NAME=Gaming Platform
BONUS_MONEY_ON_REGISTER=500

# Payment Configuration
MINIMUM_MONEY_USDT=10
MINIMUM_MONEY_INR=100
MINIMUM_WITHDRAWAL_MONEY_USDT=2
MINIMUM_WITHDRAWAL_MONEY_INR=110
USDT_INR_EXCHANGE_RATE=82

# Game Provider APIs
JILI_AGENT_ID=your_jili_agent_id
JILI_AGENT_KEY=your_jili_key
JILI_GAME_BASE_URL=https://uat-wb-api-2.jiscc77s.com/api1

JDB_AGENT_ID=your_jdb_agent
JDB_DC=your_jdb_dc
JDB_KEY=your_jdb_key
JDB_IV=your_jdb_iv
JDB_API_URL=https://api.jygrq.com

# External Services
FAST2SMS_API=your_sms_api_key
TRON_API_KEY=your_tron_api_key
```

### 5. Start the Application
```bash
# Development mode
npm run dev

# Production mode
npm start
```

## 🎮 Game Features

### WinGo Games
- **Time Intervals**: 1, 3, 5, 10 minutes
- **Bet Types**: Color (Red/Green/Violet), Numbers (0-9)
- **Odds**: Dynamic odds system
- **Live Results**: Real-time result updates

### K3 Games
- **Dice Combinations**: Sum betting, specific combinations
- **Quick Play**: Fast-paced betting rounds
- **Statistics**: Historical data and trends

### 5D Lottery
- **5-Digit Numbers**: Pick your lucky combination
- **Multiple Draws**: Various time intervals
- **High Payouts**: Attractive payout ratios

## 💳 Payment Integration

### Supported Methods
- Bank Transfer (Indian banks)
- UPI Payments
- USDT (Tron network)
- Digital Wallets

### Auto-Processing
- Instant deposit confirmation
- Automated withdrawal processing
- Real-time balance updates

## 👥 User System

### Registration Process
1. Phone number verification
2. OTP confirmation
3. Password setup
4. Welcome bonus credit

### Referral System
- **F1**: Direct referrals (highest commission)
- **F2**: Second level referrals
- **F3**: Third level referrals  
- **F4**: Fourth level referrals

### VIP Levels
- Level-based benefits
- Exclusive bonuses
- Priority support
- Enhanced limits

## 🎁 Bonus System

### Available Bonuses
- **Registration Bonus**: ₹500 welcome bonus
- **Daily Check-in**: Progressive attendance rewards
- **Recharge Bonus**: Deposit match bonuses
- **Invitation Bonus**: Referral rewards
- **VIP Bonuses**: Level-based exclusive offers

## 🔐 Security Features

- **Password Encryption**: bcrypt hashing
- **JWT Authentication**: Secure token-based auth
- **Rate Limiting**: API abuse prevention
- **Input Validation**: Comprehensive data validation
- **SQL Injection Protection**: Parameterized queries
- **XSS Protection**: Output sanitization

## 📊 Admin Dashboard

### Key Features
- User management and analytics
- Game result control
- Financial transaction monitoring
- Real-time statistics
- System configuration
- Marketing campaign management

### Access
- Navigate to `/admin` endpoint
- Default admin credentials in user schema
- Full system control and monitoring

## 🔧 API Endpoints

### Authentication
- `POST /api/register` - User registration
- `POST /api/login` - User login
- `POST /api/send_otp` - Send OTP
- `POST /api/reset_password` - Password reset

### Games
- `GET /bet/wingo` - WinGo game interface
- `POST /api/action/join` - Place bet
- `GET /api/game/history` - Game history
- `GET /api/game/myrecord` - User's bet records

### Financial
- `POST /api/recharge` - Deposit funds
- `POST /api/withdrawal` - Request withdrawal
- `GET /api/transaction/history` - Transaction history
- `GET /api/wallet/balance` - Check balance

### Social Features
- `GET /api/promotion/subordinates` - Referral data
- `POST /api/activity/invitation_bonus/claim` - Claim bonuses
- `GET /api/activity/attendance_bonus` - Check-in status

## 🌐 Frontend Structure

### Page Routes
- `/` - Home page redirect
- `/home` - Dashboard
- `/bet/wingo` - WinGo games
- `/bet/k3` - K3 games
- `/bet/5d` - 5D lottery
- `/wallet` - Financial management
- `/promotion` - Referral center
- `/activity` - Promotional activities
- `/vip` - VIP center

## 🔄 Real-time Features

### Socket.IO Integration
- Live game results
- Real-time notifications
- Chat system
- Admin broadcasts
- Balance updates

## 📱 Mobile Optimization

### Responsive Design
- Mobile-first approach
- Touch-friendly interface
- Optimized performance
- App-like experience

## 🛡️ Monitoring & Logging

### System Monitoring
- Real-time error tracking
- Performance monitoring
- User activity logs
- Financial transaction logs
- Game result logs

## 🚀 Deployment

### Production Setup
1. Set up production database
2. Configure environment variables
3. Build static assets
4. Set up reverse proxy (nginx)
5. Configure SSL certificates
6. Set up monitoring and logging

### Docker Deployment (Optional)
```bash
# Build Docker image
docker build -t gaming-platform .

# Run container
docker run -p 3009:3009 gaming-platform
```

## 📈 Performance Optimization

### Database Optimization
- Indexed queries
- Connection pooling
- Query optimization
- Cached results

### Frontend Optimization
- Minified assets
- Compressed images
- Lazy loading
- Service workers

## 🤝 Contributing

1. Fork the repository
2. Create feature branch
3. Commit changes
4. Push to branch
5. Create pull request

## 📄 License

This project is licensed under the ISC License.

## 🆘 Support

For technical support or questions:
- Documentation: Check inline code comments
- Issues: GitHub issues tracker
- Email: Technical team contact

## 🔮 Roadmap

### Upcoming Features
- Crypto payment integration
- Mobile app development
- Advanced analytics
- Multi-language support
- AI-powered recommendations

---

**Note**: This platform includes gambling features. Please ensure compliance with local laws and regulations before deployment.