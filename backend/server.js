// server.js - SmartEdSuite Backend
const express = require('express');
const cors = require('cors');

// Initialize app
const app = express();

// Middleware
app.use(cors());
app.use(express.json());

// Test Route
app.get('/', (req, res) => {
  res.json({ message: "SmartEdSuite Backend is Running! 🚀" });
});

// Future routes will go here
// app.use('/api/attendance', require('./routes/attendance'));

// Start server
const PORT = process.env.PORT || 5000;
app.listen(PORT, () => {
  console.log(`✅ Server running on port ${PORT}`);
});