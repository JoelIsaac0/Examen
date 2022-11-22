package com.info.BBDD;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import com.info.datos.Conexion;
public class Usuario {

	private String nombre;
	private String cedula;
	private String calf;


	public String ingresarUsuario(String nombre, String cedula,String calf)
	{
		String result="";
		Conexion con=new Conexion();
		PreparedStatement pr=null;
		String sql="INSERT INTO td_usuario(nombre,id,calf) VALUES(?,?,?)";
		try{
			pr=con.getConexion().prepareStatement(sql);
			pr.setString(1,nombre);
			pr.setString(2, cedula);
			pr.setString(3, calf);
			if(pr.executeUpdate()==1)
			{
				result="Inserción correcta";
			}
			else
			{
				result="Error en inserción";
			}
		}
		catch(Exception ex)
		{
			result=ex.getMessage();
		}
		finally
		{
			try
			{
				pr.close();
				con.getConexion().close();
			}
			catch(Exception ex)
			{
				System.out.print(ex.getMessage());
			}
		}
		return result;
	}
	
	public String consultarUsuarios()
	{
		String sql="SELECT * FROM td_usuario";
		Conexion con=new Conexion();
		String tabla="<table border=2><th>Nombre</th><th>Cedula</th><th>Calf</th>";
		ResultSet rs=null;
		rs=con.Consulta(sql);
		try {
			while(rs.next())
			{
				tabla+="<tr><td>"+rs.getString(1)+"</td>"
						+ "<td>"+rs.getString(2)+"</td>"
						+ "</td></tr>";
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.print(e.getMessage());
		}
		tabla+="</table>";
		return tabla;
	}
	
	
	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getCedula() {
		return cedula;
	}

	public void setCedula(String cedula) {
		this.cedula = cedula;
	}

	public String getCalf() {
		return calf;
	}

	public void setCalf(String calf) {
		this.calf = calf;
	}

}
