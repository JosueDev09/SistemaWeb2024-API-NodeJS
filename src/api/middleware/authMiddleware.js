import jwt from 'jsonwebtoken'; // Asegúrate de tener jwt instalado
const secretKey = 'secret'; // Asegúrate de definir tu clave secreta de forma segura



export function  verifyToken(req, res, next) {
  
    const header = req.header("Authorization") || "";
    const token = header.split(" ")[1];

    console.log("Aqui esta el token",header,token);
  
    if (!token) {
      return res.status(401).json({ message: "Token not allowed" });
    }  

    if (!token) {
        return res.status(401).json({ message: "Token not  provided" }); 
    }

    try {
        const payload = jwt.verify(token, secretKey);
        req.strUser = payload.strUser;
        req.intRol = payload.intRol;
        console.log("Resultaado", req.strUser,req.intRol);
        next(); // Llama al siguiente middleware o ruta
    } catch (error) {
        return res.status(403).json({ message: "Token no valid" });
    }
}