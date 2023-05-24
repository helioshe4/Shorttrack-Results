//import "./App.css";
import { BrowserRouter, Routes, Route } from "react-router-dom";
import Layout from "./pages/Layout";
import Home from "./pages/Home";
import Login from "./pages/Login";
import Contact from "./pages/Contact";
import NoPage from "./pages/NoPage";

function App() {
  return (
    <BrowserRouter>
      <Routes>
        {/* <Route path="/" element={<Layout />}> */}
          <Route
            index
            element={
              <>
                <Layout />
                <Home />
              </>
            }
          />
          <Route path="login" element={<Login />} />
          <Route path="contact" element={<Contact />} />
          <Route path="*" element={<NoPage />} />
        {/* </Route> */}
      </Routes>
    </BrowserRouter>
  );
}

export default App;
