<!-- formulaire d'inscription, bootstrap fait-->

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
    
</head>

<body>

<header>    
        
            <div class="row justify-content-between" style="width : 100%">
                 <div class ="col-3 align-self-center "><a href="index.html"><img src="wire/logo4.png" alt="logo Terrain Facile"></a></div>
                 <div class ="col-6 align-self-center " style ="">
                     <ul>
                     <li><a href="terrain.html">Terrain</a></li>
                     <li class="traitHead"></li>
                     <li><a href="parc.html">Parc</a></li>
                     <li class="traitHead"></li>
                     <li><a href="terrain.html">For�t</a></li>
                     <li class="traitHead"></li>
                     <li><a href="parc.html">Champs</a></li>
                     <li class="traitHead"></li>
                     <li><a href="terrain.html">Jardin</a></li>
                     </ul>
                 </div>
                 <div class="col-3 align-self-center " style="text-align: end;">
                     <a href="compte.html">Se connecter</a>
                     <button class="btn btn-success linkCompte">Inscrivez-vous</button>
                 </div>
            </div>
        
    </header>
    
<div class="container "> 
        <form method="post" action="inscription.php">
            <h1>Cr�e ton compte le Terrain Facile :</h1>

                <div class="row justify-content-center">
                    <div class="col-4">
                        <label for="prenom">Pr�nom :</label></br>
                        <input type="texte" name="prenom" id="prenom" placeholder=" ex: Pierre"/>
                    </div>
                    <div class="col-4">
                        <label class="label" for="nom">Nom :</label></br>
                        <input  type="texte" name="nom" id="nom" placeholder=" ex: Dupont"/>
                    </div>
                </div>

                <div class="row row justify-content-center">
                    <div class="col-8">
                        <label class="label" for="mail">Adresse e-mail :</label></br>
                        <input class="inputMail" type="email" name="mail" id="mail" placeholder= "exemple@leterrainfacile.com">
                    </div>
                </div>

                <div class="row justify-content-center">
                    <div class="col-4">
                        <label class="label" for="mdp">Mot de passe :</label></br>
                        <input type="password" name="mdp" id="mdp" placeholder=" ex: motdepasse"/>
                    </div> 
                    <div class="col-4">
                        <label class="label" for="confirmation">Confirmer :</label></br>
                        <input type="password" name="confirmation" id="confirmation" placeholder=" ex: motdepasse"/>
                    </div>
                </div>

                <div class="row justify-content-center">
              
                    <div class="col-4"> Genre </br>
                        <label class="label" for="madame"> Mme</label>
                        <input type="checkbox" name="madame" id="madame"/>
                        <label class="label" for="monsieur"> M.</label>
                        <input type="checkbox" name="monsieur" id="monsieur"/>
                    </div>
                    <div class="col-4">
                        <label class="label" for="societe">Societe : </label></br>
                        <input class="inputInscription" type="text" name="societe" id="societe" placeholder=" Facultatif">
                    </div>
                </div>

                <div class="row justify-content-center">
                    <div class="col-8"> Date de naissance : </br>
                            <label class="label" for="jour">Jour :</label>
                                    <select name="jour" id="jour">
                                    <option value="1">1</option>
                                    <option value="2">2</option>
                                    <option value="3">3</option>
                                    <option value="4">4</option>
                                    <option value="5">5</option>
                                    <option value="6">6</option>
                                    <option value="7">7</option>
                                    <option value="8">8</option>
                                    <option value="9">9</option>
                                    <option value="10">10</option>
                                    <option value="11">11</option>
                                    <option value="12">12</option>
                                    <option value="13">13</option>
                                    <option value="14">14</option>
                                    <option value="15">15</option>
                                    <option value="16">16</option>
                                    <option value="17">17</option>
                                    <option value="18">18</option>
                                    <option value="19">19</option>
                                    <option value="20">20</option>
                                    <option value="21">21</option>
                                    <option value="22">22</option>
                                    <option value="23">23</option>
                                    <option value="24">24</option>
                                    <option value="25">25</option>
                                    <option value="26">26</option>
                                    <option value="27">27</option>
                                    <option value="28">28</option>
                                    <option value="29">29</option>
                                    <option value="30">30</option>
                                    <option value="31">31</option>
                                    </select>
                                
                                <label class="label" for="mois">Mois :</label>
                                    <select name="mois" id="mois">
                                    <option value="janvier">Janvier</option>
                                    <option value="fevrier">F�vrier</option>
                                    <option value="mars">Mars</option>
                                    <option value="avril">Avril</option>
                                    <option value="mai">Mai</option>
                                    <option value="juin">Juin</option>
                                    <option value="Juillet">Juillet</option>
                                    <option value="Ao�t">Ao�t</option>
                                    <option value="Septembre">Septembre</option>
                                    <option value="Octobre">Octobre</option>
                                    <option value="Novembre">Novembre</option>
                                    <option value="Decembre">Decembre</option>
                                    </select>
                                
                                <label class="label" for="annee">Ann�e :</label>
                                    <select name="annee" id="annee">
                                    <option value="2001">2001</option>
                                    <option value="2000">2000</option>
                                    <option value="1999">1999</option>
                                    <option value="1998">1998</option>
                                    <option value="1997">1997</option>
                                    <option value="1996">1996</option>
                                    <option value="1995">1995</option>
                                    <option value="1994">1994</option>
                                    <option value="1993">1993</option>
                                    <option value="1992">1992</option>
                                    <option value="1991">1991</option>
                                    <option value="1990">1990</option>
                                    </select>
                               
                        </div>
                </div>  

                <div class="row">
                    <div class="col-2"></div>
                    <button class="btn btn-primary text-center"> S'inscrire </button>
            </div>
        </form>
    </div>

        <div class="espaceFooter"></div>  <!--bloc qui permet d'obtenir un espace entre le haut de page et le d�but du contenu, il fait la taille du header-->
</body>
</html>