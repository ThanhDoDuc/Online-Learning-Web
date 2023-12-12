import InfoServices from "../../../Services/UserServices/InfoServices";
import UserPageLayout from "../../../Components/Layout/UserPageLayout/UserPageLayout";
import React, { useEffect, useState } from "react";
import AlertMessage from "../../../Components/ReUse/AlertMessage/AlertMessage";
import CardCousera from "../../../Components/ReUse/CardCousera/CardCousera";
import { useSelector } from "react-redux";

const data = [
  {
    courseImg: "https://files.fullstack.edu.vn/f8-prod/courses/15/62f13d2424a47.png",
    title:
      "html, css",
    teacherName: "Son Dang",
    rating: "4.0",
    numberStudent: "462,590",
    price: "789600 đồng",
  },
  {
    courseImg: "https://laptrinhchuyennghiep.com/upload/laptrinhchuyennghiep.com/posts/f8-lap-trinh-javascript-co-ban.jpg",
    title:
      " javascripts",
    teacherName: "Dung Nguyen",
    rating: "5.0",
    numberStudent: "462,590",
    price: "800,000 đồng",
  },
  {
    courseImg: "https://files.fullstack.edu.vn/f8-prod/courses/27/64e184ee5d7a2.png",
    title:
      " Sass for front end developer",
    teacherName: "Van Thanh",
    rating: "5.0",
    numberStudent: "462,590",
    price: "400,000 đồng",
  },
  {
    courseImg: "https://files.fullstack.edu.vn/f8-prod/courses/21/63e1bcbaed1dd.png",
    title:
      " c/c++ for newbie ",
    teacherName: "Minh Ngoc",
    rating: "5.0",
    numberStudent: "462,590",
    price: "120,000 đồng",
  },
  {
    courseImg: "https://img-c.udemycdn.com/course/240x135/950390_270f_3.jpg",
    title:
      "wsl/ ubuntu for newbie",
    teacherName: "Jose Potilla",
    rating: "5.0",
    numberStudent: "462,590",
    price: "12,99 $",
  },
  {
    courseImg: "https://img-c.udemycdn.com/course/240x135/950390_270f_3.jpg",
    title:
      "Basic nodejs",
    teacherName: "Jose Potilla",
    rating: "5.0",
    numberStudent: "462,590",
    price: "180,000 đồng",
  },
];

const ViewPublicProfile = (props) => {
  const isLogin = useSelector((state) => state.user.isLogin);
  const user = useSelector((state) => state.user.user);
  console.log("user: ", user);

  useEffect(() => {
    if (!isLogin) {
      window.location.href = "/login";
    }
  }, []);

  return (
    <UserPageLayout>
      <div className="w-full px-8 bg-black py-16">
        <p className="text-5xl text-white font-bold">{user.name}</p>
      </div>
      <div className="w-full px-8 bg-white py-16">
        <img
          src={user.avatar_url}
          className="ml-16 w-36 h-36 rounded-full "
        ></img>
      </div>
      <div className="w-full px-8 py-16 mt-8 border-2 border-slate-800 border-x-0 border-b-0 text-center">
        <p className="font-bold text-xl mb-6">Courses you're enrolled in</p>
        <div className="flex flex-wrap mx-auto lg:w-4/6">
          {data.map((item, idx) => (
            <div className="m-4" key={idx}>
              <CardCousera data={item}></CardCousera>
            </div>
          ))}
        </div>
      </div>
    </UserPageLayout>
  );
};

export default ViewPublicProfile;
