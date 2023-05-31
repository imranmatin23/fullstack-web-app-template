/*
 * The App.js file represents your application or main component.
 */
import { BrowserRouter as Router, Routes, Route } from "react-router-dom";
import HomePage from "./pages/HomePage";
import NotFound from "./pages/NotFound";
import Footer from "./components/Footer";

/*
 * The App function returns a BrowserRouter (Router) component that is able to declare individual routes within the application.
 * The current browser URL will be matched against these routes and the matching route will be rendered.
 * Ref: https://reactrouter.com/en/main/router-components/browser-router#browserrouter
 */
function App() {
  return (
    <div>
      <Router>
        <Routes>
          <Route exact path="/" element={<HomePage />} />
          <Route path="*" element={<NotFound />} />
        </Routes>
        <Footer />
      </Router>
    </div>
  );
}

export default App;
