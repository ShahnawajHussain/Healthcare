import React from 'react';
import HeroSection from '../components/HeroSection';
import Header from '../components/Header';
import Info from '../components/info';

const Home = () => {
  return (
    <div>
      <Header/>
      <HeroSection />
      <Info/>
    </div>
  );
};

export default Home;
