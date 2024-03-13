/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package senac1;

/**
 *
 * @author fltreib
 */
public class Pessoa {
    private int id;
    private String nome;
    private String email;
    
    public Pessoa(String nome, String email){
        this.nome = nome;
        this.email = email;
    }
    
    public int getId(){
        return id;
    }
    
    public void setId(int id){
        this.id = id;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
    
    public void dados(){
        System.out.println("Nome: " + getNome());
        System.out.println("Email: " + getEmail());
    }
}
