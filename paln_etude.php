
<?php 
require_once("connexion.php");
require_once("session.php");
require_once("dexconnxion.php");

if(isset($_GET['code_fili'])and isset( $_GET['nom'])and isset($_GET['prenom']) and isset($_GET['nom_filiere'])and isset($_GET['id_niv']))
   $munfili=$_GET['code_fili'];
   $nom = $_GET['nom'];
   $prenom = $_GET['prenom'];
   $nom_filiere = $_GET['nom_filiere'];
   $id_niv=$_GET['id_niv'];

if (empty($munfili) and empty($nom) and empty($prenom) and empty($nom_filiere) and empty($id_niv)){
header("Location:etudiant.html");}

   $req = "SELECT code_mat,nom_mat,coef,nb_heur_cour,nb_heur_td,semestre FROM `matiere` WHERE filiere_id='$munfili' AND niv_etud=$id_niv ORDER BY semestre ASC";
$RES=$connexion-> query($req);
$eleve=$RES-> fetchAll(PDO::FETCH_ASSOC);

$req = "SELECT niveau FROM niveau_etude WHERE id='$id_niv'";
$RES = $connexion->query($req);
$niv = $RES->fetchColumn();
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Isaas</title>
    <link rel="icon" type="isaas.PNG" href="logo_isaas.icon.ico">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" integrity="sha512-9aPpxuV7HRSF1GWuV7yE8TtW0TtQvcsoXtvVZgMdSO8tWjKfHsXTs+wPLyLd8I4W4OvNOl+jY9Z1hqfnn71S+A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="style.css">
    </head>
    <script>
        var images = ["christin-hume-Hcfwew744z4-unsplash.jpg","christopher-gower-m_HRfLhgABo-unsplash.jpg","sincerely-media-dGxOgeXAXm8-unsplash.jpg","thought-catalog-505eectW54k-unsplash.jpg","luca-bravo-9l_326FISzk-unsplash.jpg","jeshoots-com-pUAM5hPaCRI-unsplash.jpg"];
    
        var i = 0;
        setInterval(function() {
            document.body.style.backgroundImage = "url(" + images[i] + ")";
            i = (i + 1) % images.length;
        }, 3000); 
    </script>
    
    <body>
        
    <div class="head">
        <img src="OIP.jpg" alt="drapeau de tunisie">
        <br>
        <p>République Tunisienne
        <br>
        Ministère de l’Enseignement Supérieur et de la Recherche Scientifique
        <br>
        université de SFAX</p>
        <ul>
            
            <li> <a href="index.html"><i class="fas fa-home"></i>ACCUEIL</a></li>
            <li> <a href="galerie.html"><i class="fas fa-camera"></i>GALERIE</a></li>
            <li>  <a href="#fieldset"><i class="fas fa-newspaper"></i>ACTUALITÉS</a></li>
                <li>  <a href="#"><i class="far fa-calendar-alt"></i>AGENDA</a></li>
                <li> <a href="#footer"><i class="fas fa-envelope"></i>CONTACT</a></li>
            
        </ul>
    </div>
    <header>
        <div class="logo">
            <div><img src="Capture d’écran 2023-04-15 203657.png" alt=""></div>
            <div class="recherche"> 
                <input type="search" placeholder="Recherche... " >
                <i class="fas fa-search"></i>
                <div class="extranet">
                <a href="etudiant.html?DECONNEXION=OUI" ><i class="fas fa-user"></i>DECONNEXION</a>
                </div>
            </div>
        </div>
    </header>
    <div align="center"><span class="style5" bgcolor="#FFFFFF">INSTITUT SUPERIEUR D'ADMINISTRATION DES AFFAIRES DE SFAX</span></div><br>
    </table>
    <?php
  echo"  <tr>";
  echo "<div class=\"alert alert-info\" role=\"alert\">";


  echo "<p>" . $prenom . " " . $nom . "! Vous êtes maintenant connecté.</p>";

   echo" <hr>";


    echo "<tr>";
    // Code supplémentaire ici
    echo "<td width=\"70%\">";

 
    echo '<p align="left"><strong>Type Diplôme:</strong>Licence<br />';
    echo '<strong>Domaine:</strong>Sciences Exactes et Technologies<br />';
    echo '<strong>Mention:</strong> '.$niv." ".$nom_filiere . ' <br />';
    echo '<strong>Spécialité:</strong>Tronc commun ( I.S.A.A. de Sfax)</p>';

echo "</tD>";
echo "</tr>";echo"</div>";

							


echo '<table width="100%" border="0" cellpadding="0" cellspacing="1" bordercolor="#000000">';
echo '<tr bgcolor="#444444">';
echo '<td colspan="7" align="center" valign="middle" bgcolor="#FFFFFF"><div align="left">
<span class="style8"> &nbsp;&nbsp;&nbsp;* Code_Mat: </span><span class="style9">Code matiére</span>
<span class="style8"> , Coef: </span><span class="style9">Coefficient</span>
</div></td>';
echo '</tr>';
echo '</table>';
echo '<br />';
echo '<table width="100%" border="0" cellpadding="0" cellspacing="1" bordercolor="#000000">';
echo '<tr bgcolor="#444444">';
echo '<td colspan="7" align="center" valign="middle" bgcolor="#FFFFFF"><div align="left" class="style8"></div></td>';
echo '</tr>';
echo '<tr bgcolor="#444444">';
echo '</tr>';
echo '<tr>';
echo '<td width="66" rowspan="2" align="center" valign="middle" bgcolor="#0066CC"><span class="style2">&nbsp;Code_Mat&nbsp;</span></td>';
echo '<td width="313" rowspan="2" align="center" valign="middle" bgcolor="#0066CC"><span class="style2">&nbsp;Libelle&nbsp;</span></td>';
echo '<td width="48" rowspan="2" align="center" valign="middle" bgcolor="#0066CC"><span class="style2">&nbsp; Coef &nbsp;</span></td>';
echo '<td colspan="3" align="center" valign="middle" bgcolor="#0066CC"><span class="style2">Volume Horaire</span></td>';
echo '</tr>';
echo '<tr>';
echo '<td width="45" align="center" valign="middle" bgcolor="#0066CC"><span class="style2">Cours</span></td>';
echo '<td width="35" align="center" valign="middle" bgcolor="#0066CC"><span class="style2">&nbsp;TD&nbsp;</span></td>';
echo '<td width="45" align="center" valign="middle" bgcolor="#0066CC"><span class="style2">Semestre</span></td>';

echo '</tr>';
foreach ($eleve as $student) {

    echo "<tr>";

    foreach ( $student as $cle){

        echo '<td align="center" valign="middle" bgcolor="#FFFFFF">' . $cle . '</td>';

  
    }
    
   
  
    echo "</tr>";
}
echo '</table>';
?>

    <div class="container">
   
</div>
    <footer id="footer">
            <div class="logo-footer">
                <img src="logo_isaas.icon.ico" alt=""> 
                <div><h3><strong>adresse:</strong> route matar k4 </h3>
                <h3><strong>Tel:</strong> 77998884</h3>
                <h3><strong>Fax:</strong> 77554433</h3>
                <h3><strong>Email:</strong> contact@gmail.com </h3>
            </div>
            </div>
            <div class="title-elem">
                <h1>Faculte</h1>
                <ul>
                    <li><a href="#">Mot de Doyen</a></li>
                    <li><a href="#">Organigramme</a></li>
                    <li><a href="#">En chiffre</a></li>
                    <li><a href="#">Des conseiles</a></li>
                </ul>
            </div>
            <div class="title-elem">
                <h1>Etudiant</h1>
                <ul>
                    <li><a href="#">Clubs</a></li>
                    <li><a href="#">Manifestations</a></li>
                    <li><a href="#">Activités sportives</a></li>
                    <li><a href="#">Activités culturelles</a></li>
                </ul>
            </div>
            <div class="title-elem">
                <h1>Entreprise</h1>
                <ul>
                    <li><a href="#">Stage & PFE</a></li>
                    <li><a href="#">Recrutement</a></li>
                    <li><a href="#">Listes des offres d'emplois</a></li>
                    <li><a href="#">Listes des débouchés</a></li>
                </ul>
            </div>
        </div>
            
    </footer>
     <div class="copyright">
        <h5>Copyright ©2023 All rights reserved IRM</h5></div>
</body>
</html>