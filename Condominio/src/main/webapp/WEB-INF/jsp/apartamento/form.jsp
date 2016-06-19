<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Apartamento</title>


</head>
<form action="${linkTo[ApartamentoController].adiciona(null)}" method="post">
<img src = "">
N° da Porta: 
<input type = "text" value = "${apartamento.numeroPorta}" name="apartamento.numeroPorta"id = "txtNumeroPorta"> <br> <br>
Quantidade de Quartos: 
<input type =  "text" value = "${apartamento.quantQuartos}" name="apartamento.quantQuartos" id = "txtQuantQuartos"> <br> 
<select>
	<option selected value = "${apartamento.tipoOcupacao} = Vazio"> Vazio </option>
	<option value= "${apartamento.tipoOcupacao} = Propietário"> Propietário </option>
	<option value= "${apartamento.tipoOcupacao} = Inquilino"> Inquilino </option>
</select>
<br> 

Nome do propietário: 
<input type = "text" name = "txtNomePropietario"> <input type="button" value = "Procurar" name="btnProcurarPropietário">
<br>

Telefone: 
<input type = "text" name = "txtTelefonePropietario" value ="">

<br>
<input type = "submit" value= "Cadastra">
<input type="button" onClick="${result.redirectTo(linkTo[PropietarioController].adiciona())}" value = "Link de Teste">



</form>
</html>