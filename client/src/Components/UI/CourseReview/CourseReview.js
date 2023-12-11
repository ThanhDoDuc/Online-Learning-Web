import React from "react";
import "./CourseReview.css";
import img from "../../../assets/image/user.png";
import FullStar from "../../ReUse/Star/FullStar";
import EmptyStar from "../../ReUse/Star/EmptyStar";

class CourseReview extends React.Component {
    render() {

        const data = this.props.data;

        const fullStar = data.rating;
        const emptyStar = 5 - data.rating;

        return (
            <div className="course-review-card">
                <div className="cr-user-info">
                    <div className="cr-user-avatar">
                        <img src={data.avatar || img} alt="user-avatar"/>
                    </div>
                    <div className="cr-user-name">
                        {data.name}
                        <div className="cr-rating">
                            {Array.from({length: fullStar}, (_, index) => (
                                <FullStar key={index}></FullStar>
                            ))}
                            {Array.from({length: emptyStar}, (_, index) => (
                                <EmptyStar key={index}></EmptyStar>
                            ))}
                        </div>
                    </div>
                </div>
                <div className="cr-description">
                    {data.description}
                </div>
            </div>
        );
    }
}

CourseReview.defaultProps = {
    data: {
        name: "Nguyen Van Hai",
        avatar: img,
        rating: 3,
        description: "I graduated from my undergrad in CS at a uni in the UK back in 2019, decided to watch this since my field of work briefly shifted post uni, but now coming back to software dev thought about checking this out, I'm only 2 hours into this course and it's already miles and miles better than what I went through on my course, almost feels like I wasted money, there were useful bits ofc, but this is just highly engaging and so well structured. So glad this is available for free!!!!"
    }
}

export default CourseReview;
