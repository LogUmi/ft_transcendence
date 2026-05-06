import { useEffect, useRef, useState } from "react";
import { useChatStore } from "../store/chatStore";
import { useNotificationStore } from "../store/notificationStore";
import { Button } from "../ui/primitives/Button";
import { Avatar } from "../ui/components/Avatar";
import { MessageCircle, UserRoundX, UserRoundCheck, ShieldX } from 'lucide-react';
import * as Dialog from "@radix-ui/react-dialog";
import { toast } from "sonner";
import { handleGetFriends, handleFriendRequest } from "../services/APIFRONT/handle";

export default function Friends() {
	const [error, setError]         = useState("");
	const [friends, setFriends]     = useState([]);
	const [requests, setRequests]   = useState([]);
	const [confirm, setConfirm]     = useState(null); // { friend, action: "remove" | "block" }

	const { rooms, addRoom, switchRoom, open: openChat } = useChatStore();
	const notifications = useNotificationStore((state) => state.notifications);
	const lastNotifRef = useRef(notifications[0] ?? null);

	function fetchLists() {
		handleGetFriends("granted", setFriends, setError);
		handleGetFriends("pending", setRequests, setError);
	}

	useEffect(() => { fetchLists(); }, []);

	useEffect(() => {
		const last = notifications[0];
		const friendKinds = ["friend_request", "friend_accept", "friend_rejected", "friend_removed", "friend_blocked"];
		if (last && last !== lastNotifRef.current && friendKinds.includes(last.kind)) {
			lastNotifRef.current = last;
			fetchLists();
		}
	}, [notifications]);

	function openDm(friend) {
		if (!rooms.find((r) => r.room_id === friend.ID)) {
			addRoom({ room_id: friend.ID, title: null, member_ids: [friend.ID] });
		}
		useChatStore.setState((s) => ({
			memberNames: { ...s.memberNames, [friend.ID]: friend.Username },
		}));
		switchRoom(friend.ID);
		openChat();
	}

	function handleUpdateFriendRequest(req, status, toastMessage) {
		handleFriendRequest(req.ID, status, setError).then(() => {
			setRequests((prev) => prev.filter((r) => r.ID !== req.ID));
			if (status === "granted") setFriends((prev) => [...prev, req]);
			toast.success(toastMessage);
		});
	}

	function handleConfirm() {
		const { friend, action } = confirm;
		const status = action === "block" ? "blocked" : "rejected";
		handleFriendRequest(friend.ID, status, setError).then(() => {
			setFriends((prev) => prev.filter((f) => f.ID !== friend.ID));
			toast.success(action === "block" ? `${friend.Username} a été bloqué.` : `${friend.Username} supprimé de votre liste d'amis.`);
			setConfirm(null);
		});
	}

	const received = requests.filter(r => r.CreatedBy === r.ID);
	const sent     = requests.filter(r => r.CreatedBy !== r.ID);

	return (
		<div className="flex flex-col h-full">
			<div className="relative flex w-full justify-between">
				<h2 className="pl-6 pt-2 text-2xl font-bold">Gestionnaire d'amis</h2>
			</div>

			<div className="border-t border-whiteW_20 mt-6" />

			{/* Demandes reçues */}
			{received.length > 0 && (
				<div className="flex flex-col mt-6 mb-4 border-b border-whiteW_20 pb-4">
					<h3 className="pl-6 text-sm font-semibold text-whiteW_50 uppercase mb-2">
						{received.length === 1 ? "Demande d'ami reçue" : "Demandes d'amis reçues"}
					</h3>
					{received.map((req) => (
						<div key={req.ID} className="flex items-center rounded-xl hover:bg-whiteW_20 px-3 py-2 mb-1">
							<Avatar user={req} size={50} />
							<span className="text-lg font-medium ml-4 flex-1">{req.Username}</span>
							<div className="flex gap-4">
								<UserRoundCheck
									size={30}
									className="cursor-pointer text-greenW hover:text-greenWHv"
									onClick={() => handleUpdateFriendRequest(req, "granted",  "Demande d'amis acceptée!")}
								/>
								<UserRoundX
									size={30}
									className="cursor-pointer text-redW hover:text-redWHv"
									onClick={() => handleUpdateFriendRequest(req, "rejected", "Demande d'amis déclinée!")}
								/>
							</div>
						</div>
					))}
				</div>
			)}

			{/* Demandes envoyées */}
			{sent.length > 0 && (
				<div className="flex flex-col mt-6 mb-4 border-b border-whiteW_20 pb-4">
					<h3 className="pl-6 text-sm font-semibold text-whiteW_50 uppercase mb-2">
						{sent.length === 1 ? "Demande d'ami envoyée" : "Demandes d'amis envoyées"}
					</h3>
					{sent.map((req) => (
						<div key={req.ID} className="flex items-center rounded-xl hover:bg-whiteW_20 px-3 py-2 mb-1">
							<Avatar user={req} size={50} />
							<span className="text-lg font-medium ml-4 flex-1">{req.Username}</span>
							<div className="flex gap-4">
								<UserRoundX
									size={30}
									className="cursor-pointer text-redW hover:text-redWHv"
									onClick={() => handleUpdateFriendRequest(req, "rejected", "Demande d'amis annulée!")}
								/>
							</div>
						</div>
					))}
				</div>
			)}

			{/* Liste des amis */}
			{friends.length > 0 && (
				<div className="flex flex-col mt-6">
					<h3 className="pl-6 text-sm font-semibold text-whiteW_50 uppercase mb-2">
						{friends.length === 1 ? "Ami" : "Amis"}
					</h3>
					{friends.map((friend) => (
					<div key={friend.ID} className="flex items-center rounded-xl hover:bg-whiteW_20 px-3 py-2 mb-1">
						<Avatar user={friend} size={60}/>
						<span className="text-lg font-medium ml-4 flex-1">{friend.Username}</span>
						<div className="flex items-center gap-3">
							<Button
								variant="iconCircle"
								title="Envoyer un message"
								onClick={() => openDm(friend)}
							>
								<MessageCircle fill="currentColor" className="text-transparent stroke-redW hover:stroke-redWHv hover:text-redWHv transition-colors" />
							</Button>
							<Button
								variant="iconPlay"
								title="Bloquer"
								onClick={() => setConfirm({ friend, action: "block" })}
							>
								<ShieldX size={26}/>
							</Button>
							<Button
								variant="iconPlay"
								title="Supprimer"
								onClick={() => setConfirm({ friend, action: "remove" })}
							>
								<UserRoundX size={26}/>
							</Button>
						</div>
					</div>
					))}
				</div>
			)}

			{/* Popup confirmation */}
			<Dialog.Root open={!!confirm} onOpenChange={(open) => { if (!open) setConfirm(null); }}>
				<Dialog.Portal>
					<Dialog.Overlay className="fixed inset-0 z-[9999] bg-blackW/50 backdrop-blur-sm" />
					<Dialog.Content
						className="fixed left-1/2 top-1/2 z-[9999] -translate-x-1/2 -translate-y-1/2 bg-blackW text-whiteW border border-redW rounded-card p-6 space-y-4 w-80"
						onClick={(e) => e.stopPropagation()}
					>
						<Dialog.Title className="text-lg font-semibold">Êtes-vous sûr ?</Dialog.Title>
						<Dialog.Description className="text-sm text-whiteW_50">
							{confirm?.action === "block"
								? `Bloquer ${confirm?.friend?.Username} ?`
								: `Supprimer ${confirm?.friend?.Username} de votre liste d'amis ?`
							}
						</Dialog.Description>
						<div className="flex justify-end gap-2 pt-2">
							<Button variant="returnBT" onClick={() => setConfirm(null)}>Annuler</Button>
							<Button variant="primaryBT" onClick={handleConfirm}>Confirmer</Button>
						</div>
					</Dialog.Content>
				</Dialog.Portal>
			</Dialog.Root>

		</div>
	);
}
