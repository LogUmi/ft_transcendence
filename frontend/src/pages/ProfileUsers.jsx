import { useState, useEffect, useRef } from "react";
import { useNavigate, useParams } from "react-router-dom";
import { handleGetFriendRelation, handleGetUser, handleFriendRequest } from "../services/APIFRONT/handle";
import { Avatar } from "../ui/components/Avatar";
import { Button } from "../ui/primitives/Button";
import {
	UserRoundCheck,
	UserRoundPlus,
	UserRoundX,
	Clock,
	UserCheck,
	ShieldOff,
	Ban,
} from "lucide-react";
import { useAuthStore } from "../store/authStore";
import { useNotificationStore } from "../store/notificationStore";

function ProfileUsers() {
	const navigate = useNavigate();
	const [user, setUser] = useState();
	const [friendRelation, setFriendRelation] = useState();
	const [error, setError] = useState();
	const { id } = useParams();
	const userIDconnected = useAuthStore((state) => state.user?.ID);
	const { notifications, removeNotification } = useNotificationStore();
	const lastNotifRef = useRef(notifications[0] ?? null);

	function removeFriendRequestNotif(fromUserId) {
		const notif = notifications.find(
			(n) => n.kind === "friend_request" && n.meta?.from_user_id === Number(fromUserId)
		);
		if (notif) removeNotification(notif.id);
	}

	useEffect(() => {
		handleGetUser(id, setUser, setError);
		handleGetFriendRelation(id, setFriendRelation, setError)
	}, [id]);

	useEffect(() => {
		const last = notifications[0];
		const friendKinds = ["friend_request", "friend_accept", "friend_rejected", "friend_removed", "friend_blocked"];
		if (last && last !== lastNotifRef.current && friendKinds.includes(last.kind)) {
			lastNotifRef.current = last;
			handleGetFriendRelation(id, setFriendRelation, setError);
		}
	}, [notifications]);

	if (userIDconnected === Number(id)) {
		navigate("/profile");
	}
	
	let relationActions;
	switch (friendRelation?.RequestStatus) {
		case "pending":
			if (friendRelation.CreatedBy === Number(id)) {
				relationActions = (
					<div className="flex gap-4">
						<Button
							variant="iconGreen"
							title="Accepter la demande d'ami"
							onClick={() => {
								setFriendRelation({ RequestStatus: "granted", CreatedBy: Number(id) });
								handleFriendRequest(id, "granted", setError).then(() => {
									removeFriendRequestNotif(id);
								});
							}}
						>
							<UserRoundCheck size={30} />
						</Button>
						<Button
							variant="iconRed"
							title="Refuser la demande d'ami"
							onClick={() => {
								setFriendRelation(null);
								handleFriendRequest(id, "rejected", setError).then(() => {
									removeFriendRequestNotif(id);
								});
							}}
						>
							<UserRoundX size={30} />
						</Button>
					</div>
				);
			} else {
				relationActions = (
					<div className="flex gap-4">
						<Button
							variant="iconRed"
							title="Annuler la demande d'ami"
							onClick={() => {
								handleFriendRequest(id, "rejected", setError)
								setFriendRelation(null)
							}}
						>
							<UserRoundX size={30} />
						</Button>
					</div>
				);
			}
			break;
		case "rejected":
			relationActions = (
				<Button
					variant="iconGreen"
					title="Refaire une demande d'ami"
					onClick={() => {
						handleFriendRequest(id, "pending", setError)
						setFriendRelation({ RequestStatus: "pending" })
					}}
				>
					<UserRoundPlus size={30} />
				</Button>
			);
			break;
		case "blocked":
			if (friendRelation.CreatedBy === userIDconnected) {
				relationActions = (
					<Button
						variant="iconGreen"
						title="Débloquer l'utilisateur"
						onClick={() => {
							handleFriendRequest(id, "rejected", setError)
							setFriendRelation(null)
						}}
					>
						<ShieldOff size={30} />
					</Button>
				);
			} else {
				relationActions = (
					<span className="flex items-center gap-2 text-red-500">
						<Ban size={30} />
						<span className="text-base">Vous avez été bloqué par {user?.Username}</span>
					</span>
				);
			}
			break;
		case "granted":
			relationActions = (
				<div className="flex gap-4">
					<Button
						variant="iconRed"
						title="Supprimer de la liste d'amis"
						onClick={() => {
							handleFriendRequest(id, "rejected", setError)
							setFriendRelation(null)
						}}
					>
						<UserRoundX size={30} />
					</Button>
					<Button
						variant="iconRed"
						title="Bloquer l'utilisateur"
						onClick={() => {
							handleFriendRequest(id, "blocked", setError)
							setFriendRelation({ RequestStatus: "blocked", CreatedBy: userIDconnected })
						}}
					>
						<Ban size={30} />
					</Button>
				</div>
			);
			break;
		default:
			relationActions = (
				<Button
					variant="iconGreen"
					title="Ajouter en ami"
					onClick={() => {
						handleFriendRequest(id, "pending", setError)
						setFriendRelation({ RequestStatus: "pending", CreatedBy: userIDconnected })
					}}
				>
					<UserRoundPlus size={30} />
				</Button>
			);
	}

	return (
		<div>
			<div className="flex items-center gap-2 min-w-0 overflow-hidden text-whiteW text-bold text-[45px]">
				<span className="truncate">Profil de {user?.Username}</span>
				{friendRelation?.RequestStatus === "granted" && (
					<span title="Vous êtes amis">
						<UserCheck size={40} className="text-green-500" />
					</span>
				)}
				{friendRelation?.RequestStatus === "pending" && friendRelation.CreatedBy === userIDconnected && (
					<span
						title="Demande en attente d'approbation"
						className="flex h-10 w-10 items-center justify-center rounded-full bg-orange-500 text-whiteW"
					>
						<Clock size={30} />
					</span>
				)}
			</div>
			{error && <p className="text-red-500">{error}</p>}
			<div className="flex flex-wrap justify-center items-center gap-8 px-10 py-10">
				<div className="flex justify-center">
					<Avatar user={user} size={120} />
				</div>
				<div className="flex flex-col gap-4 text-whiteW">
					<div className="flex flex-col gap-1">
						<span className="text-xs text-whiteW_50 uppercase whitespace-nowrap">
							Nom d'utilisateur
						</span>
						<span>{user?.Username}</span>
					</div>
					<div className="mt-2">{relationActions}</div>
				</div>
			</div>
		</div>
	);
}

export default ProfileUsers;
