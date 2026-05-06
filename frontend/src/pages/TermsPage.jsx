import { useNavigate } from "react-router-dom";
import { Button } from "../ui/primitives/Button";

export default function TermsPage() {
	const navigate = useNavigate();
  return (
    <div className="h-full overflow-y-auto bg-blackW text-whiteW">
      <div className="max-w-2xl mx-auto px-6 py-10">
				<Button variant="returnBT" onClick={() => navigate(-1)}>
					← Retour
				</Button>

        <h1 className="text-3xl font-bold mb-6">Conditions d'utilisation</h1>

        <section className="space-y-6 text-whiteW_70 text-sm leading-relaxed">
          <div>
            <h2 className="text-whiteW font-semibold text-base mb-2">1. Acceptation des conditions</h2>
            <p>En créant un compte Wave, vous acceptez les présentes conditions d'utilisation. Si vous n'acceptez pas ces conditions, vous ne pouvez pas utiliser le service.</p>
          </div>

          <div>
            <h2 className="text-whiteW font-semibold text-base mb-2">2. Description du service</h2>
            <p>Wave est une plateforme de streaming musical proposant des contenus audio sous licences libres (Creative Commons, domaine public). Le service est fourni à des fins personnelles et non commerciales.</p>
          </div>

          <div>
            <h2 className="text-whiteW font-semibold text-base mb-2">3. Compte utilisateur</h2>
            <p>Vous êtes responsable de la confidentialité de vos identifiants. Chaque compte est strictement personnel et non transférable. Wave se réserve le droit de suspendre tout compte en cas d'usage abusif.</p>
          </div>

          <div>
            <h2 className="text-whiteW font-semibold text-base mb-2">4. Contenu audio</h2>
            <p>L'ensemble des contenus audio disponibles sur Wave est soumis à des licences libres. Toute redistribution ou utilisation commerciale des contenus est interdite sans autorisation explicite des ayants droit.</p>
          </div>

          <div>
            <h2 className="text-whiteW font-semibold text-base mb-2">5. Limitation de responsabilité</h2>
            <p>Wave est fourni "tel quel", sans garantie de disponibilité continue. Nous ne saurions être tenus responsables des interruptions de service ou pertes de données.</p>
          </div>

          <div>
            <h2 className="text-whiteW font-semibold text-base mb-2">6. Modification des conditions</h2>
            <p>Wave se réserve le droit de modifier ces conditions à tout moment. Les utilisateurs seront informés de tout changement significatif.</p>
          </div>
        </section>

        <p className="mt-10 text-whiteW_50 text-xs">Dernière mise à jour : avril 2026</p>
      </div>
    </div>
  );
}
