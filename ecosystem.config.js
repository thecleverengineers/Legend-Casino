module.exports = {
  apps: [
    {
      name: 'badapdad',
      script: 'src/server.js',
      instances: 'max', // Run in cluster mode using all CPU cores
      exec_mode: 'cluster',
      env: {
        NODE_ENV: 'production',
        // Add other environment variables here as needed
      },
      watch: false, // Set to true if you want PM2 to restart on file changes (not recommended for production)
      max_memory_restart: '1G', // Restart if memory usage exceeds 1GB
      error_file: './logs/pm2-error.log',
      out_file: './logs/pm2-out.log',
      log_date_format: 'YYYY-MM-DD HH:mm Z',
      restart_delay: 5000, // Wait 5 seconds before restarting on crash
    },
  ],
};