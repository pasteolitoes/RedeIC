/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package user;

/**
 *
 * @author Pedro
 */
public class Lab
{
    // declaração de atributos
    // os nomes tem que ser iguais que os nomes dos elementos de INPUT 
    // criados no formulário em index.jsp
    private String nome;
    private String departamento;
    private String descricao;
    private String link_site;
    
    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getDepartamento() {
        return departamento;
    }

    public void setDepartamento(String departamento) {
        this.departamento = departamento;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    public String getSite() {
        return link_site;
    }

    public void setSite(String link_site) {
        this.link_site = link_site;
    }
}
