import app from "../api/app.js";
import { PORT } from "./config.js";

app.listen(PORT);

console.log("Server on port: ", PORT);