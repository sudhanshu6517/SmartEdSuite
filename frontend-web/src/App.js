// src/App.js
import React from 'react';
import './App.css';

function App() {
  return (
    <div className="app">
      <header className="header">
        <h1>SmartEdSuite Admin Panel</h1>
        <p>Welcome, Admin</p>
      </header>

      <nav className="sidebar">
        <ul>
          <li>📊 Dashboard</li>
          <li>🎓 Students</li>
          <li>🏫 Classes</li>
          <li>📝 Attendance</li>
          <li>📈 Analytics</li>
          <li>⚙️ Settings</li>
        </ul>
      </nav>

      <main className="main-content">
        <section className="card">
          <h2>🏫 School Overview</h2>
          <p>Total Students: <strong>1,200</strong></p>
          <p>Avg Attendance: <strong>87%</strong></p>
          <p>At-Risk Students: <strong>14</strong></p>
        </section>

        <section className="card">
          <h2>🚨 At-Risk Alerts</h2>
          <ul>
            <li>❌ Ravi Kumar — Attendance dropped from 95% to 60%</li>
            <li>❌ Priya Sharma — Missed 3 classes this week</li>
          </ul>
        </section>

        <section className="card">
          <h2>📤 Export Reports</h2>
          <button>Download Attendance (PDF)</button>
          <button>Export Grades (Excel)</button>
        </section>
      </main>
    </div>
  );
}

export default App;