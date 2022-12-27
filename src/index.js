import React from "react";
import { createRoot } from "react-dom/client";

import "./index.css";
// import { createBrowserRouter, RouterProvider } from "react-router-dom";
import App from "./App";

const main = document.getElementById("main");
const root = createRoot(main);

root.render(<App />);
