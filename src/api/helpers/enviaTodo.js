// Asegúrate de incluir axios en tu archivo
import  axios from 'axios';

// Tu API Key de EnviaTodo (esto debe ser guardado de forma segura)
const API_KEY = 'enviatodo';
const ENVIATODO_API_URL = 'https://apisandbox.enviatodo.mx'; // URL de la API de EnviaTodo

export const shipProducts = async(req,res) =>{
    const { intPais, intCP, intCiudad } = req.body;

    console.log('Datos Front',req.body);

    try {
        // Solicitar el costo de envío a la API de EnviaTodo
        const response = await axios.post(`${ENVIATODO_API_URL}/api/v1/rates_client`, {
          country: intPais,
          postalCode: intCP,
          city: intCiudad,
          weight: 2,  // Peso en kg
          dimensions: { length: 30, width: 20, height: 10 }  // Dimensiones en cm
        }, {
          headers: {
            'Authorization': `Bearer ${API_KEY}`,
            'Content-Type': 'application/json'
          }
        });

        console.log('Datos de envio:',response);
    
        // Enviar el costo de envío como respuesta
        res.json({
          costo: response.data.costo  // Ajusta según la estructura de la respuesta de la API
        });
      } catch (error) {
        console.error('Error al obtener el costo de envío',error);
        res.status(500).json({ error: 'Error al obtener el costo de envío' });
      }
}
