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
public class Assistente extends Usuario
{
    // declaração de atributos
    // os nomes tem que ser iguais que os nomes dos elementos de INPUT 
    // criados no formulário em index.jsp
    private String departamento;
    private String laboratorio;
    private String cvlattes;
    private String instituicao;
    
    public String getDepartamento() {
        return departamento;
    }

    public void setDepartamento(String departamento) {
        this.departamento = departamento;
    }

    public String getLaboratorio() {
        return laboratorio;
    }

    public void setLaboratorio(String laboratorio) {
        this.laboratorio = laboratorio;
    }    
    
    public String getInstituicao() {
        return instituicao;
    }

    public void setInstituicao(String instituicao) {
        this.instituicao = instituicao;
    }

    public String getLattes() {
        return cvlattes;
    }

    public void setLattes(String cvlattes) {
        this.cvlattes = cvlattes;
    }    
}
