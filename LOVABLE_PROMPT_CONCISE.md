# 🎮 Gaming Platform - Lovable.dev Prompt

## Overview
Build a comprehensive online casino/gaming platform with real-time betting, financial systems, and admin controls. Target: Indian gaming market with mobile-first design.

## 🎯 Core Features

### 🎲 Games Required
1. **WinGo Prediction Games** - Color (Red/Green/Violet) & number (0-9) betting with 1/3/5/10 min intervals
2. **K3 Dice Games** - 3-dice betting system with sum/combination bets
3. **5D Lottery** - 5-digit number selection with progressive jackpots
4. **Game Lobby** - Categories, search, favorites, recent games

### 👤 User System
- Phone-based registration with OTP
- JWT authentication & user profiles
- VIP level system (Bronze to Diamond)
- Avatar uploads & account verification
- Referral system (F1-F4 commissions)

### 💰 Financial Features
- Multi-currency wallet (INR/USDT)
- UPI/Bank transfer/USDT deposits
- Automated withdrawal system
- Real-time balance updates
- Transaction history & limits

### 🎁 Bonus System
- ₹500 welcome bonus
- Daily check-in rewards
- Referral commissions (1%, 0.3%, 0.09%, 0.027%)
- Recharge bonuses & promotional campaigns

### 🔧 Admin Dashboard
- User management & financial oversight
- Game result control & win rate adjustment
- Real-time analytics & reporting
- Payment gateway management
- Content management system

## 🛠️ Tech Stack

### Frontend
- **Next.js 14** with TypeScript
- **Tailwind CSS** + Shadcn/ui components
- **Socket.IO** for real-time updates
- **Framer Motion** for animations
- **Zustand** for state management

### Backend
- **Node.js + Express.js**
- **PostgreSQL** with Prisma ORM
- **Redis** for caching
- **Socket.IO** server
- **JWT** authentication

## 🎨 Design Requirements

### Visual Design
- Dark gaming theme with neon accents
- Purple/Gold/Red color scheme
- Casino-style animations & effects
- Mobile-first responsive design
- Real-time countdown timers

### Game Interface
- Betting panels with quick amount selection
- Live result displays with animations
- Balance indicators & bet history
- Touch-friendly mobile controls

## 🎮 Game Mechanics

### WinGo Game Logic
```
- 60-second rounds (55s betting + 5s results)
- Random number 0-9 generates result
- Payouts: Colors 2x, Violet 4.5x, Numbers 9x
- 2% house commission on winnings
```

### Real-time Features
- Live countdowns & results
- Instant balance updates
- Bet confirmations & notifications
- Socket.IO for all real-time data

## 🔐 Security & Compliance

### Security Features
- bcrypt password hashing
- Rate limiting & input validation
- PCI-compliant payment processing
- Audit logs & fraud detection
- Age verification (18+)

### Financial Security
- Encrypted transaction data
- Multi-factor withdrawal verification
- Anti-money laundering checks
- Secure payment gateway integration

## 📱 Key Pages/Routes

```
/ → Game lobby/homepage
/games/wingo → WinGo betting interface
/games/k3 → K3 dice games
/games/5d → 5D lottery
/wallet → Financial management
/profile → User profile & settings
/promotions → Bonuses & campaigns
/referrals → Referral program
/admin → Admin dashboard
```

## 🌐 Essential APIs

```
POST /api/auth/register - User registration
POST /api/auth/login - User login
GET /api/games/wingo/current - Current game data
POST /api/games/wingo/bet - Place bet
GET /api/wallet/balance - Get balance
POST /api/wallet/deposit - Make deposit
POST /api/wallet/withdraw - Request withdrawal
GET /api/user/referrals - Referral data
```

## 📋 Development Priority

### Phase 1 (MVP)
1. User auth system
2. WinGo game with real-time betting
3. Basic wallet system
4. Simple admin panel
5. Mobile-responsive design

### Phase 2 (Enhanced)
1. K3 & 5D games
2. Complete bonus system
3. Advanced admin features
4. Payment gateway integration
5. Referral system

## 🎯 Success Criteria

### User Experience
- <3s page load times
- <100ms real-time updates
- Smooth mobile experience
- Intuitive betting interface

### Business Metrics
- High user engagement
- Secure financial transactions
- Effective bonus conversion
- Strong referral growth

## 💡 Special Requirements

### Gaming Features
- Provably fair random number generation
- Historical game results with charts
- Betting limits & responsible gaming tools
- Multi-language support preparation

### Performance
- Handle 10,000+ concurrent users
- 99.9% uptime requirement
- CDN for global asset delivery
- Database optimization for real-time queries

### Monetization
- House edge on all games
- Transaction processing fees
- VIP membership benefits
- Affiliate program commissions

---

## 🚀 Launch Notes

Create a professional-grade gaming platform that feels like a real casino with:
- **Engaging gameplay** with smooth animations
- **Secure financial systems** with multiple payment options
- **Comprehensive admin tools** for business management
- **Mobile-optimized experience** for maximum accessibility

Focus on creating addictive gameplay mechanics while maintaining responsible gaming practices and regulatory compliance.