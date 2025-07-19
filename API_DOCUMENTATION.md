# 🎮 Gaming Platform API Documentation

## Base URL
```
Development: http://localhost:3009
Production: https://your-domain.com
```

## Authentication
Most endpoints require JWT authentication via cookies or Authorization header:
```
Authorization: Bearer <jwt_token>
```

---

## 🔐 Authentication Endpoints

### Register User
```http
POST /api/register
```
**Body:**
```json
{
  "phone": "1234567890",
  "password": "password123",
  "name_user": "John Doe",
  "invite": "referral_code"
}
```

### Login User
```http
POST /api/login
```
**Body:**
```json
{
  "phone": "1234567890",
  "password": "password123"
}
```

### Send OTP
```http
POST /api/send_otp
```
**Body:**
```json
{
  "phone": "1234567890",
  "type": "register" // or "forgot"
}
```

### Reset Password
```http
POST /api/reset_password
```
**Body:**
```json
{
  "phone": "1234567890",
  "otp": "123456",
  "new_password": "newpassword123"
}
```

---

## 🎲 WinGo Game Endpoints

### Get Current Game
```http
GET /api/wingo/game
```
**Query Parameters:**
- `game`: wingo, wingo3, wingo5, wingo10

**Response:**
```json
{
  "status": true,
  "data": {
    "period": "2024010110001",
    "time_remaining": 45,
    "game": "wingo",
    "status": 0
  }
}
```

### Place Bet
```http
POST /api/action/join
```
**Body:**
```json
{
  "typeid": "wingo",
  "join": "red", // red, green, violet, 0-9
  "x": 1, // bet multiplier
  "money": 100 // bet amount
}
```

### Get Game History
```http
GET /api/game/history
```
**Query Parameters:**
- `typeid`: wingo, wingo3, wingo5, wingo10
- `limit`: number of results (default: 10)

### Get My Bet Records
```http
GET /api/game/myrecord
```
**Query Parameters:**
- `typeid`: wingo, wingo3, wingo5, wingo10
- `limit`: number of results
- `page`: page number

---

## 🎯 K3 Game Endpoints

### Get K3 Current Game
```http
GET /api/k3/game
```
**Query Parameters:**
- `game`: 1, 3, 5, 10 (minutes)

### Place K3 Bet
```http
POST /api/action/k3/join
```
**Body:**
```json
{
  "typeid": "k3d",
  "join": "total3", // betting option
  "x": 1,
  "money": 100
}
```

---

## 🎰 5D Game Endpoints

### Get 5D Current Game
```http
GET /api/5d/game
```

### Place 5D Bet
```http
POST /api/action/5d/join
```
**Body:**
```json
{
  "typeid": "5d",
  "join": "12345", // 5-digit number
  "x": 1,
  "money": 100
}
```

---

## 💰 Wallet & Financial Endpoints

### Get Wallet Balance
```http
GET /api/money/user
```

**Response:**
```json
{
  "status": true,
  "money": 5000.50,
  "total_money": 15000.00
}
```

### Recharge/Deposit
```http
POST /api/recharge
```
**Body:**
```json
{
  "money": 1000,
  "type": "bank", // bank, momo, usdt
  "utr": "transaction_id"
}
```

### Request Withdrawal
```http
POST /api/withdrawal

```
**Body:**
```json
{
  "money": 500,
  "password": "user_password",
  "bank_name": "SBI",
  "name_bank": "John Doe",
  "stk": "1234567890"
}
```

### Get Transaction History
```http
GET /api/recharge/history
```
**Query Parameters:**
- `page`: page number
- `limit`: results per page

### Get Withdrawal History
```http
GET /api/withdrawal/history
```

---

## 🎁 Promotion & Bonus Endpoints

### Get Daily Check-in Status
```http
GET /api/activity/attendance_bonus
```

### Claim Attendance Bonus
```http
POST /api/activity/attendance_bonus/claim
```

### Get Invitation Bonus
```http
GET /api/activity/invitation_bonus
```

### Claim Invitation Bonus
```http
POST /api/activity/invitation_bonus/claim
```
**Body:**
```json
{
  "level": 1 // invitation level to claim
}
```

### Get Recharge Bonus
```http
GET /api/activity/daily_recharge_bonus
```

### Claim Recharge Bonus
```http
POST /api/activity/daily_recharge_bonus/claim
```

---

## 👥 Social & Referral Endpoints

### Get Subordinates Data
```http
GET /api/subordinates
```
**Query Parameters:**
- `page`: page number
- `phone`: search by phone (optional)

### Get Subordinates Summary
```http
GET /api/subordinates/summary
```

### Get Team Details
```http
GET /api/subordinates/details
```
**Query Parameters:**
- `timeType`: today, yesterday, thisWeek, lastWeek, thisMonth, lastMonth

### Get Invitation Record
```http
GET /api/activity/invitation/record
```

---

## 🎮 Game Provider Integration

### Jili Games

#### Get Game List
```http
GET /jili/game_list
```

#### Get Game Link
```http
GET /jili/game_link
```
**Query Parameters:**
- `game_id`: Jili game identifier

#### Game Authentication (Webhook)
```http
POST /jili/auth
```

#### Place Bet (Webhook)
```http
POST /jili/bet
```

### JDB Games

#### Launch Game
```http
GET /jdb/launch
```
**Query Parameters:**
- `game_id`: JDB game identifier

#### Get Quick Games
```http
GET /jdb/quick
```

---

## 👤 User Profile Endpoints

### Get User Profile
```http
GET /api/user
```

### Update Profile
```http
POST /api/user/profile
```
**Body:**
```json
{
  "name_user": "New Name",
  "avatar": "avatar_filename"
}
```

### Change Password
```http
POST /api/user/change_password
```
**Body:**
```json
{
  "current_password": "oldpass",
  "new_password": "newpass"
}
```

### Upload Avatar
```http
POST /api/user/avatar
```
**Content-Type:** multipart/form-data
**Body:** File upload

---

## 🔧 Admin Endpoints

### Admin Login
```http
POST /api/admin/login
```

### Get Users List
```http
GET /api/admin/users
```
**Query Parameters:**
- `page`: page number
- `limit`: results per page
- `search`: search term
- `status`: user status filter

### Update User
```http
PUT /api/admin/user/:userId
```
**Body:**
```json
{
  "money": 1000,
  "status": 1,
  "level": 5
}
```

### Get Financial Reports
```http
GET /api/admin/reports/financial
```
**Query Parameters:**
- `start_date`: YYYY-MM-DD
- `end_date`: YYYY-MM-DD
- `type`: deposits, withdrawals, bets

### Control Game Results
```http
POST /api/admin/game/control
```
**Body:**
```json
{
  "game": "wingo",
  "result": 5,
  "manual": true
}
```

### Get System Statistics
```http
GET /api/admin/stats
```

---

## 📊 Analytics Endpoints

### Get Game Statistics
```http
GET /api/stats/games
```
**Query Parameters:**
- `game`: game type
- `period`: daily, weekly, monthly

### Get Revenue Analytics
```http
GET /api/stats/revenue
```

### Get User Analytics
```http
GET /api/stats/users
```

---

## 🔔 Notification Endpoints

### Get Notifications
```http
GET /api/notifications
```

### Mark as Read
```http
POST /api/notifications/:id/read
```

### Send Announcement (Admin)
```http
POST /api/admin/announcements
```
**Body:**
```json
{
  "title": "Announcement Title",
  "content": "Announcement content",
  "type": "general", // general, maintenance, promotion
  "target": "all" // all, vip, specific_users
}
```

---

## 🎯 VIP System Endpoints

### Get VIP Info
```http
GET /api/vip/info
```

### Get VIP Benefits
```http
GET /api/vip/benefits
```

### Claim VIP Bonus
```http
POST /api/vip/claim_bonus
```

---

## ⚙️ System Endpoints

### Get App Settings
```http
GET /api/settings
```

### Health Check
```http
GET /api/health
```

### Get Bank List
```http
GET /api/bank/list
```

---

## 🔒 Security & Rate Limiting

### Rate Limits
- Login: 5 requests per minute
- Betting: 10 requests per minute  
- General API: 100 requests per minute
- Admin API: 50 requests per minute

### Security Headers
All responses include security headers:
- `X-Frame-Options: DENY`
- `X-Content-Type-Options: nosniff`
- `X-XSS-Protection: 1; mode=block`

### Error Responses
Standard error format:
```json
{
  "status": false,
  "message": "Error description",
  "code": "ERROR_CODE"
}
```

### Common Error Codes
- `INVALID_CREDENTIALS`: Login failed
- `INSUFFICIENT_BALANCE`: Not enough money
- `GAME_CLOSED`: Betting period ended
- `INVALID_BET`: Invalid bet parameters
- `RATE_LIMITED`: Too many requests
- `UNAUTHORIZED`: Authentication required
- `FORBIDDEN`: Insufficient permissions

---

## 📱 Real-time Events (Socket.IO)

### Client Events

#### Join Game Room
```javascript
socket.emit('joinGame', { game: 'wingo' });
```

#### Place Bet
```javascript
socket.emit('placeBet', {
  game: 'wingo',
  type: 'red',
  amount: 100
});
```

### Server Events

#### Game Update
```javascript
socket.on('gameUpdate', (data) => {
  // { period, timeRemaining, status }
});
```

#### Bet Result
```javascript
socket.on('betResult', (data) => {
  // { win, amount, balance }
});
```

#### Balance Update
```javascript
socket.on('balanceUpdate', (data) => {
  // { newBalance }
});
```

#### Game Result
```javascript
socket.on('gameResult', (data) => {
  // { result, winners, period }
});
```

---

## 🧪 Testing

### Test User Credentials
- Phone: `6666666666`
- Password: `6666666666`
- Role: Admin

### Test Endpoints
Use tools like Postman or curl to test endpoints:

```bash
# Login and get token
curl -X POST http://localhost:3009/api/login \
  -H "Content-Type: application/json" \
  -d '{"phone":"6666666666","password":"6666666666"}'

# Get user balance
curl -X GET http://localhost:3009/api/money/user \
  -H "Authorization: Bearer YOUR_TOKEN"
```

---

## 📚 Integration Examples

### Frontend Integration (React/Next.js)
```javascript
import axios from 'axios';
import io from 'socket.io-client';

// API Client
const api = axios.create({
  baseURL: 'http://localhost:3009/api',
  withCredentials: true
});

// Socket connection
const socket = io('http://localhost:3009');

// Place bet
const placeBet = async (betData) => {
  try {
    const response = await api.post('/action/join', betData);
    return response.data;
  } catch (error) {
    console.error('Bet failed:', error);
  }
};

// Listen for game updates
socket.on('gameUpdate', (data) => {
  console.log('Game update:', data);
});
```

This comprehensive API documentation covers all the major endpoints and features of the gaming platform. Use it as a reference for integration and development.