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
public class Aluno extends Usuario{
    // declaração de atributos
    // os nomes tem que ser iguais que os nomes dos elementos de INPUT 
    // criados no formulário em index.jsp
    private String codigo_CV;
    private String codigo_Hist;
    private String cvlattes;
    private String instituicao;

    public String getCV() {
        return codigo_CV;
    }

    public void setCV(String codigoCV) {
        this.codigo_CV = codigoCV;
    }

    public String getHist() {
        return codigo_Hist;
    }

    public void setHist(String linkHist) {
        this.codigo_Hist = linkHist;
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
