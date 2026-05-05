# MFY Jumpick - Authentication Client

A modern authentication application built with Next.js, TypeScript, and shadcn/ui that integrates with a microservices backend.

## Features

- 🔐 **Secure Authentication**: JWT-based authentication with secure password handling the page
- 🎨 **Modern UI**: Beautiful interface built with shadcn/ui and Tailwind CSS
- 📱 **Responsive Design**: Works seamlessly on desktop and mobile devices
- 🔄 **Real-time State Management**: React Context for global state management
- 🛡️ **Protected Routes**: Automatic redirection for authenticated/unauthenticated users
- 🌙 **Dark Mode Support**: Built-in dark mode with system preference detections

## Tech Stack

- **Framework**: Next.js 15 with App Routers
- **Language**: TypeScript
- **Styling**: Tailwind CSS
- **UI Components**: shadcn/ui
- **State Management**: React Context API
- **HTTP Client**: Fetch API with custom wrapper

## Project Structure

```
client/
├── src/
│   ├── app/                    # Next.js App Router pages
│   │   ├── login/             # Login page
│   │   ├── register/          # Registration page
│   │   ├── dashboard/         # Protected dashboard
│   │   ├── layout.tsx         # Root layout with AuthProvider
│   │   └── page.tsx           # Landing page
│   ├── components/
│   │   └── ui/               # shadcn/ui components
│   ├── contexts/
│   │   └── AuthContext.tsx   # Authentication context
│   └── lib/
│       ├── api.ts            # API client
│       └── utils.ts          # Utility functions
├── public/                   # Static assets
└── package.json
```

## Getting Started

### Prerequisites

- Node.js 18+
- npm or yarn
- Backend services running (auth-service, api-gateway)

### Installation

1. **Clone the repository**

   ```bash
   git clone <repository-url>
   cd mfy-jumpick-PERN/client
   ```

2. **Install dependencies**

   ```bash
   npm install
   ```

3. **Set up environment variables**
   Create a `.env.local` file in the client directory:

   ```env
   NEXT_PUBLIC_API_URL=http://localhost:5001
   NEXT_PUBLIC_APP_NAME=MFY Jumpick Auth
   NEXT_PUBLIC_APP_VERSION=1.0.0
   ```

4. **Start the development server**

   ```bash
   npm run dev
   ```

5. **Open your browser**
   Navigate to [http://localhost:3000](http://localhost:3000)

## Available Scripts

- `npm run dev` - Start development server
- `npm run build` - Build for production
- `npm run start` - Start production server
- `npm run lint` - Run ESLint

## Pages

### Landing Page (`/`)

- Welcome screen for unauthenticated users
- Links to login and registration
- Feature overview

### Login (`/login`)

- Email and password authentication
- Form validation and error handling
- Redirects to dashboard on success

### Register (`/register`)

- User registration with name, email, and password
- Form validation and error handling
- Auto-login after successful registration

### Dashboard (`/dashboard`)

- Protected route requiring authentication
- Displays user information
- Logout functionality
- Quick action buttons

## API Integration

The application communicates with the backend through the API client in `src/lib/api.ts`:

- **Login**: `POST /auth/login`
- **Register**: `POST /auth/register`
- **Logout**: `POST /auth/logout`
- **Profile**: `GET /auth/profile`

## Authentication Flow

1. **Login/Register**: User submits credentials
2. **Token Storage**: JWT token stored in localStorage
3. **Context Update**: User state updated in AuthContext
4. **Route Protection**: Automatic redirection based on auth status
5. **API Calls**: Token included in Authorization header

## Styling

The application uses:

- **Tailwind CSS** for utility-first styling
- **shadcn/ui** for pre-built components
- **CSS Variables** for theming
- **Responsive design** with mobile-first approach

## Development

### Adding New Components

1. Use shadcn/ui CLI to add components:

   ```bash
   npx shadcn@latest add <component-name>
   ```

2. Import and use in your components:
   ```tsx
   import { Button } from "@/components/ui/button";
   ```

### State Management

- Use `useAuth()` hook for authentication state
- Local component state with `useState`
- Form state management with controlled inputs

### Error Handling

- API errors displayed in Alert components
- Form validation with HTML5 validation
- Loading states for better UX

## Deployment

### Build for Production

```bash
npm run build
npm run start
```

### Environment Variables

Set the following environment variables for production:

```env
NEXT_PUBLIC_API_URL=https://your-api-domain.com
NEXT_PUBLIC_APP_NAME=MFY Jumpick Auth
NEXT_PUBLIC_APP_VERSION=1.0.0
```

## Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Add tests if applicable
5. Submit a pull request

## License

This project is licensed under the MIT License.
<<<<<<< HEAD

### Environment Variables

Set the following environment variables for production:

```env
NEXT_PUBLIC_API_URL=https://your-api-domain.com
NEXT_PUBLIC_APP_NAME=MFY Jumpick Auth

```
