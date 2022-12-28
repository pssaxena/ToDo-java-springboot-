<html>

<head>
<title>First Web Application</title>
</head>

<body>
ADD Todo Page for ${name}

<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css"
	rel="stylesheet">
	<div class="container">
		<form method="post">
			<fieldset class="form-group">
				<label>Description</label> 
				<input name="desc" type="text"
					class="form-control" required="required"/>
			</fieldset>
			<button type="submit" class="btn btn-success">Add</button>
		</form>
	</div>
	<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
	<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>

	<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

		<form:form method="post" commandName="todo">
		<!-- use modelAttribute instead of commandName for Spring Boot Versions > 2.*
		<form:form method="post" modelAttribute="todo"> -->
			<fieldset class="form-group">
				<form:label path="desc">Description</form:label>
				<form:input path="desc" type="text" class="form-control" required="required"/>
			</fieldset>
		</form:form>

		@Size(min = 10, message = "Enter atleast 10 Characters.")
		
		@Valid Todo todo, BindingResult result

		if (result.hasErrors())
			return "todo";
		
		<form:errors path="desc" cssClass="text-warning" />

		<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
		<form:form method="post" commandName="todo">

				<!-- use modelAttribute instead of commandName for Spring Boot Versions > 2.*
		<form:form method="post" modelAttribute="todo"> -->

				<form:label path="desc">Description</form:label> 
				<form:input path="desc" type="text"
				<form:errors path="desc" cssClass="text-warning"/>
		</form:form>



<form method="post">
	Description : <input name="desc" type="text"/> 
	<form:hidden path="id" />
<form:label path="desc">Description</form:label>
<form:input path="desc" type="text" class="form-control"
	required="required" />
<form:errors path="desc" cssClass="text-warning" />
<form:label path="targetDate">Target Date</form:label>
<form:input path="targetDate" type="text" class="form-control"
	required="required" />
<form:errors path="targetDate" cssClass="text-warning" />


<script
	src="webjars/bootstrap-datepicker/1.0.1/js/bootstrap-datepicker.js"></script>

<script>		
	$('#targetDate').datepicker({
		format : 'dd/mm/yyyy'
	});
</script>
	<input type="submit"/>	
</form>

public Todo retrieveTodo(int id) {
	for (Todo todo : todos) {
		if (todo.getId() == id)
			return todo;
	}
	return null;
}

public void updateTodo(Todo todo) {
	todos.remove(todo);
	todos.add(todo);
}

todo.setUser("in28Minutes"); //TODO:Remove Hardcoding Later
service.updateTodo(todo);

<form:hidden path="id"/>

<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<fmt:formatDate pattern="dd/MM/yyyy"
								value="${todo.targetDate}" />
								

@InitBinder
protected void initBinder(WebDataBinder binder) {
	SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
	binder.registerCustomEditor(Date.class, new CustomDateEditor(
			dateFormat, false));
}

<dependency>
	<groupId>org.webjars</groupId>
	<artifactId>bootstrap-datepicker</artifactId>
	<version>1.0.1</version>
</dependency>

<script
	src="webjars/bootstrap-datepicker/1.0.1/js/bootstrap-datepicker.js"></script>

<script>
	$('#targetDate').datepicker({
		format : 'dd/mm/yyyy'
	});
</script>
	

</body>

</html>
