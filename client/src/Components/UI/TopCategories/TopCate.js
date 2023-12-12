import React from "react";

const TopCate = () => {
  return (
    <>
      <div className=" mt-5 mx-[80px] px-[24px]">
        <h2 className="mb-4 text-[25px]">Top categories</h2>
        <div className="grid grid-cols-4 gap-4">
          <div>
            <div>
              <div className="transition-transform duration-300 ease-in-out overflow-hidden w-[300px]">
                <img
                  className="hover:scale-110 "
                  src="https://i.ibb.co/qNYV7Vc/design.jpg"
                  alt=""
                />
              </div>

              <div className="pt-[8px] pb-[16px] ">
                <span className="text-[15px] font-bold  ">Design</span>
              </div>
            </div>
          </div>
          <div>
            <div>
              <div className="transition-transform duration-300 ease-in-out overflow-hidden w-[300px]">
                <img
                  className="hover:scale-110 "
                  src="https://i.ibb.co/Bn0MTGV/develoment.jpg"
                  alt=""
                />
              </div>
              <div className="pt-[8px] pb-[16px]">
                <span className="text-[15px] font-bold">Development</span>
              </div>
            </div>
          </div>
          <div>
            <div>
              <div className="transition-transform duration-300 ease-in-out overflow-hidden w-[300px]">
                <img
                  className="hover:scale-110 "
                  src="https://i.ibb.co/mcv2c4g/game.jpg"
                  alt=""
                />
              </div>
              <div className="pt-[8px] pb-[16px]">
                <span className="text-[15px] font-bold">Game Design</span>
              </div>
            </div>
          </div>
          <div>
            <div>
              <div className="transition-transform duration-300 ease-in-out overflow-hidden w-[300px]">
                <img
                  className="hover:scale-110 "
                  src="https://i.ibb.co/Bn0MTGV/develoment.jpg"
                  alt=""
                />
              </div>
              <div className="pt-[8px] pb-[16px]">
                <span className="text-[15px] font-bold">IT and Software</span>
              </div>
            </div>
          </div>
        </div>
        <div className="grid grid-cols-4 gap-4">
          <div>
            <div>
              <div className="transition-transform duration-300 ease-in-out overflow-hidden w-[300px]">
                <img
                  className="hover:scale-110 "
                  src="https://i.ibb.co/n7w5Zh8/Online-Personal-Development-Course.jpg"
                  alt=""
                />
              </div>
              <div className="pt-[8px] pb-[16px]">
                <span className="text-[15px] font-bold">
                  Personal Development
                </span>
              </div>
            </div>
          </div>
          <div>
            <div>
              <div className="transition-transform duration-300 ease-in-out overflow-hidden w-[300px]">
                <img
                  className="hover:scale-110 "
                  src="https://i.ibb.co/Fm5t4JR/trading.jpg"
                  alt=""
                />
              </div>
              <div className="pt-[8px] pb-[16px]">
                <span className="text-[15px] font-bold">Trading</span>
              </div>
            </div>
          </div>
          <div>
            <div>
              <div className="transition-transform duration-300 ease-in-out overflow-hidden w-[300px]">
                <img
                  className="hover:scale-110 "
                  src="https://i.ibb.co/drbWbVH/art.jpg"
                  alt=""
                />
              </div>
              <div className="pt-[8px] pb-[16px]">
                <span className="text-[15px] font-bold">Art Studying</span>
              </div>
            </div>
          </div>
          <div>
            <div>
              <div className="transition-transform duration-300 ease-in-out overflow-hidden w-[300px]">
                <img
                  className="hover:scale-110 "
                  src="https://i.ibb.co/gWwDGrm/music.jpg"
                  alt=""
                />
              </div>
              <div className="pt-[8px] pb-[16px]">
                <span className="text-[15px] font-bold">Music Instrument</span>
              </div>
            </div>
          </div>
        </div>
      </div>
    </>
  );
};

export default TopCate;
