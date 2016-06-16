<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="alura"%>
<c:import url="/WEB-INF/jsp/header.jsp" />
<c:forEach var="error" items="${errors}">
    ${error.category} - ${error.message}<br />
</c:forEach>
<form action="${linkTo[UsuarioController].adiciona(null)}" method="post">
	<label for="nome">Nome: </label> 
	<input type="text" id="nome" name="usuario.nome" class="form-control" value="${usuario.nome}" />
	<alura:validationMessage name="usuario.nome"/>
	
	<label for="email">E-mail:</label>
	<input type="text" id="email" name="usuario.email" class="form-control" value="${usuario.email}"/>
	<alura:validationMessage name="usuario.email"/>
	
	<label for="login">Login:</label> 
	<input type="text" id="login" name="usuario.login" class="form-control" value="${usuario.login}"/>
	<alura:validationMessage name="usuario.login"/> 
	
	<label for="senha">Senha:</label>
	<input type="password" id="senha" name="usuario.senha" class="form-control" />
	<alura:validationMessage name="usuario.senha"/> 
	
	<input type="submit" value="Cadastrar" 	class="btn" />
</form>
<c:import url="/WEB-INF/jsp/footer.jsp" />