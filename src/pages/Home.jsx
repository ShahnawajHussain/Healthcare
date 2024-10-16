import React from 'react';
import HeroSection from '../components/HeroSection';
import Header from '../components/Header';
import Info from '../components/info';
import About from '../components/About';

const Home = () => {
  return (
    <div>
      <Header/>
      <HeroSection />
      <Info/>
      <About/>
    </div>
  );
};

export default Home;
