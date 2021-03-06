package model;

import java.sql.*;

public class AnimalModel {

	private Connection cn;
	
	private int id;
	private String nome;
	private int idade;
	private String tipo;
	private String cor;
	private int idCliente;
	
	public AnimalModel(Connection cn) {
        this.cn = cn;
    }
	
	public boolean criarAnimal(String nome, int idade, String tipo, String cor, int idCliente) {
		String query = "INSERT INTO prontuariobd.medico(nome, idade, tipo, cor, idCliente) VALUES (?,?,?,?,?)";
        
        try {
            PreparedStatement ps = cn.prepareStatement(query);
            ps.setString(1, nome);
            ps.setInt(2, idade);
            ps.setString(3, tipo);
            ps.setString(4, cor);
            ps.setInt(5, idCliente);
            ps.executeUpdate();
            System.out.println("Cadastrado com sucesso");
        
        }catch(SQLException ex){
            System.out.println("Um erro aconteceu: " + ex);
        }
		return false;
	}
	
	public AnimalModel lerAnimal(int id) {
		String query = "SELECT * FROM prontuariobd.animal WHERE id = (?)";
        
        try{
            PreparedStatement ps = cn.prepareStatement(query);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            rs.next();
            
            this.id = rs.getInt("id");
            this.nome = rs.getString("nome");
            this.idade = rs.getInt("idade");
            this.tipo = rs.getString("tipo");
            this.cor = rs.getString("cor");
            this.idCliente = rs.getInt("idCliente");
            
            System.out.println("Id: " + rs.getInt("id"));
            System.out.println("Nome: " + rs.getString("nome"));
            System.out.println("Idade: " + rs.getInt("idade"));
            System.out.println("Tipo: " + rs.getString("tipo"));
            System.out.println("Cor: " + rs.getString("cor"));
            System.out.println("idCliente: " + rs.getInt("idCliente"));
            return this;
            
        }catch(SQLException ex){
            System.out.println("Um erro aconteceu: " + ex);
        }
        
        
		return null;
	}
	
	public boolean atualizarAnimal(int id, String nome, int idade, String tipo, String cor, int idCliente) {
		String query = "UPDATE prontuariobd.animal SET nome = ?, idade = ?, tipo = ?, cor = ?, idCliente = ? WHERE prontuariobd.animal.id = (?)";
        
        try {
            PreparedStatement ps = cn.prepareStatement(query);
            ps.setString(1, nome);
            ps.setInt(2, idade);
            ps.setString(3, tipo);
            ps.setString(4, cor);
            ps.setInt(5, idCliente);
            ps.setInt(6, id);
            ps.executeUpdate();
            System.out.println("Alterado com sucesso");
        }catch(SQLException ex){
            System.out.println("Um erro aconteceu: " + ex);
        }
        
		return false;
	}
	
	public boolean deletarAnimal(int id) {
		String query = "DELETE FROM prontuariobd.animal WHERE prontuariobd.animal.id = (?)";
        try {
            PreparedStatement ps = cn.prepareStatement(query);
            ps.setInt(1, id);
            ps.executeUpdate();
            System.out.println("Deletado com sucesso");
            return true;
        }catch(SQLException ex){
            System.out.println("Um erro aconteceu: " + ex);
        }
		return false;
	}
	
}
