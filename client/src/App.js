// import React, { useEffect, useState } from "react";
// // import { Routes, Route } from "react-router-dom";
// import NavBar from "./NavBar";
// import Login from "./Login";
// import 'bootstrap/dist/css/bootstrap.css'; 



// function App() {
//   const [user, setUser] = useState(null);

//   useEffect(() => {
//     // auto-login
//     fetch("/me").then((r) => {
//       if (r.ok) {
//         r.json().then((user) => setUser(user));
//       }
//     });
//   }, []);

//   if (!user) return <Login onLogin={setUser} />;

//   return (
//     <>
//       <NavBar></NavBar>
//     </>
//   );
// }

// export default App;