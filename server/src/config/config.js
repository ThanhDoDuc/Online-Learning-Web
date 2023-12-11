const path = require("path");

module.exports = {
  port: process.env.PORT || 8888,
  db: {
    database: process.env.DB_NAME || "thanh1",
    user: process.env.DB_USER || "thanh1",
    password: process.env.DB_PASS || "123",
    options: {
      dialect: process.env.DIALECT || "mysql",  
      host: process.env.HOST || "localhost",
    },
  },
  authentication: {
    jwtSecret: process.env.JWT_SECRET || "secret",
  },
};
