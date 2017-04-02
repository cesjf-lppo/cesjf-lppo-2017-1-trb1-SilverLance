package br.cesjf.lppo;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.ParseException;
import java.util.Calendar;
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
@WebServlet(name = "EditaEquipamento", urlPatterns = {"/edita.html"})
public class EditaEquipamento extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        Equipamento equipamentos = new Equipamento();
        Long id = Long.parseLong(request.getParameter("id"));

        try {
            Class.forName("org.apache.derby.jdbc.ClientDriver");
            Connection conexao = DriverManager.getConnection("jdbc:derby://localhost:1527/lppo-2017-1", "usuario", "senha");
            Statement operacao = conexao.createStatement();
            ResultSet resultado = operacao.executeQuery("SELECT * FROM equipamento WHERE id=" + id);

            if (resultado.next()) {
                equipamentos.setId(resultado.getLong("id"));
                equipamentos.setSerie(resultado.getString("serie"));
                equipamentos.setLocal(resultado.getString("local"));
                equipamentos.setDescricao(resultado.getString("descricao"));
                equipamentos.setEstado(resultado.getInt("estado"));
            }

        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(ListaEquipamentos.class.getName()).log(Level.SEVERE, null, ex);
        }

        request.setAttribute("equipamento", equipamentos);
        request.getRequestDispatcher("WEB-INF/editaEquipamento.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Equipamento equipamentos = new Equipamento();

        try {

            equipamentos.setId(Long.parseLong(request.getParameter("id")));
            equipamentos.setSerie(request.getParameter("serie"));
            equipamentos.setLocal(request.getParameter("local"));
            equipamentos.setDescricao(request.getParameter("descricao"));
            equipamentos.setEstado(Integer.parseInt(request.getParameter("estado")));

            Class.forName("org.apache.derby.jdbc.ClientDriver");
            Connection conexao = DriverManager.getConnection("jdbc:derby://localhost:1527/lppo-2017-1", "usuario", "senha");
            Statement operacao = conexao.createStatement();
            String str = "UPDATE equipamento SET local='"
                    + equipamentos.getLocal() + "', estado="
                    + equipamentos.getEstado() + " WHERE id="
                    + equipamentos.getId();
            System.out.println(str);
            operacao.executeUpdate(str);

        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(ListaEquipamentos.class.getName()).log(Level.SEVERE, null, ex);
        }

        response.sendRedirect("lista.html");

    }

}
