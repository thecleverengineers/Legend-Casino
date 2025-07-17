# Production Deployment with PM2

To deploy the application in production mode using PM2:

1. Install dependencies (if not already):
   ```bash
   npm install
   ```
2. Start the server with PM2:
   ```bash
   npm run deploy:prod
   ```
3. To view logs:
   ```bash
   pm2 logs badapdad
   ```
4. To stop the server:
   ```bash
   pm2 stop badapdad
   ```
5. To restart the server:
   ```bash
   pm2 restart badapdad
   ```

You can find more PM2 commands in the [PM2 documentation](https://pm2.keymetrics.io/).