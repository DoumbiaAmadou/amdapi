<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
  <body>
        <%-- Affichage de la cha�ne "message" transmise par la servlet --%>
        <p class="info">${ message }</p>
        <%-- Puis affichage des donn�es enregistr�es dans le bean "client" transmis par la servlet --%>
        <p>Nom : ${ guest.nom }</p>
        <p>Pr�nom : ${ guest.prenom }</p>
        <p>Adresse : ${ guest.adresse }</p>
        <p>Num�ro de t�l�phone : ${ guest.telephone }</p>
        <p>Email : ${ guest.email }</p>
    </body>
</html>