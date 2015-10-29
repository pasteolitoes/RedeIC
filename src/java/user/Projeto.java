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
public class Projeto {
    // declaração de atributos
    // os nomes tem que ser iguais que os nomes dos elementos de INPUT 
    // criados no formulário em index.jsp
    private String titulo;
    private String descricao;
    private String keyword1;
    private String keyword2;
    private String keyword3;
    private int sem_ini;
    private int sem_fim;
    private int id_lab;
    private String patrocinador;

    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    public String getKW1() {
        return keyword1;
    }

    public void setKW1(String keyword1) {
        this.keyword1 = keyword1;
    }

    public String getKW2() {
        return keyword2;
    }

    public void setKW2(String keyword2) {
        this.keyword2 = keyword2;
    }

    public String getKW3() {
        return keyword3;
    }

    public void setKW3(String keyword3) {
        this.keyword3 = keyword3;
    }

    public int getInicio() {
        return sem_ini;
    }

    public void setInicio(int sem_ini) {
        this.sem_ini = sem_ini;
    }

    public int getFim() {
        return sem_fim;
    }

    public void setFim(int sem_fim) {
        this.sem_fim = sem_fim;
    }

    public int getLab() {
        return id_lab;
    }

    public void setLab(int id_lab) {
        this.id_lab = id_lab;
    }

    public String getPatrocinador() {
        return patrocinador;
    }

    public void setPatrocinador(String patrocinador) {
        this.patrocinador = patrocinador;
    }
}