import React from "react";
import FeaCop from "../../Components/FeaturedTopics/FeaCop";
import SliderTop from "../../Components/SliderTop/SliderTop";
import Couseras from "../../Components/Couseras/Couseras";
import TopCate from "../../Components/TopCategories/TopCate";
import CouserasBuy from "../../Components/ReUse/CoursesBuy/CoursesBuy";
const HomePage = () => {
  return (
    <>
    <SliderTop/>
    <CouserasBuy/>
    <TopCate/>
    <Couseras/>
    <FeaCop/>
    </>
  
    );
};

export default HomePage;