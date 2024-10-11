import React, { useState } from 'react';
import '../style/AppointmentForm.css';

const AppointmentForm = () => {
  const [formData, setFormData] = useState({
    name: '',
    email: '',
    phone: '',
    date: '',
    gender: '',
    appointmentdate: '',
    time: '',
    department:'',
    doctor:'',
    message: ''
  });

  const departmentsArray = [
    "Pediatrics",
    "Orthopedics",
    "Cardiology",
    "Neurology",
    "Oncology",
    "Radiology",
    "Physical Therapy",
    "Dermatology",
    "ENT",
  ];

  const handleChange = (e,) => {
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
      phone: '',
      date: '',
      gender: '',
      appointmentdate: '',
      time: '',
      department:'',
      doctor:'',
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
        <label htmlFor="number">Personal contact</label>
        <input
          type="number"
          placeholder="Mobile Number"
          value={formData.phone}
          onChange={handleChange}
        />
        <label htmlFor="date">date of birth</label>
        <input
          type="date"
          id="date"
          name="date"
          value={formData.date}
          onChange={handleChange}
          required
        />
        <label htmlFor="gender">Select Gender</label>
        <select type="gender" id="gender" name="gender" value={formData.gender} onChange={handleChange} required >
          <option value="">Select Gender</option>
          <option value="male">Male</option>
          <option value="female">Female</option>
        </select>


        <label htmlFor="appointmentdate">Appointment Date</label>
        <input
          type="date"
          id="appointmentdate"
          name="appointmentdate"
          value={formData.appointmentdate}
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
        <div>
          <label htmlFor="department">Select Department</label>
          <select type="department" name="department" id="department" value={formData.department} onChange={handleChange} >
          {departmentsArray.map((depart, index) => {
                return (
                  <option value={depart} key={index} >
                    {depart}
                  </option>
                );
              })}
          </select>

          <label htmlFor="doctor">Select Doctor</label>
          <select type="name" name="doctor" id="doctor" value={formData.doctor} onChange={handleChange}></select>
        </div>
        <label htmlFor="message">Address</label>
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
