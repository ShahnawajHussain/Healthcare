import React from 'react';

const Header = () => {
    return (
        <header className="header">
            <h1 className="logo">Health<span>+</span></h1>
            <nav>
                <ul className="nav-links">
                    <li>Home</li>
                    <li>Services</li>
                    <li>About</li>
                    <li>Reviews</li>
                    <li>Doctors</li>
                </ul>
            </nav>
            <button className="live-chat">Live Chat</button>
        </header>
    );
};

export default Header;