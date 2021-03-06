<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<header>
  <!-- Fixed navbar -->
 <nav class="navbar navbar-expand-lg navbar-dark bg-primary" aria-label="Eighth navbar example">
    <div class="container">
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarsExample07" aria-controls="navbarsExample07" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>

      <div class="collapse navbar-collapse" id="navbarsExample07">
        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
          <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="${pageContext.request.contextPath}/home">Home</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">Link</a>
          </li>
          <li class="nav-item">
            <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Disabled</a>
          </li>
           <sec:authorize access="hasRole('ADMIN')">
		      <li class="nav-item dropdown">
		        <a class="nav-link dropdown-toggle" href="#" id="dropdown01" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Gestione Utenze</a>
		        <div class="dropdown-menu" aria-labelledby="dropdown01">
		          <a class="dropdown-item" href="${pageContext.request.contextPath}/utente/search">Ricerca Utenti</a>
		        </div>
		      </li>
		   </sec:authorize>
		   <sec:authorize access="hasRole('BO_USER')">
		      <li class="nav-item dropdown">
		        <a class="nav-link dropdown-toggle" href="#" id="dropdown01" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Dropdown</a>
		        <div class="dropdown-menu" aria-labelledby="dropdown01">
		          <a class="dropdown-item" href="${pageContext.request.contextPath}/dipendente/insert">Inserisci Dipendente</a>
		          <a class="dropdown-item" href="${pageContext.request.contextPath}/richiestaPermesso/search">Ricerca Permesso</a>
		          <a class="dropdown-item" href="${pageContext.request.contextPath}/dipendente/searchMessaggio">Gestione Messaggi</a>
		        </div>
		      </li>
		   </sec:authorize>
        </ul>
      </div>
      <sec:authorize access="isAuthenticated() && hasRole('ADMIN')">
	      <div class="col-md-3 text-end">
	        <p class="navbar-text">Utente: <sec:authentication property="name"/> (${userInfo.username })
	    	 <a href="${pageContext.request.contextPath}/logout">Logout</a></p>
	      </div>
      </sec:authorize>
      <sec:authorize access="isAuthenticated() && hasRole('BO_USER')">
	      <div class="col-md-3 text-end">
	        <p class="navbar-text">Utente: <sec:authentication property="name"/> (${userInfo.username})
	    	 <a href="${pageContext.request.contextPath}/logout">Logout</a></p>
	      </div>
      </sec:authorize>
      <sec:authorize access="isAuthenticated() && hasRole('DIPENDENTE_USER')">
	      <div class="col-md-3 text-end">
				<div class="collapse navbar-collapse" id="navbarsExample07">
					<ul class="navbar-nav me-auto mb-2 mb-lg-0">
						<li class="nav-item dropdown">
							<a class="nav-link dropdown-toggle" href="#" id="dropdown01" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">(${userInfo.username})</a>
							<ul class="dropdown-menu" aria-labelledby="dropdown01">
								<li><a class="dropdown-item" href="${pageContext.request.contextPath}/logout">Logout</a></li>
								<li><a class="dropdown-item" href="${pageContext.request.contextPath}/cambiaPassword/resetform">Cambia Password</a></li>
							</ul>
						</li>
					</ul>	
				</div>   	      
	      </div>
      </sec:authorize>
    </div>
  </nav>
  
  
</header>
