<%-- 
    Document   : results
    Created on : 25-nov-2009, 14:06:33
    Author     : sanpedro
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*" %>
<!especificando objeto JAVA que contém os dados do formulário em index.jsp>
<jsp:useBean id="user" class="user.Usuario" scope="session"/>
<jsp:setProperty name="user" property="*"/>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Insert Result</title>
    </head>
    <body>
        <h3>Insert Result</h3>
        <%
            // Setando parámetros para conectar com o servidor de banco de dados
            String url = "jdbc:mysql://localhost:3306/si?";
            String uid = "root";
            String pwd = "barretto";
            //String url = "jdbc:mysql://testdbinstance.ch8wnywicnyt.sa-east-1.rds.amazonaws.com/email_contacts";
            //String uid = "testuser";
            //String pwd = "testuser1";

            Connection conn = null;
            ResultSet results = null;
            Statement statement = null;

            try
            {
                // fazendo a conexão com o servidor
                // carregando driver certo para conexão
                Class.forName("com.mysql.jdbc.Driver");
                conn = DriverManager.getConnection(url, uid, pwd);
                statement = conn.createStatement();

                // lendo parámetros obtido do formulário na página index.jsp
                String nusp = user.getNusp();                
                System.out.println(nusp);
                String email = user.getEmail();
                System.out.println(email);
                String nome = user.getNome();
                System.out.println(nome);
                String sobrenome = user.getSobrenome();
                System.out.println(sobrenome);
                String vinculo;

                if (user.getVinculo().equals("aluno"))
                    vinculo = "Aluno";
                else if (user.getVinculo().equals("profe"))
                    vinculo = "Professor";
                else if (user.getVinculo().equals("assis"))
                    vinculo = "Assistente";
                else
                    vinculo = "N/D";
                System.out.println(vinculo);
                
                boolean proceed = false;

                // verificando que os parámetros sejam diferentes de NULL ou vazio
                if(nusp != null && email != null)
                    if(nusp.length() > 0 && email.length() > 0)
                        proceed = true;
                System.out.println(proceed);
                
                // preparando operação de INSERT
                PreparedStatement ps = null;
                String sql;

                // comando SQL
                sql = "INSERT INTO usuario(nusp, email, nome, sobrenome, vinculo) VALUES (?,?,?,?,?)";
                ps = conn.prepareStatement(sql);

                // insertando parámetros lidos
                if(proceed)
                {
                    
                    ps.setString(1, nusp);
                    ps.setString(2, email);
                    ps.setString(3, nome);
                    ps.setString(4, sobrenome);
                    ps.setString(5, vinculo);
                    ps.executeUpdate();
                }

                // lendo o banco para mostrar conteudo em tabela HTML
                results = statement.executeQuery("select * from usuario");
                %>

                <!código HTML para a tabela que mostra os dados do banco>
                <TABLE BORDER="1">
                    <TR>
                        <TH>ID</TH>
                        <TH>NUSP</TH>
                        <TH>email</TH>
                        <TH>Nome</TH>
                        <TH>Sobrenome</TH>
                        <TH>Vínculo</TH>
                    </TR>
                <%
                // mentras existam dados para processar
                while(results.next()){
                %>
                        <!lendo cada um dos campos da tabela (nome, sobrenome, etc)
                        e mostrando na tabela HTML>
                        <TR>
                            <TD> <%= results.getString(1) %> </TD>
                            <TD> <%= results.getString(2) %> </TD>
                            <TD> <%= results.getString(3) %> </TD>
                            <TD> <%= results.getString(4) %> </TD>
                            <TD> <%= results.getString(5) %> </TD>
                            <TD> <%= results.getString(6) %> </TD>
                        </TR>
                <%
            }
                %>
                </TABLE>
                <%
            }
            // capturando exeções em caso de erro
            catch (ClassNotFoundException e)
            {
                System.out.println("Opps I can't find the JDBC Driver!");
                e.printStackTrace();
            }
            catch (SQLException e)
            {
                System.out.println("There was a problem with the SQL!");
                e.printStackTrace();
            }
            finally
            {
                // fechando conexão com o servidor
                if (conn != null)
                {
                    try
                    {
                        conn.close();
                    }
                    catch (Exception e)
                    {
                        e.printStackTrace();
                    }
                }
            }
        %>
        
        <br>
        <a href="http://localhost:8080/RedeIC/index.jsp">Back</a>
    </body>
</html>
