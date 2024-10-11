import React from 'react';
import DoctorImage from './DoctorImage';
import Stats from './stats';
import { useNavigate } from 'react-router-dom';

const HeroSection = () => {
    const Navigate = useNavigate(); // useNavigate hook for navigation

    const handleBookAppointment = () => {
        Navigate('/appointment'); // Navigate to the appointment page
    };
    
    return (
        <section className="hero">
            <div className="hero-content">
                <h2>Health came first</h2>
                <h1>Find your Doctor and make an Appointments</h1>
                <p>
                    Talk to online doctors and get medical advice, online prescriptions, refills and medical notes within minutes.
                    On-demand healthcare services at your fingertips.
                </p>
                <button className="book-appointment" onClick={handleBookAppointment}>Book Appointment</button>
                <Stats/>
            </div>
            <DoctorImage />
        </section>
    );
};

export default HeroSection;
