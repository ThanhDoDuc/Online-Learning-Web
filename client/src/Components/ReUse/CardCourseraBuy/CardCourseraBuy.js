import { AiFillPlayCircle} from "react-icons/ai";

    
    
    
    const CardCouseraBuy = () => {
      return (
        <>
          <div className="flex w-[380px] border border-gray-200">
            <div className="w-[100px] h-[150px] bg-slate-600 relative overflow-hidden ">
              <img
                className="max-w-none h-full left-1/2 absolute top-0  translate-x-[-50%] "
                src={props.data.courseraImg}
                alt=""
              ></img>
              <div className="absolute top-0 left-0 w-full h-full bg-black bg-opacity-50"></div>

          <span className="text-white  flex items-center justify-center absolute top-0 left-0 h-full w-full">  <AiFillPlayCircle className="text-[50px]"></AiFillPlayCircle></span>

            </div>
            <div className="w-[280px] p-[16px] flex flex-col justify-between">
          <div>
          <div className="line-clamp-1 text-[13px] mr-[16px] mb-[6px] text-gray-500">{props.data.courseraName}</div>
        <span className=" font-bold text-[16px]">{props.data.currentLec}</span>
          </div>
          <div className="text-[13px] text-gray-500">Lecture  •  {props.data.lecTime}</div>
            </div>
          </div>
        </>
      );
    };
    
    export default CardCouseraBuy;