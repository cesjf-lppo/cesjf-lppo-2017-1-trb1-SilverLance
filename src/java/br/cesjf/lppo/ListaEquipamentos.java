package br.cesjf.lppo;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
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
@WebServlet(name = "ListaEquipamentos", urlPatterns = {"/lista.html"})
public class ListaEquipamentos extends HttpServlet {

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
        List<Equipamento> equipamentos = new ArrayList<>();
        String filtro = request.getParameter("filtro");

        try {

            Class.forName("org.apache.derby.jdbc.ClientDriver");
            Connection conexao = DriverManager.getConnection("jdbc:derby://localhost:1527/lppo-2017-1", "usuario", "senha");
            Statement operacao = conexao.createStatement();
            if (null == filtro) {
                ResultSet resultado = operacao.executeQuery("SELECT * FROM equipamento ORDER BY local");

                while (resultado.next()) {
                    Equipamento equipamento = new Equipamento();
                    equipamento.setId(resultado.getLong("Id"));
                    equipamento.setSerie(resultado.getString("serie"));
                    equipamento.setLocal(resultado.getString("local"));
                    equipamento.setDescricao(resultado.getString("descricao"));
                    equipamento.setEstado(resultado.getInt("estado"));
                    equipamentos.add(equipamento);
                }
            } else {
                ResultSet resultado = operacao.executeQuery("SELECT * FROM equipamento " + filtro);

                while (resultado.next()) {
                    Equipamento equipamento = new Equipamento();
                    equipamento.setId(resultado.getLong("Id"));
                    equipamento.setSerie(resultado.getString("serie"));
                    equipamento.setLocal(resultado.getString("local"));
                    equipamento.setDescricao(resultado.getString("descricao"));
                    equipamento.setEstado(resultado.getInt("estado"));
                    equipamentos.add(equipamento);
                }
            }

        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(ListaEquipamentos.class.getName()).log(Level.SEVERE, null, ex);
        }
        request.setAttribute("equipamento", equipamentos);
        request.setAttribute("filtro", filtro);
        request.getRequestDispatcher("WEB-INF/listaEquipamentos.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

}
