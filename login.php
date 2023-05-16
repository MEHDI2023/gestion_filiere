
<?php
 // Connexion à la base de données
 require_once("connexion.php");

 require_once("dexconnxion.php");
// Traitement du formulaire si le bouton de connexion est cliqué
if(isset($_POST['cin'])&&isset($_POST['password']))   {

    $n=$_POST['cin'];
    $p=$_POST['password'];
}if (!empty($n)&&!empty($p))
{


// Préparation de la requête
$req = "SELECT code_fili FROM etudiant WHERE cin='$n'";
$RES = $connexion->query($req);
$code_fili = $RES->fetchColumn();

$req = "SELECT code_niveau FROM etudiant WHERE cin='$n'";
$RES = $connexion->query($req);
$id_niv = $RES->fetchColumn();

$req = "SELECT nom FROM etudiant WHERE cin='$n'";
$RES = $connexion->query($req);
$nom = $RES->fetchColumn();

$req = "SELECT prenom FROM etudiant WHERE cin='$n'";
$RES = $connexion->query($req);
$prenom = $RES->fetchColumn();

$req = "SELECT nom FROM filiere WHERE code_fil = (SELECT code_fili FROM etudiant WHERE cin='$n')";
$RES = $connexion->query($req);
$nom_filiere = $RES->fetchColumn();




    $requete = "SELECT * FROM  etudiant WHERE cin='$n'AND password='$p'";
    $data=$connexion->query($requete);
    $requete=$data->fetchAll(PDO::FETCH_ASSOC);
if ($requete[0]["password"]==$p){
 $_SESSION["connexion"]=1;
 // Passage de la variable à la page suivante en utilisant la méthode GET
 header("Location:paln_etude.php?code_fili=$code_fili&nom=$nom&id_niv=$id_niv&prenom=$prenom&nom_filiere=$nom_filiere");

 
 exit();


}else{
    $error = "Mot de passe incorrect.";
    // Redirection vers la page de connexion avec un message d'erreur
    header("Location:etudiant.html?error=" . urlencode($error));
    exit();
 
}
}
    
?>