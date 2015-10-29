/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package user;

/**
 *
 * @author Pedro
 */
// Clase que permite a captura dos dados do formulário em index.jsp
// para logo ser lidos em results jsp e inseridos no banco
public class Usuario
{
    // declaração de atributos
    // os nomes tem que ser iguais que os nomes dos elementos de INPUT 
    // criados no formulário em index.jsp
    private String nusp;
    private String email;
    private String nome;
    private String sobrenome;
    private String vinculo;
    
    public String getNusp() {
        return nusp;
    }

    public void setNusp(String numerousp) {
        this.nusp = numerousp;
    }
    
    public String getEmail() {
        return email;
    }

    public void setEmail(String mail) {
        this.email = mail;
    }
    
    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getSobrenome() {
        return sobrenome;
    }

    public void setSobrenome(String sobrenome) {
        this.sobrenome = sobrenome;
    }

    public String getVinculo() {
        return vinculo;
    }

    public void setVinculo(String vinculo) {
        this.vinculo = vinculo;
    }
}