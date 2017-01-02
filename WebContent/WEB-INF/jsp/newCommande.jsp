<%@ page pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/include/header.jsp"%>
<jsp:useBean id="commande" class="Beans.Commande" scope="request" />
        <div class="content">
            <form method="get" action="newCommande">
                <fieldset>
                    <legend>Informations client</legend>
    
                    <label for="nomClient">Nom <span class="requis">*</span></label>
                    <input type="text" id="nomClient" name="nomClient" value="${ !empty commande.client.nom ? commande.client.nom : "" }" size="20" maxlength="20" />
                    <br />
                    
                    <label for="prenomClient">Prénom </label>
                    <input type="text" id="prenomClient" name="prenomClient" value="${ !empty commande.client.prenom ? commande.client.prenom : "" }" size="20" maxlength="20" />
                    <br />
    
                    <label for="adresseClient">Adresse de livraison <span class="requis">*</span></label>
                    <input type="text" id="adresseClient" name="adresseClient" value="${ !empty commande.client.adresse ? commande.client.adresse : "" }" size="20" maxlength="20" />
                    <br />
    
                    <label for="telephoneClient">Numéro de téléphone <span class="requis">*</span></label>
                    <input type="text" id="telephoneClient" name="telephoneClient" value="${ !empty commande.client.telephone ? commande.client.telephone : "" }" size="20" maxlength="20" />
                    <br />
                    
                    <label for="emailClient">Adresse email</label>
                    <input type="email" id="emailClient" name="emailClient" value="${ !empty commande.client.email ? commande.client.email : "" }" size="20" maxlength="60" />
                    <br />
                </fieldset>
                <fieldset>
                    <legend>Informations commande</legend>
                    
                    <label for="dateCommande">Date <span class="requis">*</span></label>
                    <input type="text" id="dateCommande" name="dateCommande" value="${ !empty commande.date ? commande.date : "" }" size="20" maxlength="20" disabled />
                    <br />
                    
                    <label for="montantCommande">Montant <span class="requis">*</span></label>
                    <input type="text" id="montantCommande" name="montantCommande" value="${ commande.montant > 0 ? commande.montant : "" }" size="20" maxlength="20" />
                    <br />
                    
                    <label for="modePaiementCommande">Mode de paiement <span class="requis">*</span></label>
                    <input type="text" id="modePaiementCommande" name="modePaiementCommande" value="${ !empty commande.modePaiement ? commande.modePaiement : "" }" size="20" maxlength="20" />
                    <br />
                    
                    <label for="statutPaiementCommande">Statut du paiement</label>
                    <input type="text" id="statutPaiementCommande" name="statutPaiementCommande" value="${ !empty commande.statutPaiement ? commande.statutPaiement : "" }" size="20" maxlength="20" />
                    <br />
                    
                    <label for="modeLivraisonCommande">Mode de livraison <span class="requis">*</span></label>
                    <input type="text" id="modeLivraisonCommande" name="modeLivraisonCommande" value="${ !empty commande.modeLivraison ? commande.statutPaiement : "" }" size="20" maxlength="20" />
                    <br />
                    
                    <label for="statutLivraisonCommande">Statut de la livraison</label>
                    <input type="text" id="statutLivraisonCommande" name="statutLivraisonCommande" value="${ !empty commande.statutLivraison ? commande.statutLivraison : "" }" size="20" maxlength="20" />
                    <br />
                </fieldset>
                <input type="submit" value="Valider"  />
                <input type="reset" value="Remettre à zéro" /> <br />
            </form>
        </div>
<%@include file="/WEB-INF/include/footer.jsp"%>