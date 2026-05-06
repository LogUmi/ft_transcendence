*This project has been created as part of the 42 curriculum by lefoffan, lgerard, qbarron, badal-la, tle-saut.*

# Wave 🌊

> A music streaming platform built as our `ft_transcendence` final Common Core project.

---

## Table of Contents

- [Description](#description)
- [Team Information](#team-information)
- [Project Management](#project-management)
- [Technical Stack](#technical-stack)
- [Database Schema](#database-schema)
- [Features List](#features-list)
- [Modules](#modules)
- [Individual Contributions](#individual-contributions)
- [Instructions](#instructions)
- [Resources](#resources)

---

## Description

**Wave** is a music streaming web application, think Spotify, Apple Music or Deezer, but with a stronger emphasis on social interactions on top of the streaming experience.

Beyond the standard music playback, Wave lets users:

- Build a friend network with full friend-request lifecycle (pending / accepted / rejected / blocked).
- Communicate in **real time**, both through a global public chatroom and through private messaging restricted to friends.
- Receive live **notifications** for friend requests, messages, and other relevant events.
- Browse a catalogue sourced from **Internet Archive** and enriched via **MusicBrainz**, with a smart search bar and a personalised home page powered by recommendations.

The goal was to combine streaming, social features, and a clean modern UI into a single coherent web app, and to learn an entirely new stack along the way.

---

## Team Information

| Member       | Login      | Role(s)                | Main Responsibilities                                                                                                                                                            |
| ------------ | ---------- | ---------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **Quentin**  | `qbarron`  |    Tech Lead       | Came up with the original idea. Researched the stack, the difficulty, and the external tools to use. Maintained the product vision and validated completed work.                |
| **Bastien**  | `badal-la` | Product Owner              | Designed and built the frontend, which in turn drove the backend handler design. Made the major architectural and technology choices and reviewed critical code changes.        |
| **Loïc**     | `lgerard`  | Project Manager + Dev  | Owned the database from end to end (design, documentation, Docker setup). Handled Internet Archive scraping, sourcing, then moved to backend (home recommendations, etc.).      |
| **Léon**     | `lefoffan` | Developer              | Built the friend system, the notification system, and the full chat (public room + private messaging between friends), all over WebSockets.                                     |
| **Thomas**   | `tle-saut` | Developer              | Frontend API integration, parts of the UI (chat, notifications), search bar, and various frontend features.                                                                     |

---

## Project Management

From day one we held team meetings to align on the vision, the technologies to learn, and the way we'd organise the work. We initially set up **weekly meetings on Tuesdays and Fridays**, then transitioned, around the middle of the project, into working together more or less continuously, either in person or on Discord. In-person work always felt the most productive.

**Coordination tools:**

- **Discord**, the main communication channel and the way to involve members joining remotely.
- **AI-generated spreadsheets**, used for backlog tracking, role distribution, and feature planning. We deliberately avoided paid or overly complex project-management tools; lightweight pre-filled spreadsheets were more than enough for a 5-person team.
- **Git**, clear commit messages and a feature-branch workflow with reviews on critical changes.


---

## Technical Stack

| Layer                   | Tech                | Why                                                                                                              |
| ----------------------- | ------------------- | ---------------------------------------------------------------------------------------------------------------- |
| **Frontend framework**  | **React**           | Best ratio of simplicity, polish, and development speed for our team.                                            |
| **Backend framework**   | **Gin (Go)**        | Lightweight, performant, and conceptually close to what we already knew.                                         |
| **Database**            | **PostgreSQL**      | Mature, reliable relational DB; perfect fit for a schema with strong relations between users, tracks, playlists. |
| **ORM**                 | **GORM**            | The de-facto Go ORM, with good PostgreSQL support and clean migration tooling.                                   |
| **Cache / pub-sub**     | **Redis**           | In-memory cache and helper for real-time concerns.                                                               |
| **Search engine**       | **Meilisearch**     | Provides the smart, typo-tolerant search bar with sub-100 ms responses.                                          |
| **Reverse proxy**       | **Caddy**           | Single-config, automatic HTTPS, simple to drop in front of the stack.                                            |
| **Containers**          | **Docker / Compose**| Required by the subject, and a stack we already knew.                                                            |
| **WebSocket library**   | **Gorilla**         | Battle-tested WebSocket implementation for Go; greatly simplified the real-time work.                            |
| **Auth**                | **JWT + Google OAuth 2.0** | Stateless auth tokens for the API + standard remote authentication option.                              |

All credentials and environment-specific values live in a local `.env` file (ignored by Git); a documented `.env.example` is provided.

---

## Database Schema

The full technical specifications of the database are provided as a separate document in [README_DB.md](README_DB.md).

---

## Features List

| Feature                                  | Owner(s)                       | Description                                                                                  |
| ---------------------------------------- | -------------------            | -------------------------------------------------------------------------------------------- |
| Music streaming & player                 | Loïc, Bastien                  | Audio streaming from Internet Archive sources, queue, like, playlist loop, random playback.  |
| Home page recommendations                | Loïc, Bastien                  | Personalised feed based on listening history and likes.                                      |
| Smart search bar                         | Thomas, Quentin                | Meilisearch-powered, typo-tolerant search across tracks, creators, collections.              |
| Authentication (email + Google OAuth)    | Quentin, Bastien               | Salted hashed passwords + remote auth via Google OAuth 2.0.                                  |
| User profiles                            | All                            | View / edit profile, avatar upload with default fallback, online status.                     |
| Friend system                            | Léon, Thomas, Bastien          | Add / accept / reject / block, friends list, online status, integrated with chat & notifs.   |
| Real-time chat, public                  | Léon, Thomas                   | Single global channel, message persistence, real-time broadcast over WebSocket.              |
| Real-time chat, private                 | Léon, Thomas                   | Direct messaging restricted to mutual friends only.                                          |
| Notification system                      | Léon, Thomas, Bastien                   | Tracked real-time notifications for social events, plus transient UI toasts for other events. |
| Playlists                                | Loïc, Bastien, Quentin         | Create, edit, delete, reorder; public/private; like tracks.                                  |
| Listening history & analytics            | Loïc, Bastien, Quentin, Thomas | Per-user history with play/skip/complete tracking.                                           |
| Catalogue scraping                       | Loïc                           | Internet Archive scraper + MusicBrainz sourcing pipeline.                                    |
| Permissions & roles                      | Bastien, Loïc, Thomas, Leon    | `admin / owner / user` roles with role-based UI and route protection.                    |
| Privacy Policy & Terms of Service        | Bastien                        | Real, project-specific content accessible from the footer.                                   |

---

## Modules

**Total points selected: 19** (mandatory threshold: 14; extra modules are included as a safety margin).

### Major modules (2 pts each)

| Module                                              | Pts | Owner          | Notes                                                                                          |
| --------------------------------------------------- | --- | -------------- | ---------------------------------------------------------------------------------------------- |
| Use a framework for both frontend and backend       | 2   | All  | React (frontend) + Gin (backend).                                                              |
| Real-time features (WebSockets)                     | 2   | Léon, Thomas           | Public chat, private chat, notifications all over a single WS architecture (Gorilla).          |
| User interaction (chat + profile + friends)         | 2   | All | All three minimum requirements covered: basic chat, profile, friends.                  |
| Standard user management & authentication           | 2   | All  | Profile edit, avatar upload, friends, online status, profile pages.                            |
| Advanced permissions system                         | 2   | All  | CRUD on users + roles (`admin / owner / user`) with role-based views and actions.          |
| Custom module, Music streaming platform            | 2   | All | See [justification](#custom-module-justification) below.                                       |

### Minor modules (1 pt each)

| Module                                          | Pts | Owner          | Notes                                                                            |
| ----------------------------------------------- | --- | -------------- | -------------------------------------------------------------------------------- |
| Frontend framework (React)                      | 1   | Bastien, Thomas        | Counted on top of the major above per the subject's structure.                   |
| Backend framework (Gin)                         | 1   | Loïc, Quentin, Leon           | Same as above.                                                                   |
| ORM (GORM)                                      | 1   | Loïc, Quentin, Leon           | All DB access goes through GORM.                                                 |
| Notification system                             | 1   | Léon, Thomas   | Tracked real-time notifications for social events, complemented by transient UI toasts. |
| Additional browsers                             | 1   | All | Tested and working on Firefox + Edge in addition to Chrome.                     |
| OAuth 2.0 (Google)                              | 1   | Quentin           | Full sign-up / sign-in flow.                                                     |
| User activity analytics dashboard               | 1   | Loïc, Thomas, Bastien           | Listening stats, play counts, skip rates, completion rates.                      |

### Module implementation details

- **Use a framework for both frontend and backend**: the frontend is built with React and the backend with Gin. React structures the single-page application and reusable UI, while Gin exposes the HTTP API and WebSocket endpoints.
- **Real-time features**: public chat, private messages, online status, and notifications are delivered through WebSockets using Gorilla. Connected clients receive updates without refreshing the page.
- **User interaction**: users can view profiles, manage friends, and communicate through public and private chat.
- **Standard user management and authentication**: users can register, log in, update their profile, upload an avatar, view profile pages, add friends, and see friends' online status.
- **Advanced permissions system**: `admin / owner / user` roles control access to protected views and actions, including user and track management.
- **Custom module, Music streaming platform**: the application includes music catalogue ingestion, playback, queues, playlists, likes, listening history, search, and recommendations.
- **Frontend framework**: React is used for the full client application, including routing, state-driven views, and reusable components.
- **Backend framework**: Gin is used to organize the backend routes, middleware, authentication-protected handlers, and WebSocket upgrade endpoints.
- **ORM**: GORM maps the PostgreSQL schema to Go models and is used for database queries and migrations.
- **Notification system**: users receive tracked real-time notifications through the WebSocket layer for events that require follow-up, such as friend requests and messages. Other application events use transient UI toasts when persistence or read/unread tracking is not needed.
- **Additional browsers**: the application was tested on Firefox and Edge in addition to the latest stable version of Google Chrome.
- **OAuth 2.0**: Google OAuth 2.0 is implemented as an additional remote sign-up and sign-in method.
- **User activity analytics dashboard**: listening history is stored and used to display user activity insights such as play counts, skip rates, completion rates, and listening trends.

### Custom module justification

**Why we chose this module.** Pong-and-tournament is the canonical `ft_transcendence` example, but our team explicitly wanted to step outside that comfort zone and build something we could *actually use* afterwards. A music streaming platform fits the spirit of the subject ("Surprise. … tasks you have never done before") much better than a game we already understood.

**Technical challenges it addresses.** Streaming media reliably is non-trivial: it requires a serving strategy (range requests, buffering, transcoding decisions), a queue / playback state machine that survives reloads, a sourcing pipeline (Internet Archive scraping + MusicBrainz enrichment), and a recommendation system that uses listening history without becoming intrusive. None of these problems exist in a Pong project.

**How it adds value.** The streaming core is what every other feature in the project plugs into, chat, friends, notifications, profiles, history, recommendations all gain meaning because there is *something to share and react to*. It also forced us to deal with real-world DB design (likes, queues, histories, playlists, collections, creators, genres) at a scale a toy project wouldn't reach.

**Why it deserves Major status.** The streaming module touches every layer (data ingestion, schema, backend streaming, frontend player, search indexation, recommendations), is the largest single piece of the project in terms of code and design effort, and is what makes the rest of Wave coherent rather than being a generic chat-and-friends app.

---

## Individual Contributions

### Léon (`Zoldinn`), Developer
Owned the **WebSocket layer** (public chat, private messaging, notifications) and the **friend system**.

> *Coming in, I had to learn how the web works at all, how Gin handlers are structured, where my code should live, what's reusable across HTTP and WebSockets. I started the WebSocket work fairly early and spent a long time iterating: I'd write something, realise it didn't fit my mental model of how a chat or notification stream should be wired, scrap it, try a different architecture, then come back to it. At one point I switched to writing two regular Gin API handlers, found they weren't right either, and went back to the WebSocket, but this time with a much more complete picture in my head. The architecture phase was hard; once it was clear, the implementation followed.*
>
> *After the WebSocket I moved to API handlers for the friend system. That meant another learning curve: GORM best practices, what to validate, how to keep handlers thin. Then came the cross-feature logic, for example, restricting private messages to mutual friends. We had originally imagined a much more elaborate set of relationships between features, but with the deadline in sight we deliberately scaled it down to something we could finish well rather than half-build.*

### Thomas (`3scrobar`), Developer
> *My first major task was building the integration layer between the React frontend and the Go backend: the `api.ts`, `handle.ts`, and `type.ts` files under `services/APIFRONT/`. That was the mandatory starting point, without it, nobody could wire a page to real data. I had to model all the TypeScript types matching the Go structs on the backend side, write the fetch calls, and expose reusable handlers for the rest of the team. It forced me to understand the full API surface very early on, which made everything that came after significantly faster.*
>
> *From that foundation I took ownership of several frontend features: the Meilisearch-powered search bar, the admin page (user and track management, including the corresponding backend handlers), and the friends page with its DM integration, so you can open a private chat directly from the friends list. I also worked with Léon on the WebSocket service on the frontend side, connecting real-time events to the Zustand stores for notifications and chat. That part required understanding exactly how data flows from the server all the way down to the UI.*
>
> *Towards the end of the project I handled a spread of cross-cutting improvements: session persistence on network loss, mobile support for the sidebar, fixes on track likes, and various interface adjustments. That phase taught me that polish takes longer than expected, and that the stability of a feature often depends on details you only discover through real use.*

### Bastien (`Bastien-32`), Product Owner

> *The beginning of the project was problematic because I wanted to learn both Go and React (Tailwind, JavaScript) simultaneously. This created confusion between the two languages when I started working on my part. Once this difficulty was overcome, the first page mockups were created quite smoothly, with simple renderings to define the API contracts to be created with the backend and establish the site's design.*
>
> *The next phase was quite frustrating. On the frontend, I hesitated to create new pages until the first backend handlers were ready, wanting to ensure that the connection between the two was working correctly. `useEffect` was the most complex to grasp, unlike `Zustand`, whose logic was easy to understand. The most stimulating part for me was implementing the player bar buttons and managing the retrieval of statistical data on the tracks played. The end of the project was more enjoyable to complete knowing what I had to send and expect in return from my colleagues on the back end to implement the last pages/features.*
>
> *One minor drawback was that we had to abandon some of the initially planned features (blind testing) along the way because some project members had to leave for work-study programs/internships. This allowed us to focus on the essentials and minimize guesswork due to time constraints.*

### Loïc (`LogUmi`), Project Manager + Developer
> *At the beginning of the project, my main responsibility was to structure the database and make it usable by the whole team. I designed the schema around users, tracks, playlists, listening histories, likes, creators, collections, genres, chat channels, friends, and roles, then documented the relationships so the backend and frontend work could move forward with a shared model. I also worked on the Docker/PostgreSQL setup and migrations, because the project quickly became too relational to improvise the data layer later.*
>
> *The most research-heavy part for me was the music catalogue. I built the sourcing pipeline around Internet Archive and MusicBrainz: finding usable audio files, keeping source URLs and licences, extracting metadata, and turning all of that into data we could actually seed into PostgreSQL. That part was harder than expected because real music metadata is messy, inconsistent, and full of edge cases. It also forced me to think about the project less like a school demo and more like a real streaming application, where attribution, duration, covers, collections, and creators all matter.*
>
> *Once the database and catalogue foundations were in place, I moved into backend and product integration work: recommendations on the home page, listening history, analytics data, playlists, roles, and pieces of the streaming/player logic with Bastien and Quentin. As project manager, I also tried to keep the group aligned on scope, split the work between people, follow what was blocked, and help reduce features when the deadline made the original plan too ambitious. The main lesson for me was that architecture is useful only if it helps the team move faster afterwards; otherwise it just becomes another thing to maintain.*

### Quentin (`Sul-iac`), Tech Lead
> *Before everyone started, I already had setted up the project. I started with the barebone of any projects: the architecture. I did have to research every techno that we should use: what kind of DB to stock our data, both front-end and back-end framework: React, Zustand, Tailwind for the front end aspect, GO, GIN, GORM, for backend.*
>
> *Then, my role was to do the most part of the backend handlers: the bridge between the frontend and the DB. FIrst of all, having the draft of the main handler was the best start. The basic functionality as for the Login, Register, albums (or collections), and then the Middleware and JWT. After all of this was done, it was try-and-retry only, going with the flow, what we should implement next (because like every project there is always things coming in). The trick was to understand the use of both Gin ans Gorm, how to use both of them together, how Gorm works with the data base, and how not to mess it all.*

---

## Instructions

### Prerequisites

- **Make**
- **Docker** (with Docker Compose v2)

### Run

```bash
# 1. Clone the repository
git clone <repo-url> wave
cd wave

# 2. Copy and fill the environment file
cp .env.example .env
# → fill in DB credentials, JWT secret, Google OAuth client ID/secret, Meilisearch master key, etc.

# 3. Launch the stack
make dev
```

The site is then served on:

> **https://localhost:8443**

`make dev` brings up: PostgreSQL, Redis, Meilisearch, the Gin backend, the React frontend (built and served by Caddy), and Caddy as the HTTPS reverse proxy. Everything runs with a single command, as required by the subject.

### Useful Make targets

| Target           | What it does                                |
| ---------------- | ------------------------------------------- |
| `make dev`       | Build + start the full stack in dev mode.   |
| `make down`      | Stop and remove all containers.             |
| `make up`      | Start and create all containers.             |
| `make clean`     | Clean Docker volumes and build artefacts.   |
| `make rebuild`        | Full clean + rebuild + restart.             |

---

## Resources

### Documentation & references

- [Gin documentation](https://gin-gonic.com/docs/), backend framework
- [Gin website](https://gin-gonic.com/)
- [Gorilla WebSocket](https://pkg.go.dev/github.com/gorilla/websocket)
- [GORM documentation](https://gorm.io/docs/)
- [React documentation](https://react.dev/)
- [Docker Compose](https://docs.docker.com/compose/)
- [golang-jwt/jwt](https://github.com/golang-jwt/jwt)
- [Internet Archive](https://archive.org/), primary catalogue source
- [MusicBrainz](https://musicbrainz.org/), metadata enrichment

### AI usage

We used AI assistance throughout the project, transparently and as a productivity tool, not as a substitute for understanding. Concretely:

- **Research & rephrasing**, quickly finding documentation pointers, rephrasing technical ideas, and accelerating repetitive tasks.
- **Architecture discussions**, talking through tricky pieces of architecture (especially in the WebSocket layer, the recommendation logic, and a few DB design questions) when we were struggling to picture the structure.
- **Debugging**, as a second pair of eyes when we were truly stuck.
- **Project management**, generating spreadsheet templates for backlogs and feature tracking, so we only had to fill them in instead of paying for or learning a heavier tool.

In line with the subject's AI guidelines, every AI suggestion was reviewed, tested, and discussed among peers before being integrated. We can explain, defend, and modify every part of the code we shipped, including the parts where AI helped us get unstuck.

---

### Known limitations

- Initial cross-feature logic between chat and the friend system was deliberately simplified late in the project to ship a polished version of each rather than a half-finished integrated one.
- The catalogue is bounded by what we scraped from Internet Archive at build time; live ingestion of new content is not in scope.

### License & credits

42 school project, Common Core. Catalogue data sourced from Internet Archive (under their respective licenses) and MusicBrainz (CC0 / CC BY-NC-SA depending on the field).
