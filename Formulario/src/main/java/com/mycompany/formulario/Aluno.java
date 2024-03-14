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
public class Aluno extends Pessoa {
    private String matricula; 
    private static ArrayList<Aluno> listaalunos = new ArrayList<>();
    public Aluno(String nome, String email, String senha){
        super(nome, email, senha);
       // this.matricula = matricula;
    }
    public String getMatricula() {
        return matricula;
    }
    public void setMatricula(String matricula) {
        this.matricula = matricula;
    }
    
    /*public void cadastrar(){
        String sql =  "INSERT INTO aluno (nome, email, matricula) VALUES ( "
                    + " '" + this.getNome() +   "' ,  "
                    + " '" + this.getEmail() +  "' ,  "
                    + "  " + this.getMatricula() +"  ) ";
        Conexao.executar( sql );
    }
    
    public void editar(){
        String sql =  "UPDATE aluno SET  "
                    + " nome    = '" + this.getNome() +   "' ,  "
                    + " email   = '" + this.getEmail() +  "' ,  "
                    + " matricula =  " + this.getMatricula() +"     "
                    + " WHERE idAluno = " + this.getId();
        Conexao.executar( sql );
    }
    
    public static void excluir(int idAluno){
        String sql =  "DELETE FROM aluno WHERE idAluno = " + idAluno;
        Conexao.executar( sql );
    }
    */
    
    
    
    
    
    
    
    
    
    
    public static void addListaAlunos(Aluno a){
        listaalunos.add(a);
    }
    public static String getAlunos(){
        String alunosdados = "ALUNOS" + "\n";
        for(Aluno a : listaalunos){
               alunosdados = alunosdados + a.dados();
                    
                
     
        }
        //System.out.println(profdados);
        return alunosdados;
    }
    
    
   @Override
    public String dados(){
        String dado = super.dados() + "\n" + "#########################" +"\n";
       
        return dado;
    }
    
    
    
}
