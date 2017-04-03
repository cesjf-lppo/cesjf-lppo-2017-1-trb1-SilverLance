package br.cesjf.lppo;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Adriano
 */
@WebServlet(name = "ExcluiEquipamento", urlPatterns = {"/exclui.html"})
public class ExcluiEquipamento extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Long id = Long.parseLong(request.getParameter("id"));
        try {
            Class.forName("org.apache.derby.jdbc.ClientDriver");
            Connection conexao = DriverManager.getConnection("jdbc:derby://localhost:1527/lppo-2017-1", "usuario", "senha");
            Statement operacao = conexao.createStatement();
            operacao.executeUpdate("DELETE FROM equipamento WHERE id=" + id);

        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(ListaEquipamentos.class.getName()).log(Level.SEVERE, null, ex);
        }
        response.sendRedirect("lista.html");
    }

}
