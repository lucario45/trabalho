package br.com.alura.horas.modelos;

import java.io.Serializable;

import javax.persistence.*;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
@Table(name = "PROPIETARIOS")
public class Propietario implements Serializable{
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	
	@Basic 
    @Column(table = "PROPIETARIOS", nullable=false, length=100) 
	private String nome;
	
	@Basic 
    @Column(table = "PROPIETARIOS", nullable=false, length=15) 
	private String telefone;
	
	public Propietario(){
		this.nome = "";
		this.telefone = "";
	}
	
	public Propietario(String nome, String telefone) {
		this.nome = nome;
		this.telefone = telefone;
	}
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getTelefone() {
		return telefone;
	}

	public void setTelefone(String telefone) {
		this.telefone = telefone;
	}
	
	
}
