/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.formulario;

import java.sql.ResultSet;
import java.util.ArrayList;

/**
 *
 * @author erick
 */
public class Professor extends Pessoa{
    
     private double salario; 
     private static ArrayList<Professor> listaprofessores = new ArrayList<>();
     
    public Professor(String nome, String email, String senha){
        super(nome, email, senha);
        
    }
    public Professor(String nome, String email, String senha, double salario){
        super(nome, email, senha);
        this.salario = salario;
    }
    
    public double getSalario() {
        return salario;
    }
    
    public void setSalario(double salario) {
        this.salario = salario;
    }
    
   /* public void cadastrar(){
        String sql =  "INSERT INTO professor (nome, email, salario) VALUES ( "
                    + " '" + this.getNome() +   "' ,  "
                    + " '" + this.getEmail() +  "' ,  "
                    + "  " + this.getSalario() +"  ) ";
        Conexao.executar( sql );
    }
    
    public void editar(){
        String sql =  "UPDATE professor SET  "
                    + " nome    = '" + this.getNome() +   "' ,  "
                    + " email   = '" + this.getEmail() +  "' ,  "
                    + " salario =  " + this.getSalario() +"     "
                    + " WHERE idProfessor = " + this.getId();
        Conexao.executar( sql );
    }
    
    public static void excluir(int idProfessor){
        String sql =  "DELETE FROM professor WHERE idProfessor = " + idProfessor;
        Conexao.executar( sql );
    }
    */
    public static void addListaProfessor(Professor p){
        listaprofessores.add(p);
    }
    public static String getProfessores(){
        String profdados = "PROFESSORES" +"\n";
        for(Professor p : listaprofessores){
               profdados = profdados + p.dados();
                    
                
     
        }
        System.out.println(profdados);
        return profdados;
    }
    
    
   @Override
    public String dados(){
        String dado = super.dados() + "Salario: " + getSalario() + "\n" + "#########################" +"\n";
       // System.out.println("Salario: " + getSalario());
        //System.out.println("#########################");
        return dado;
    }
    
}
