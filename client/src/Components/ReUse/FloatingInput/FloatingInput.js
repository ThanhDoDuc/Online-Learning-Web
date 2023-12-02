const FloatingInput = (props) => {
  return (
    <div className="relative">
      <input
        type={props.type}
        id="floating_filled"
        className="block rounded-t-lg px-2.5 pb-2.5 pt-5 w-full text-sm text-black bg-white border-2 border-b-2 border-gray-300 appearance-none focus:outline-none focus:ring-0 focus:border-blue-600 peer"
        placeholder=" "
        onChange={(e) => props.setValue(e.currentTarget.value)}
        value={props.value}
      />
      <label
        htmlFor="floating_filled"
        className="absolute text-sm text-gray-500 dark:text-gray-400 duration-300 transform -translate-y-4 scale-75 top-4 z-10 origin-[0] left-2.5 peer-focus:text-blue-600 peer-focus:dark:text-blue-500 peer-placeholder-shown:scale-100 peer-placeholder-shown:translate-y-0 peer-focus:scale-75 peer-focus:-translate-y-4"
      >
        {props.placeholder}
      </label>
    </div>
  );
};

export default FloatingInput;
