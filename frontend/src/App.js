import { BrowserRouter as Router, Routes, Route } from "react-router-dom";
import HomePage from "./pages/HomePage";
import Footer from "./components/Footer";

function App() {
  return (
    <div>
      <Router>
        <Routes>
          <Route exact path="/" element={<HomePage />} />
        </Routes>
        <Footer />
      </Router>
    </div>
  );
}

export default App;
