import { Outlet, useLocation } from "react-router-dom";
import { useUIStore } from "../../store/uiStore";
import { usePlayerStore } from "../../store/playerStore";
import { PlayerBar } from "./PlayerBar.jsx";
import { Sidebar } from "./SideBar";
import Chat from "../components/Chat";
import { NotificationBell } from "../components/NotificationBell";
import { Menu } from "lucide-react";
import LogoLinkHome from "../components/LogoLinkHome";

export function AppHeader() {
  const location = useLocation();
  const hiddenOnRoutes = ["/login", "/register"];
  if (hiddenOnRoutes.includes(location.pathname)) return null;
  const toggleMobileSidebar = useUIStore((s) => s.toggleMobileSidebar);
  return (
    <header className="sm:hidden relative flex items-center px-4 py-1.5 bg-blackSBW text-whiteW shrink-0 border-b border-whiteW_20">
      <button
        onClick={toggleMobileSidebar}
        className="p-1 text-whiteW_70 hover:text-whiteW transition-colors shrink-0"
        title="Menu"
      >
        <Menu size={22} />
      </button>
      <div className="absolute left-1/2 -translate-x-1/2 flex flex-col items-center leading-none">
        <LogoLinkHome size="text-[32px]" />
        <span className="font-mono text-[9px] uppercase tracking-[0.10em] text-whiteW_50 -mt-1">
          Music Streaming
        </span>
      </div>
    </header>
  );
}

export function AppLayout() {
  const { mobileSidebarOpen, closeMobileSidebar } = useUIStore();
  return (
    <div className="h-full bg-blackW text-whiteW font-sans">
      <div className="h-full grid grid-cols-1 sm:grid-cols-[240px_1fr]">
        <aside className="hidden sm:block h-full overflow-hidden bg-blackSBW text-whiteW p-4 rounded-r-2xl relative z-0">
          <Sidebar />
        </aside>
        <main className="overflow-y-auto p-4 sm:p-6 h-full relative z-10">
          <Outlet />
        </main>
      </div>
      {mobileSidebarOpen && (
        <div className="sm:hidden fixed inset-0 z-[60]">
          <div className="absolute inset-0 bg-black/50" onClick={closeMobileSidebar} />
          <aside className="absolute left-0 top-0 bottom-0 w-[240px] bg-blackSBW text-whiteW p-4 overflow-y-auto">
            <Sidebar />
          </aside>
        </div>
      )}
      <div className="fixed top-4 right-4 z-50">
        <NotificationBell />
      </div>
      <div className="fixed top-4 right-20 z-50">
        <Chat />
      </div>
    </div>
  );
}

export function AppFooter() {
  const location = useLocation();
  const currentTrack = usePlayerStore((s) => s.currentTrack);
  const hiddenOnRoutes = ["/login", "/register"];
  if (hiddenOnRoutes.includes(location.pathname)) return null;
  if (!currentTrack) return null;
  return (
    <footer className="bg-blackW text-whiteW p-3 border-t border-whiteW_20 shrink-0">
      <PlayerBar />
    </footer>
  );
}
