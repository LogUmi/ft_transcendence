// src/App.jsx
import {
  Routes,
  Route,
  Navigate,
  useNavigate,
} from "react-router-dom";
import { Suspense, lazy, useEffect } from "react";
import { useAuthStore } from "./store/authStore";
import { Toaster } from "sonner";
import { AudioProvider } from "./ui/layout/AudioProvider.jsx";
import { AppHeader, AppFooter, AppLayout } from "./ui/layout/AppShell.jsx";

// Auth
const Login          = lazy(() => import("./pages/Login.jsx"));
const Register       = lazy(() => import("./pages/Register.jsx"));
const TermsPage      = lazy(() => import("./pages/TermsPage.jsx"));
const PrivacyPage    = lazy(() => import("./pages/PrivacyPage.jsx"));

// Accueil
const Home           = lazy(() => import("./pages/Home.jsx"));
const MusicTab       = lazy(() => import("./pages/tabs/HomeTabs/MusicTab.jsx"));
const PodcastsTab    = lazy(() => import("./pages/tabs/HomeTabs/PodcastsTab.jsx"));

// Tops
const TopsPage       = lazy(() => import("./pages/TopsPage.jsx"));
const TopsMusicTab   = lazy(() => import("./pages/tabs/TopsTabs/TopsMusicTab.jsx"));
const TopsPodcastsTab = lazy(() => import("./pages/tabs/TopsTabs/TopsPodcastsTab.jsx"));

// Musique
const Track          = lazy(() => import("./pages/Track.jsx"));
const Collection     = lazy(() => import("./pages/Collection.jsx"));
const Genre          = lazy(() => import("./pages/Genre.jsx"));
const Artist         = lazy(() => import("./pages/Artist.jsx"));
const ArtistDetail   = lazy(() => import("./pages/ArtistDetail.jsx"));

// Bibliothèque
const TrackLiked     = lazy(() => import("./pages/LikeTrack.jsx"));
const History        = lazy(() => import("./pages/History.jsx"));
const Playlist       = lazy(() => import("./pages/PlaylistPage.jsx"));
const ListPlaylists  = lazy(() => import("./pages/PlaylistsManager.jsx"));
const SearchPage     = lazy(() => import("./pages/SearchPage.jsx"));

// Utilisateur
const Profile        = lazy(() => import("./pages/Profile.jsx"));
const ProfileUsers   = lazy(() => import("./pages/ProfileUsers.jsx"));
const Friends        = lazy(() => import("./pages/Friends.jsx"));

// Admin
const Admin          = lazy(() => import("./pages/Admin.jsx"));

function ProtectedRoute({ children }) {
  const isAuth = useAuthStore((state) => state.isAuthenticated);
  if (!isAuth) return <Navigate to="/login" replace />;
  return children;
}

export default function App() {
  const logout = useAuthStore((state) => state.logout);
  const navigate = useNavigate();

  useEffect(() => {
    const handleStorage = (e) => {
      if (e.key === "token" && !e.newValue) {
        logout();
        navigate("/login");
      }
    };
    window.addEventListener("storage", handleStorage);
    return () => window.removeEventListener("storage", handleStorage);
  }, [logout, navigate]);

  return (
    <AudioProvider>
      <Toaster
        position="top-right"
        richColors
        offset={88}
        toastOptions={{ style: { width: "fit-content" } }}
      />
      <div className="flex flex-col h-screen">
        <AppHeader />
        <div className="flex-1 overflow-hidden">
          <Suspense
            fallback={
              <div className="h-screen flex items-center justify-center text-whiteW bg-blackW text-sm">
                Chargement…
              </div>
            }
          >
            <Routes>
              {/* Routes sans layout */}
              <Route path="/login"    element={<Login />} />
              <Route path="/register" element={<Register />} />
              <Route path="/terms"    element={<TermsPage />} />
              <Route path="/privacy"  element={<PrivacyPage />} />

              {/* Routes avec layout persistant */}
              <Route element={<AppLayout />}>
                <Route path="/" element={<Navigate to="/home" replace />} />

                {/* Section Home */}
                <Route path="/home" element={<Home />}>
                  <Route index element={<MusicTab />} />
                  <Route path="podcasts" element={<PodcastsTab />} />
                </Route>

                {/* Section Tops */}
                <Route path="/tops" element={<ProtectedRoute><TopsPage /></ProtectedRoute>}>
                  <Route index element={<TopsMusicTab />} />
                  <Route path="podcasts" element={<TopsPodcastsTab />} />
                </Route>

                {/* Autres pages */}
                <Route path="/collections/:id"      element={<ProtectedRoute><Collection /></ProtectedRoute>} />
                <Route path="/genre/:id"            element={<ProtectedRoute><Genre /></ProtectedRoute>} />
                <Route path="/playlist/:playlistID" element={<ProtectedRoute><Playlist /></ProtectedRoute>} />
                <Route path="/tracks/:trackID"      element={<ProtectedRoute><Track /></ProtectedRoute>} />
                <Route path="/artists/:creatorID"   element={<ProtectedRoute><ArtistDetail /></ProtectedRoute>} />
                <Route path="/artist"               element={<Artist />} />
                <Route path="/profile"              element={<ProtectedRoute><Profile /></ProtectedRoute>} />
                <Route path="/profileUsers/:id"     element={<ProtectedRoute><ProfileUsers /></ProtectedRoute>} />
                <Route path="/friends"              element={<ProtectedRoute><Friends /></ProtectedRoute>} />
                <Route path="/playlist-manager"     element={<ProtectedRoute><ListPlaylists /></ProtectedRoute>} />
                <Route path="/history"              element={<ProtectedRoute><History /></ProtectedRoute>} />
                <Route path="/search"               element={<ProtectedRoute><SearchPage /></ProtectedRoute>} />
                <Route path="/tracksLiked"          element={<ProtectedRoute><TrackLiked /></ProtectedRoute>} />
                <Route path="/admin"                element={<ProtectedRoute><Admin /></ProtectedRoute>} />
              </Route>
            </Routes>
          </Suspense>
        </div>
        <AppFooter />
      </div>
    </AudioProvider>
  );
}
