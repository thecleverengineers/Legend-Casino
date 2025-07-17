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

## Advanced Production Management with PM2

This project includes an advanced PM2 configuration in `ecosystem.config.js` for robust, production-grade process management.

### Features
- **Cluster mode**: Uses all CPU cores for maximum performance and resilience.
- **Automatic restart**: Recovers from crashes, memory leaks, and server reboots.
- **Log management**: Separate error and output logs in the `logs/` directory.
- **Environment variables**: Easily set production variables in the config file.
- **Auto-start on reboot**: Ensures your app is always running, even after a server restart.

### Usage

1. **Start with ecosystem config**
   ```bash
   pm2 start ecosystem.config.js
   ```
2. **Save the process list**
   ```bash
   pm2 save
   ```
3. **Enable auto-start on server reboot**
   ```bash
   pm2 startup
   # Follow the instructions PM2 outputs (copy and run the command with sudo)
   ```
4. **View logs**
   ```bash
   tail -f logs/pm2-out.log
   tail -f logs/pm2-error.log
   ```
5. **Monitor and manage**
   ```bash
   pm2 status
   pm2 logs badapdad
   pm2 restart badapdad
   pm2 stop badapdad
   ```

For more, see the [PM2 documentation](https://pm2.keymetrics.io/).