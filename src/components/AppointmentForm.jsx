import React, { useState } from 'react';
import '../style/AppointmentForm.css';

const AppointmentForm = () => {
  const [formData, setFormData] = useState({
    name: '',
    email: '',
    date: '',
    time: '',
    message: ''
  });

  const handleChange = (e) => {
    const { name, value } = e.target;
    setFormData({ ...formData, [name]: value });
  };

  const handleSubmit = (e) => {
    e.preventDefault();
    // You can add API call or form handling logic here
    console.log('Appointment Submitted:', formData);
    alert(`Appointment request sent by ${formData.name}`);
    setFormData({
      name: '',
      email: '',
      date: '',
      time: '',
      message: ''
    });
  };

  return (
    <div className="form-container">
      <h2>Book an Appointment</h2>
      <form onSubmit={handleSubmit}>
        <label htmlFor="name">Full Name</label>
        <input
          type="text"
          id="name"
          name="name"
          value={formData.name}
          onChange={handleChange}
          required
        />

        <label htmlFor="email">Email</label>
        <input
          type="email"
          id="email"
          name="email"
          value={formData.email}
          onChange={handleChange}
          required
        />

        <label htmlFor="date">Preferred Date</label>
        <input
          type="date"
          id="date"
          name="date"
          value={formData.date}
          onChange={handleChange}
          required
        />

        <label htmlFor="time">Preferred Time</label>
        <input
          type="time"
          id="time"
          name="time"
          value={formData.time}
          onChange={handleChange}
          required
        />

        <label htmlFor="message">Message (Optional)</label>
        <textarea
          id="message"
          name="message"
          rows="4"
          value={formData.message}
          onChange={handleChange}
        />

        <button type="submit">Submit Appointment</button>
      </form>
    </div>
  );
};

export default AppointmentForm;
