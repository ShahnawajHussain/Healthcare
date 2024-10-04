import React from 'react';
import doctorImage from '../assets/doctor.png'; // Make sure to add your image here

const DoctorImage = () => {
    return (
        <div className="doctor-image">
            <img src={doctorImage} alt="Doctor" />
        </div>
    );
};

export default DoctorImage;
