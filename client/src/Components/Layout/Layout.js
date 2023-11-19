import React from "react";
import { Outlet } from "react-router-dom";
import Navbar from "../NavBar/NavBar";
import Footer from "../Footer/Footer";
import CardCousera from "../ReUse/CardCousera/CardCousera";
import CardCouseraBuy from "../ReUse/CardCouseraBuy/CarCouseraBuy";
import Feedback from "../ReUse/Feedback/Feedback";
const Layout = () => {
  return (
    <>
       <Feedback></Feedback>
    {/* <CardCouseraBuy></CardCouseraBuy> */}
    {/* <CardCousera></CardCousera> */}
      {/* <Navbar /> */}
      {/* <Outlet /> */}
      {/* <Footer/> */}
    </>
  );
};
