module.exports = {
  apps: [
    {
      name: "badapdad",
      script: "src/server.js",
      // Run in cluster mode to fully utilise available CPU cores
      exec_mode: "cluster",
      instances: "max",
      autorestart: true,
      watch: false,
      max_memory_restart: "500M",
      env: {
        NODE_ENV: "development",
      },
      env_production: {
        NODE_ENV: "production",
      },
    },
  ],
};