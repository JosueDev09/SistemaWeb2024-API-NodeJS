import jwt from 'jsonwebtoken'; // Asegúrate de tener jwt instalado
const secretKey = 'secret'; // Asegúrate de definir tu clave secreta de forma segura



export function  verifyToken(req, res, next) {
  
    const header = req.header("Authorization") || "";
    const token = header.split(" ")[1];

  
    if (!token) {
      return res.status(401).json({ message: "Token no permitido" });
    }
    
    

    if (!token) {
        return res.status(401).json({ message: "Token no proporcionado" }); 
    }

    try {
        const payload = jwt.verify(token, secretKey);
        req.username = payload.username;
        req.rol = payload.rol;
        next(); // Llama al siguiente middleware o ruta
    } catch (error) {
        return res.status(403).json({ message: "Token no válido" });
    }
}