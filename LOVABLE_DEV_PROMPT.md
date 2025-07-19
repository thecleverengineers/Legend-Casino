# 🎮 Advanced Gaming Platform - Lovable.dev Full-Stack Prompt

## Project Overview
Create a comprehensive online gaming platform featuring multiple casino games, real-time betting, payment systems, user management, and admin controls. This should be a modern, responsive web application with real-time features and secure financial transactions.

## 🎯 Core Features Required

### 🎲 Gaming System
1. **WinGo Prediction Games**
   - Color prediction games (Red/Green/Violet)
   - Number prediction (0-9)
   - Multiple time intervals: 1min, 3min, 5min, 10min
   - Real-time countdown timers
   - Live result announcements
   - Historical results with charts
   - Betting odds system with dynamic payouts

2. **TRX WinGo (Tron-based)**
   - Similar to WinGo but integrated with Tron blockchain
   - USDT betting capabilities
   - Tron wallet integration
   - Blockchain result verification

3. **K3 Dice Games**
   - Three dice betting system
   - Sum betting (3-18)
   - Specific number combinations
   - Big/Small betting options
   - Real-time dice rolling animations
   - Multiple betting intervals

4. **5D Lottery System**
   - 5-digit number selection
   - Multiple draw times
   - Progressive jackpots
   - Quick pick options
   - Prize tier system

5. **Third-Party Game Integration**
   - Jili Games API integration (Slots, Fishing, Casino, Poker)
   - JDB Games API integration
   - Game lobby with categories
   - Seamless wallet integration
   - Game launch in iframe/new window

### 👤 User Management System
1. **Authentication & Registration**
   - Phone number-based registration
   - OTP verification system
   - Secure password authentication
   - JWT token management
   - Guest mode for game viewing
   - Social login options

2. **User Profile System**
   - Avatar upload and selection
   - Username and display name
   - Profile statistics
   - Account verification levels
   - Privacy settings
   - Account security features

3. **Level & VIP System**
   - User level progression
   - VIP tier system (Bronze, Silver, Gold, Platinum, Diamond)
   - Level-based benefits and bonuses
   - Experience points system
   - VIP exclusive features and games

### 💰 Financial System
1. **Wallet Management**
   - Multi-currency support (INR, USDT)
   - Real-time balance updates
   - Transaction history
   - Balance transfer between games
   - Wallet freeze/unfreeze functionality

2. **Deposit System**
   - Bank transfer integration
   - UPI payment gateway
   - USDT (Tron) deposits
   - QR code payments
   - Instant deposit confirmation
   - Deposit bonus system
   - Minimum/maximum limits

3. **Withdrawal System**
   - Multiple withdrawal methods
   - Automated processing system
   - Manual review for large amounts
   - Withdrawal limits and verification
   - Processing time indicators
   - Fee structure display

4. **Payment Gateway Integration**
   - Multiple payment providers
   - Secure payment processing
   - PCI compliance
   - Anti-fraud measures
   - Currency conversion

### 🎁 Promotion & Bonus System
1. **Registration Bonuses**
   - Welcome bonus (₹500 default)
   - First deposit bonus
   - Phone verification bonus
   - Referral signup bonus

2. **Daily Activities**
   - Daily check-in rewards
   - Progressive attendance bonuses
   - Daily task completion rewards
   - Streak bonuses
   - Login rewards

3. **Referral System**
   - Multi-level referral program (F1-F4)
   - Commission structure
   - Real-time commission tracking
   - Referral link generation
   - Team building rewards
   - Downline management

4. **Activity Centers**
   - Recharge reward campaigns
   - Game-specific bonuses
   - Seasonal promotions
   - Tournament rewards
   - Achievement system

### 🔧 Admin Dashboard
1. **User Management**
   - User list with search/filter
   - User profile editing
   - Account status management
   - Balance adjustments
   - Login history tracking
   - Ban/unban functionality

2. **Game Control System**
   - Manual game result control
   - Win rate adjustment
   - Game schedule management
   - Maintenance mode
   - Game statistics monitoring

3. **Financial Management**
   - Deposit/withdrawal monitoring
   - Transaction approval system
   - Financial reports
   - Payment gateway management
   - Commission calculations
   - Bonus distribution

4. **System Analytics**
   - Real-time user statistics
   - Revenue analytics
   - Game performance metrics
   - User behavior analysis
   - Financial dashboards
   - Custom report generation

5. **Content Management**
   - Announcement system
   - Banner management
   - Game configuration
   - Promotion settings
   - Support ticket system

## 🛠️ Technical Requirements

### Frontend Technology Stack
- **Framework**: Next.js 14+ with TypeScript
- **Styling**: Tailwind CSS with custom components
- **UI Library**: Radix UI or Shadcn/ui
- **State Management**: Zustand or Redux Toolkit
- **Real-time**: Socket.IO client
- **Charts**: Chart.js or Recharts
- **Animations**: Framer Motion
- **Forms**: React Hook Form with Zod validation
- **HTTP Client**: Axios or TanStack Query

### Backend Technology Stack
- **Runtime**: Node.js with Express.js
- **Database**: PostgreSQL with Prisma ORM
- **Authentication**: JWT with refresh tokens
- **Real-time**: Socket.IO server
- **File Upload**: Multer with cloud storage
- **Caching**: Redis
- **Queue System**: Bull Queue for background jobs
- **Payment**: Stripe, Razorpay, or similar
- **Validation**: Zod schemas
- **Security**: Helmet, CORS, rate limiting

### Database Schema Requirements
1. **Users Table**
   - User credentials and profile
   - Wallet balances
   - Level and VIP status
   - Referral information
   - Security settings

2. **Games Tables**
   - Game results and history
   - Betting records
   - Game configurations
   - Odds and payouts

3. **Financial Tables**
   - Transactions (deposits/withdrawals)
   - Betting history
   - Commission records
   - Bonus distributions

4. **System Tables**
   - Admin settings
   - Promotions and campaigns
   - Announcements
   - Audit logs

## 🎨 UI/UX Requirements

### Design System
1. **Color Scheme**
   - Primary: Gaming-themed colors (Purple, Gold, Red)
   - Background: Dark theme with neon accents
   - Success: Green for wins
   - Error: Red for losses
   - Warning: Orange for alerts

2. **Typography**
   - Clean, readable fonts
   - Gaming-style headings
   - Clear number displays
   - Multi-language support

3. **Components**
   - Game cards with animations
   - Real-time counters and timers
   - Interactive betting interfaces
   - Responsive navigation
   - Modal systems for games
   - Loading states and skeletons

### Mobile-First Design
- Responsive design for all screen sizes
- Touch-friendly interfaces
- Swipe gestures for games
- Mobile-optimized forms
- Progressive Web App (PWA) features

### Gaming Interface Requirements
1. **Game Lobby**
   - Game category filters
   - Search functionality
   - Game thumbnails with info
   - Favorites system
   - Recent games tracking

2. **Betting Interface**
   - Quick bet buttons
   - Bet amount selectors
   - Odds display
   - Bet confirmation modals
   - Balance indicators
   - Bet history sidebar

3. **Real-time Features**
   - Live countdown timers
   - Result animations
   - Win/loss notifications
   - Balance updates
   - Chat systems (optional)

## 🔐 Security Requirements

### Authentication Security
- Password hashing (bcrypt)
- JWT token security
- Session management
- Two-factor authentication (2FA)
- Account lockout policies
- IP-based restrictions

### Financial Security
- Encrypted financial data
- PCI DSS compliance
- Transaction logging
- Fraud detection
- Withdrawal verification
- Audit trails

### Application Security
- Input validation and sanitization
- SQL injection prevention
- XSS protection
- CSRF protection
- Rate limiting
- API security

## 📱 Feature Specifications

### Game Mechanics
1. **WinGo Game Logic**
   ```
   - Timer: Countdown from bet close to result
   - Betting: 55 seconds, result announcement: 5 seconds
   - Results: Random number 0-9, color based on number
   - Payouts: Green/Red: 2x, Violet: 4.5x, Numbers: 9x
   - Commission: 2% on winnings
   ```

2. **Real-time Updates**
   - Socket.IO for live updates
   - Game result broadcasts
   - Balance updates
   - Bet confirmations
   - User notifications

### Payment Flow
1. **Deposit Process**
   ```
   User selects amount → Payment method → Gateway redirect → 
   Confirmation → Balance update → Notification
   ```

2. **Withdrawal Process**
   ```
   User requests → Verification → Admin approval (if needed) → 
   Payment processing → Confirmation → Balance deduction
   ```

### Bonus System Logic
1. **Referral Commissions**
   ```
   F1: 1% of betting amount
   F2: 0.3% of betting amount  
   F3: 0.09% of betting amount
   F4: 0.027% of betting amount
   ```

2. **Daily Bonuses**
   - Check-in streaks with increasing rewards
   - Recharge-based bonus tiers
   - Activity completion rewards

## 🌐 API Endpoints Structure

### Authentication APIs
```
POST /api/auth/register
POST /api/auth/login
POST /api/auth/logout
POST /api/auth/refresh
POST /api/auth/verify-otp
POST /api/auth/forgot-password
```

### Game APIs
```
GET /api/games/wingo/current
POST /api/games/wingo/bet
GET /api/games/wingo/history
GET /api/games/wingo/my-bets
GET /api/games/wingo/results
```

### Financial APIs
```
GET /api/wallet/balance
POST /api/wallet/deposit
POST /api/wallet/withdraw
GET /api/wallet/transactions
GET /api/wallet/withdrawal-methods
```

### User APIs
```
GET /api/user/profile
PUT /api/user/profile
GET /api/user/referrals
GET /api/user/bonuses
POST /api/user/claim-bonus
```

## 🚀 Deployment Requirements

### Infrastructure
- Cloud hosting (AWS, Google Cloud, or Vercel)
- CDN for static assets
- Database hosting with backups
- Redis cache hosting
- SSL certificate
- Domain and DNS configuration

### Environment Configuration
- Separate environments (dev, staging, prod)
- Environment variables for secrets
- Database migrations
- CI/CD pipeline
- Monitoring and logging

### Performance Requirements
- Page load time < 3 seconds
- Real-time updates < 100ms latency
- 99.9% uptime
- Scalable to 10,000+ concurrent users
- Mobile performance optimization

## 📋 Development Phases

### Phase 1: Core Foundation
- User authentication system
- Basic game framework
- Database setup
- Payment integration basics
- Admin panel foundation

### Phase 2: Game Implementation
- WinGo game complete implementation
- Real-time betting system
- Socket.IO integration
- Basic bonus system
- Mobile responsiveness

### Phase 3: Advanced Features
- Multiple game types (K3, 5D)
- Advanced bonus systems
- Referral program
- VIP system
- Enhanced admin controls

### Phase 4: Third-party Integration
- External game provider APIs
- Advanced payment gateways
- Analytics integration
- Performance optimization
- Security hardening

### Phase 5: Production & Scaling
- Load testing
- Security audit
- Performance optimization
- Monitoring setup
- Launch preparation

## 🎯 Success Metrics

### User Engagement
- Daily active users
- Session duration
- Game participation rates
- Return user percentage
- User retention rates

### Financial Metrics
- Transaction volume
- Revenue per user
- Deposit/withdrawal ratios
- Bonus redemption rates
- Payment success rates

### Technical Metrics
- Page load speeds
- API response times
- Error rates
- Uptime percentage
- Mobile performance scores

## 📝 Additional Requirements

### Compliance
- Age verification (18+ only)
- Responsible gaming features
- Terms of service integration
- Privacy policy compliance
- Regional gambling law compliance

### Support Features
- Help center with FAQs
- Live chat support
- Ticket system
- User guides and tutorials
- Multi-language support

### Analytics
- User behavior tracking
- Game performance analytics
- Financial reporting
- A/B testing framework
- Custom dashboard creation

---

## 🎮 Final Notes for Lovable.dev

This gaming platform should be:
1. **Visually Stunning**: Modern gaming aesthetics with smooth animations
2. **Highly Interactive**: Real-time updates and engaging user experience
3. **Secure & Reliable**: Financial-grade security and stability
4. **Scalable**: Built to handle growth and high traffic
5. **Mobile-Optimized**: Perfect experience across all devices
6. **Feature-Rich**: Comprehensive gaming and financial features

The application should feel like a professional gaming platform with casino-quality games, robust financial systems, and enterprise-level admin controls. Focus on creating an engaging, secure, and profitable gaming ecosystem.

**Priority Features**: Start with WinGo games, user authentication, basic payment system, and admin panel. Then expand to additional games and advanced features.

**Target Audience**: Online gaming enthusiasts, mobile users, and international players with focus on Indian market initially.

**Monetization**: House edge on games, transaction fees, premium features, and affiliate programs.