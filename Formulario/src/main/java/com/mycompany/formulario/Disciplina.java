/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.formulario;

import java.util.ArrayList;

/**
 *
 * @author Erick
 */
public class Disciplina {
    private String nome;
    private String duracao;
    private static ArrayList<Disciplina> listadisciplinas = new ArrayList<>();
    public String getNome() {
        return nome;
    }

    public Disciplina(String nome, String duracao) {
        this.nome = nome;
        this.duracao = duracao;
    }

    public Disciplina(String nome) {
        this.nome = nome;
    }

    public Disciplina(String nome, String duracao, String modalidade) {
        this.nome = nome;
        this.duracao = duracao;
        this.modalidade = modalidade;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getDuracao() {
        return duracao;
    }

    public void setDuracao(String duracao) {
        this.duracao = duracao;
    }

    public String getModalidade() {
        return modalidade;
    }

    public void setModalidade(String modalidade) {
        this.modalidade = modalidade;
    }
    private String modalidade;
    
    
    
    
    
     public static void addListaDisciplinas(Disciplina d){
        listadisciplinas.add(d);
    }
    public static String getDisciplinas(){
        String disciplinadados = "DISCIPLINAS" +"\n\n";
        for(Disciplina d : listadisciplinas){
               disciplinadados = disciplinadados + d.dados();
                    
                
     
        }
        
        return disciplinadados;
    }
    
    
   
    public String dados(){
        String dado = "Nome: " + getNome() + "\n"  +"\n" +  "Duração: " + getDuracao() +"\n" +
                      "Modalidade: " + getModalidade()+"\n" + "#########################" +"\n";
       // System.out.println("Salario: " + getSalario());
        //System.out.println("#########################");
        return dado;
    }
}
