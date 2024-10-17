import nodemailer from "nodemailer";



    

      //Información del email

    

    export  async function senEmailVerify(email, name,token) {

      const verificationLink = `http://localhost:3000/api/auth/verify-email?token=${token}`;
        console.log('Aqui manda el gmail', email, name,);
        console.log(verificationLink);
        
        try {
          await transport.sendMail({
            from: '"CUMTUAL - Administrador de Proyectos" <noreply@gmail.com>',
            to: email,
            subject: 'Sistema Web - Confirmación de tu cuenta',
            text: 'Comprueba tu cuenta en The Big Apple Shop',
            html: `
              <p>Hola ${name},</p>
              <p>Comprueba tu cuenta en Sistema Web.</p>
              <p>Tu cuenta ya está casi lista, solo debes comprobarla en el siguiente enlace:</p>
               <p><a href="${verificationLink}">Verifica tu cuenta</a></p>
              <p>Si tú no creaste esta cuenta, puedes ignorar el mensaje.</p>
            `
          });
          console.log('Correo enviado con éxito.');
        } catch (error) {
          console.error('Error al enviar el correo:', error);
        }
      }

      export  async function senEmailVerifyPasword(email, name,token) {

        const verificationLink = `http://localhost:3000/api/auth/verify-email?token=${token}`;
          console.log('Aqui manda el gmail', email, name,);
          console.log(verificationLink);
          
          try {
            await transport.sendMail({
              from: '"CUMTUAL - Administrador de Proyectos" <noreply@gmail.com>',
              to: email,
              subject: 'Sistema Web - Confirmación de tu cuenta',
              text: 'Comprueba tu cuenta en Sistema Web',
              html: `
                <p>Hola ${name},</p>
                <p>Comprueba tu cuenta en Sistema Web.</p>
                <p>Pa poder hacer el cabmio de contraseña solo debes comprobarla en el siguiente enlace:</p>
                 <p><a href="${verificationLink}">Verifica tu cuenta</a></p>
                <p>Si tú no creaste esta cuenta, puedes ignorar el mensaje.</p>
              `
            });
            console.log('Correo enviado con éxito.');
          } catch (error) {
            console.error('Error al enviar el correo:', error);
          }
        }
      
      // module.exports = enviarCorreoVerificacion;

   