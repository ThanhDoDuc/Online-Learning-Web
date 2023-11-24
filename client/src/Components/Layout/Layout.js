import React from "react";
import { Outlet } from "react-router-dom";
import Header from "../UI/Header/Header";
import Footer from "../UI/Footer/Footer";
import CourseInCart from "../ReUse/CourseInCart/CourseInCart";
import Course from "../../Pages/Course/Course";
import CartCouseras from "../../Pages/CartCouseras/CartCouseras";

const Layout = () => {
  return (
    <>
       <Feedback></Feedback>
    {/* <CardCouseraBuy></CardCouseraBuy> */}
    {/* <CardCousera></CardCousera> */}
      {/* <Navbar /> */}
      {/* <Outlet /> */}
      {/* <Footer/> */}
      
      <Header />
      <Outlet />
      {/* <CourseInCart></CourseInCart> */}
      <Footer/>
    </>
  );
};
