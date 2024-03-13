/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package senac1;

import java.sql.ResultSet;
import java.util.ArrayList;
/**
 *
 * @author fltreib
 */
public class Aluno extends Pessoa {
    private String matricula;    
    public Aluno(String nome, String email, String matricula){
        super(nome, email);
        this.matricula = matricula;
    }
    public String getMatricula() {
        return matricula;
    }
    public void setMatricula(String matricula) {
        this.matricula = matricula;
    }
    
    public void cadastrar(){
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
    
    
    public static ArrayList<Aluno> getAluno(){
        ArrayList<Aluno> lista = new ArrayList<>();
        
        String sql = "SELECT idAluno, nome, email, matricula FROM aluno ORDER BY nome ";
        
        ResultSet rs = Conexao.consultar( sql );
        
        if( rs != null){
            
            try{
                while ( rs.next() ) {                
                    String nome = rs.getString( 2 );
                    String email = rs.getString( "email" );
                    String matricula = rs.getString("matricula" );
                    Aluno aluno = new Aluno(nome, email, matricula);
                    aluno.setId( rs.getInt( "idAluno" ) );
                    lista.add( aluno );
                }
            }catch(Exception e){
                
            }
            
        }
     
        return lista;
    }
    
    
    
    @Override
    public void dados(){
        super.dados();
        System.out.println("Matricula: " + getMatricula());
    }
    
    
    
}
