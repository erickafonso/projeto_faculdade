/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package senac1;

import java.util.ArrayList;
import java.util.Scanner;

/**
 *
 * @author fltreib
 */
public class Senac1 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
 Scanner ler = new Scanner(System.in);
       //ArrayList<Professor> listaProfessores = new ArrayList();
       ArrayList<Professor> listaProfessores = new ArrayList();
       int menu, idProf;
       String nome,email;
       double salario;
       Professor professor;
       
       do{
           System.out.println("1 - Cadastrar Professor");
           System.out.println("2 - Cadastrar Aluno");
           System.out.println("3 - Listar Professores");
           System.out.println("4 - Listar Alunos");
           System.out.println("5 - Excluir Professor");
           System.out.println("6 - Editar Professor");
           System.out.println("7 - Sair");
           System.out.print("Digite sua opção: ");
           menu=ler.nextInt();
           switch(menu){
               case 1:
                   System.out.println("Nome: ");
                   ler.nextLine();
                   nome = ler.nextLine();
                   System.out.println("Email: ");
                   email = ler.nextLine();
                   System.out.println("Salário: ");
                   salario = ler.nextDouble();
                   professor = new Professor(nome, email, salario);
                   professor.cadastrar();
      //             listaProfessores.add(professor);
                   System.out.println("Cadastrado com sucesso!");
               break;
               case 2:
               break;
               case 3:
                   System.out.println("Lista de Professores: ");
                   listaProfessores = Professor.getProfessores();
                   for(Professor p:listaProfessores){
                       p.dados();
                   }
               break;
               
               //FAZER
               case 4:
                   
                   System.out.println("Lista de Professores: ");
                   listaProfessores = Professor.getProfessores();
                   for(Professor p:listaProfessores){
                       p.dados();
                   }
                   
                   
                   
               break;
               case 5:
                   listaProfessores = Professor.getProfessores();
                   for(Professor p:listaProfessores){
                       System.out.println( p.getId() + "  -  " + p.getNome() );
                   }
                   System.out.print("Digite o ID do professor que será excluído: ");
                   idProf = ler.nextInt();
                   Professor.excluir( idProf );
               break;
               case 6:
                   listaProfessores = Professor.getProfessores();
                   for(Professor p:listaProfessores){
                       System.out.println( p.getId() + "  -  " + p.getNome() );
                   }
                   System.out.print("Digite o ID do professor que será editado: ");
                   idProf = ler.nextInt();
                   System.out.println("Novo nome: ");
                   ler.nextLine();
                   nome = ler.nextLine();
                   System.out.println("Novo e-mail: ");
                   email = ler.nextLine();
                   System.out.println("Novo salário: ");
                   salario = ler.nextDouble();
                   professor = new Professor(nome, email, salario);
                   professor.setId( idProf );
                   professor.editar();
               break;
            }
        }while(menu!=7);
    }
    
}
