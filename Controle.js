
    function validateForm() {
        // Récupérer les champs du formulaire
        var cin = document.forms["loginForm"]["cin"].value;
        var password = document.forms["loginForm"]["password"].value;
        
        // Vérifier que le champ CIN contient exactement 8 chiffres
        if (cin.length != 8 || isNaN(cin)) {
            alert("Le CIN doit contenir exactement 8 chiffres.");
            return false;
        }
        
        // Vérifier que le champ mot de passe n'est pas vide
        if (password == "") {
            alert("Le champ mot de passe est obligatoire.");
            return false;
        }
        
        // Si tous les contrôles de saisie passent, soumettre le formulaire
        return true;
    }
