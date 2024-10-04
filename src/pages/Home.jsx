import React, { Component } from 'react';
import HeroSection from '../components/HeroSection';
import Header from '../components/Header';
class Home extends Component {
    render() {
        return (
            <div className='Home'>
                <Header />
                <HeroSection />
                
            </div>
        );
    }
}

export default Home;