
package com.emergentes.controladores;

import com.emergentes.modelo.Encuesta;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "ServletControlador", urlPatterns = {"/ServletControlador"})
public class ServletControlador extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //se resiben los parametros enviados desde formulario 
        String nombre = request.getParameter("nombre");
        String lenguaje = request.getParameter("lenguaje");
        //crear un objeto de obj1
        Encuesta obj1 =new Encuesta();
        //se colocan datos en las propiedades del obj1
        obj1.setNombre(nombre);
        obj1.setLenguaje(lenguaje);
        //Se adiciona el obj1 como atributo llamado miEncu
        request.setAttribute("miEncu", obj1);
        //Redirecciona al recurso salida.jsp
        request.getRequestDispatcher("salida.jsp").forward(request, response);
    }
    

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

}



