<%@ page pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/include/header.jsp"%>
<jsp:useBean id="guest" class="Beans.Client" scope="request" />
<div class="content">
	<form method="get" action="newClient">
		<fieldset>
			<legend>Informations client</legend>

			<label for="nomClient">Nom <span class="requis">*</span></label> <input
				type="text" id="nomClient" name="nomClient" value="${ !empty guest.nom ? guest.nom : "" } " size="20"
				maxlength="20" /> <br /> <label for="prenomClient">Prénom
			</label> <input type="text" id="prenomClient" name="prenomClient" value="${ !empty guest.prenom ? guest.prenom : "" } "
				size="20" maxlength="20" /> <br /> <label for="adresseClient">Adresse
				de livraison <span class="requis">*</span>
			</label> <input type="text" id="adresseClient" name="adresseClient" value="${ !empty guest.adresse ? guest.adresse : "" } "
				size="20" maxlength="20" /> <br /> <label for="telephoneClient">Numéro
				de téléphone <span class="requis">*</span>
			</label> <input type="text" id="telephoneClient" name="telephoneClient"
				value="${ !empty guest.telephone ? guest.telephone : "" } " size="20" maxlength="20" /> <br /> <label
				for="emailClient">Adresse email</label> <input type="email"
				id="emailClient" name="emailClient" value="${ !empty guest.email ? guest.email : ""  } " size="20"
				maxlength="60" /> <br />
		</fieldset>
		<input type="submit" value="Valider" /> <input type="reset"
			value="Remettre à zéro" /> <br />

	</form>
</div>
<%@include file="/WEB-INF/include/footer.jsp"%>