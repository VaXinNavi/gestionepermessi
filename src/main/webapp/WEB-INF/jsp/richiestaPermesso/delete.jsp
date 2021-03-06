<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="it" class="h-100">
<head>
	<!-- Common imports in pages -->
	<jsp:include page="../header.jsp" />
	<title>Visualizza elemento</title>
	
</head>
<body class="d-flex flex-column h-100">
	<!-- Fixed navbar -->
	<jsp:include page="../navbar.jsp" />
	
	<!-- Begin page content -->
	<main class="flex-shrink-0">
	  	<div class="container">
	  	
	  		<div class="alert alert-danger alert-dismissible fade show ${errorMessage==null?'d-none':'' }" role="alert">
			${errorMessage}
				<button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close" ></button>
			</div>
			
			<div class='card'>
			    <div class='card-header'>
			        Visualizza dettaglio
			    </div>
			
			    <div class='card-body'>
			    	<dl class="row">
					  <dt class="col-sm-3 text-right">Id:</dt>
					  <dd class="col-sm-9">${delete_richiesta_attr.id}</dd>
			    	</dl>
			    	
			    	<dl class="row">
					  <dt class="col-sm-3 text-right">Approvato:</dt>
					  <dd class="col-sm-9">${delete_richiesta_attr.approvato}</dd>
			    	</dl>
			    	
			    	<dl class="row">
					  <dt class="col-sm-3 text-right">Codice del Certificato:</dt>
					  <dd class="col-sm-9">${delete_richiesta_attr.codiceCertificato}</dd>
			    	</dl>
			    	
			    	<dl class="row">
					  <dt class="col-sm-3 text-right">Note:</dt>
					  <dd class="col-sm-9">${delete_richiesta_attr.note}</dd>
			    	</dl>
			    	
			    	<dl class="row">
					  <dt class="col-sm-3 text-right">Tipo Permesso:</dt>
					  <dd class="col-sm-9">${delete_richiesta_attr.tipoPermesso}</dd>
			    	</dl>
			    	
			    	<dl class="row">
					  <dt class="col-sm-3 text-right">Data Inizio:</dt>
					  <dd class="col-sm-9"><fmt:formatDate type = "date" value = "${delete_richiesta_attr.dataInizio}" /></dd>
			    	</dl>
			    	
			    	<dl class="row">
					  <dt class="col-sm-3 text-right">Data Fine:</dt>
					  <dd class="col-sm-9"><fmt:formatDate type = "date" value = "${delete_richiesta_attr.dataFine}" /></dd>
			    	</dl>
			    	
				</div>
			    	
			    <!-- end card body -->
			    </div>
			    
			    <div class='card-footer'>
			    	<a href="${pageContext.request.contextPath}/richiestaPermesso/list" class='btn btn-outline-secondary' style='width:80px'>
			           <i class='fa fa-chevron-left'></i> Back
			        </a>
			        <form method = "POST" action = "${pageContext.request.contextPath}/richiestaPermesso/remove">
			        	<input type = "hidden" name = "idRichiestaPermesso" value = "${delete_richiesta_attr.id}">
			        	<input type = "submit" value = "Elimina">
			        </form>
			    </div>
			<!-- end card -->
	
		<!-- end container -->  
		</div>
		
	</main>
	<jsp:include page="../footer.jsp" />
	
</body>
</html>