import { Link, useNavigate } from "react-router-dom";
import { Button } from "../ui/primitives/Button";

export default function PrivacyPage() {
	const navigate = useNavigate();
  return (
    <div className="h-full overflow-y-auto bg-blackW text-whiteW">
      <div className="max-w-2xl mx-auto px-6 py-10">
        <Button variant="returnBT" onClick={() => navigate(-1)}>
					← Retour
				</Button>

        <h1 className="text-3xl font-bold mb-6">Politique de confidentialité</h1>

        <section className="space-y-6 text-whiteW_70 text-sm leading-relaxed">
          <div>
            <h2 className="text-whiteW font-semibold text-base mb-2">1. Données collectées</h2>
            <p>Wave collecte les données suivantes lors de la création d'un compte : adresse e-mail, nom d'utilisateur et mot de passe chiffré. En cours d'utilisation, nous enregistrons votre historique d'écoute et vos préférences (titres aimés, playlists).</p>
          </div>

          <div>
            <h2 className="text-whiteW font-semibold text-base mb-2">2. Utilisation des données</h2>
            <p>Vos données sont utilisées exclusivement pour le fonctionnement du service : authentification, personnalisation de l'expérience et affichage de l'historique d'écoute. Elles ne sont jamais revendues ni partagées avec des tiers.</p>
          </div>

          <div>
            <h2 className="text-whiteW font-semibold text-base mb-2">3. Stockage et sécurité</h2>
            <p>Les données sont stockées sur des serveurs locaux sécurisés. Les mots de passe sont systématiquement chiffrés avant stockage. Nous mettons en œuvre les mesures techniques appropriées pour protéger vos données.</p>
          </div>

          <div>
            <h2 className="text-whiteW font-semibold text-base mb-2">4. Cookies et stockage local</h2>
            <p>Wave utilise le stockage local du navigateur (localStorage) pour maintenir votre session et mémoriser l'état du lecteur audio. Aucun cookie de traçage tiers n'est utilisé.</p>
          </div>

          <div>
            <h2 className="text-whiteW font-semibold text-base mb-2">5. Vos droits</h2>
            <p>Conformément au RGPD, vous disposez d'un droit d'accès, de rectification et de suppression de vos données. En cas de suppression de compte, vos données personnelles identifiables (nom d'utilisateur, adresse e-mail) seront conservées jusqu'à la prochaine mise à jour mensuelle du site par les administrateurs. Au-delà de cette date, les données seront irrévocablement supprimées. Certaines données peuvent être conservées de manière anonyme (statistiques d’écoutes).</p>
          </div>

          <div>
            <h2 className="text-whiteW font-semibold text-base mb-2">6. Durée de conservation</h2>
            <p>Vos données personnelles identifiables sont conservées tant que votre compte est actif. À la fermeture du compte, elles sont supprimées lors de la prochaine mise à jour mensuelle du site. Les données agrégées anonymes (historique d'écoute, statistiques) peuvent être conservées afin de garantir l'intégrité du service.</p>
          </div>
        </section>

        <p className="mt-10 text-whiteW_50 text-xs">Dernière mise à jour : avril 2026</p>
      </div>
    </div>
  );
}
