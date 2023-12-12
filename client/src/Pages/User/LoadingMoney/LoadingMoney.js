import UserPageLayout from "../../../Components/Layout/UserPageLayout/UserPageLayout";
import UserToolbar from "../UserToolBar/UserToolBar";
import QR_CODE from "../../../assets/image/qr_code.jpg";
import { useState } from "react";
const LoadingMoney = () => {
  const [tradingCode, setTradingCode] = useState("");
  return (
    <UserPageLayout>
      <div className="flex p-3.5 h-full w-full">
        <div className="w-3/12 border-2 border-slate-200 flex flex-col ">
          <UserToolbar />
        </div>
        <div className="w-9/12 text-center border-2 border-l-0 border-slate-200">
          <div className="border-2 border-l-0 border-t-0 border-r-0  py-6  border-slate-200">
            <div className="font-bold text-lg">Loading Money</div>
            <div className="text-base">Loading money to your account</div>
          </div>
          <div className="p-6 text-start">
            <div className="flex flex-col w-9/12 mx-auto my-4">
              <label className="pb-2 flex">
                <b>METHOD 1:</b> Pay in this bank account:
                NAME : DO DUC THANH
                BANK : MB BANK - 99912122001999

                <b>METHOD 2:</b>
                Scan the QR code to loading money to your account:
              </label>
            </div>
            <div className="flex flex-col w-9/12 mx-auto my-4">
              <label className="font-bold pb-2 flex">QR Code:</label>
              <img src={QR_CODE} className="w-60 h-auto"></img>
            </div>
            <div className="flex flex-col w-9/12 mx-auto my-4">
              <label className="font-bold pb-2 flex">Note:</label>
              <ul className="list-none">
                <li>10000 vnđ = 100$</li>
              </ul>
            </div>
          </div>
        </div>
      </div>
    </UserPageLayout>
  );
};

export default LoadingMoney;
