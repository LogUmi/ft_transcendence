import React from "react";
import ReactDOM from "react-dom/client";

// Filtre le warning "Progress tracking error" de wavesurfer.js (AbortError bénin au changement de track)
const _warn = console.warn.bind(console);
console.warn = (...args) => {
  if (typeof args[0] === "string" && args[0].startsWith("Progress tracking error")) return;
  _warn(...args);
};
import { BrowserRouter } from "react-router-dom";
import App from "./App.jsx";
import "./index.css";

ReactDOM.createRoot(document.getElementById("root")).render(
  <React.StrictMode>
    <BrowserRouter future={{ v7_startTransition: true, v7_relativeSplatPath: true }}>
      <App />
    </BrowserRouter>
  </React.StrictMode>
);