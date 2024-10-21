import express from "express";
import cors from "cors";
import morgan from "morgan";
import authRoutes from './routes/auth.routes.js';
import employeesRoutes from './routes/employees.routes.js';



const app = express();



app.use(cors());
app.use(morgan("dev"));
app.use(express.urlencoded({ extended: true }));
app.use(express.json());


app.use('/api/',authRoutes);
app.use('/api/',employeesRoutes);

export default app;