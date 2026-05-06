# Zustand

Zustand est une librairie de gestion d'état global — une alternative simple à Redux. Il permet de partager des données entre des composants sans avoir à les passer de parent en enfant via des props.

## Concept

Sans Zustand, si tu veux qu'un composant A communique une valeur à un composant B qui n'est pas son enfant, tu dois faire passer la valeur par tous les parents intermédiaires. C'est pénible.

Avec Zustand, tu crées un **store** — une boîte partagée accessible depuis n'importe quel composant de l'application. Chaque composant peut lire et modifier cette boîte directement.

## Créer un store

```js
import { create } from "zustand";

export const useMonStore = create((set) => ({
  // --- État initial ---
  maDonnee: null, // valeur initiale
  monBooleen: false, // valeur initiale
  monTableau: [], // tableau vide — obligatoire avant de pouvoir y ajouter des éléments

  // --- Actions (fonctions qui modifient l'état) ---
  setMaDonnee: (valeur) => set({ maDonnee: valeur }),

  // Pour lire l'état actuel avant de le modifier, on passe une fonction à set :
  toggle: () => set((state) => ({ monBooleen: !state.monBooleen })),

  // Pour modifier un tableau sans écraser les autres éléments :
  ajouterElement: (element) =>
    set((state) => ({
      monTableau: [...state.monTableau, element],
    })),
}));
```

## Utiliser un store dans un composant

```jsx
import { useMonStore } from "../store/monStore";

export function MonComposant() {
  // Récupérer une valeur
  const maDonnee = useMonStore((state) => state.maDonnee);

  // Récupérer une action
  const setMaDonnee = useMonStore((state) => state.setMaDonnee);

  // Récupérer plusieurs valeurs/actions en une fois
  const { monBooleen, toggle } = useMonStore();

  return (
    <button onClick={() => setMaDonnee("nouvelle valeur")}>{maDonnee}</button>
  );
}
```

> **Bonne pratique** : préférer la forme `useMonStore((state) => state.maDonnee)` plutôt que `useMonStore().maDonnee` — le composant ne se re-rendra que si `maDonnee` change, pas à chaque modification du store.

---

# Composants Radix UI

## DropdownMenu

`DropdownMenu` est une boîte magique avec plusieurs pièces :

- **`DropdownMenu.Root`** — contient tout et gère l'état ouvert/fermé en interne. Pas besoin de `useState`.
- **`DropdownMenu.Trigger`** — le bouton qui ouvre le menu. `asChild` utilise ton propre bouton au lieu d'en créer un nouveau.
- **`DropdownMenu.Portal`** — affiche le menu dans `document.body` pour éviter les problèmes de z-index.
- **`DropdownMenu.Content`** — le menu qui apparaît. `side` dit où il s'ouvre, `sideOffset` c'est l'espace en pixels entre le trigger et le menu.
- **`DropdownMenu.Item`** — un bouton dans le menu. `onSelect` est appelé au clic, Radix ferme le menu automatiquement après.
- **`DropdownMenu.Sub`** + **`DropdownMenu.SubTrigger`** + **`DropdownMenu.SubContent`** — un sous-menu. `SubTrigger` s'ouvre au hover, `SubContent` contient les items du sous-menu.
- **`DropdownMenu.Separator`** — une ligne de séparation entre les items.

```jsx
import * as DropdownMenu from "@radix-ui/react-dropdown-menu";

<DropdownMenu.Root>
    <DropdownMenu.Trigger asChild>
        <button type="button">
            {/* bouton déclencheur */}
        </button>
    </DropdownMenu.Trigger>

    <DropdownMenu.Portal>
        <DropdownMenu.Content
            side="right"        {/* côté d'ouverture : "top" | "right" | "bottom" | "left" */}
            align="start"       {/* alignement : "start" | "center" | "end" */}
            sideOffset={4}      {/* espace en px entre le trigger et le menu */}
            className=""        {/* styles du menu */}
            // onClick={(e) => e.stopPropagation()} — à ajouter uniquement si le menu est
            // dans un élément parent cliquable (ex: <tr>, <div onClick=...>), pour éviter
            // que le clic sur le menu déclenche aussi l'action du parent.
        >
            <DropdownMenu.Item
                className=""            {/* styles de l'item */}
                onSelect={() => {}}     {/* action au clic — pour naviguer vers une autre page,
                                           utiliser useNavigate() : onSelect={() => navigate("/ma-route")} */}
            >
                {/* texte de l'item */}
            </DropdownMenu.Item>

            <DropdownMenu.Separator className="" {/* styles du séparateur */} />

            <DropdownMenu.Sub>
                <DropdownMenu.SubTrigger className="" {/* styles du trigger sous-menu */}>
                    {/* texte du trigger sous-menu */}
                </DropdownMenu.SubTrigger>

                <DropdownMenu.Portal>
                    <DropdownMenu.SubContent
                        sideOffset={4}
                        className=""    {/* styles du sous-menu */}
                    >
                        <DropdownMenu.Item
                            className=""            {/* styles de l'item */}
                            onSelect={() => {}}     {/* action au clic */}
                        >
                            {/* texte de l'item */}
                        </DropdownMenu.Item>
                    </DropdownMenu.SubContent>
                </DropdownMenu.Portal>
            </DropdownMenu.Sub>

        </DropdownMenu.Content>
    </DropdownMenu.Portal>
</DropdownMenu.Root>
```

---

## Dialog

`Dialog` est la boîte magique des modals :

- **`Dialog.Root`** — contient tout. Contrairement à DropdownMenu, il a besoin que tu lui passes `open` et `onOpenChange` explicitement — parce qu'on peut l'ouvrir depuis n'importe quel endroit du code.
- **`Dialog.Portal`** — affiche le modal dans `document.body`.
- **`Dialog.Overlay`** — le fond semi-transparent derrière le modal. `fixed inset-0` couvre tout l'écran.
- **`Dialog.Content`** — la fenêtre du modal. `left-1/2 top-1/2 -translate-x-1/2 -translate-y-1/2` permet de le centrer parfaitement à l'écran.
- **`Dialog.Title`** — le titre du modal. Requis par Radix pour l'accessibilité (lecteurs d'écran).
- **`Dialog.Close`** — bouton de fermeture intégré, ferme le modal automatiquement au clic.

```jsx
import * as Dialog from "@radix-ui/react-dialog";
import { useState } from "react";

const [open, setOpen] = useState(false);

<Dialog.Root open={open} onOpenChange={setOpen}>
    <Dialog.Portal>
        <Dialog.Overlay
            className=""    {/* couleur et style du fond (ex: "fixed inset-0 z-[9999] bg-black/50") */}
        />
        <Dialog.Content
            className="
                fixed left-1/2 top-1/2 z-[9999]
                -translate-x-1/2 -translate-y-1/2
            "               {/* styles de la fenêtre modale */}
        >
            <Dialog.Title className="">
                {/* titre du modal */}
            </Dialog.Title>

            {/* contenu du modal */}

            <Dialog.Close asChild>
                <button type="button">
                    {/* bouton de fermeture */}
                </button>
            </Dialog.Close>
        </Dialog.Content>
    </Dialog.Portal>
</Dialog.Root>
```

meili search
