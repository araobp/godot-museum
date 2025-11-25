# Godot Museum

This project demonstrates how Gemini Live can be utilized to provide self-services within museum environments, offering an interactive and engaging experience for visitors.

## Experience the Gemini-Live-powered Museum!

Run this simulator on your PC/Mac:

=> [Musuem on GitHub Page](https://araobp.github.io/godot-museum/demo/)

Then scan the QR code with your smartphone's camera in the scene.

An web app will start when you click on the URL detected by your camera.

You will need your Gemini API key for the first time. Click on the key icon.

Enjoy!

## Project Structure

This project is composed of three main parts:

-   `godot/`: The Godot project that creates the 3D museum environment.
-   `app/`: A SvelteKit web application that serves as the interactive guide for the museum.
-   `blender/`: Contains the blender source files for the 3D models used in the Godot project.

## Getting Started

To run this project locally, you will need to set up the Godot project and the SvelteKit application.

### Prerequisites

-   [Godot Engine](https://godotengine.org/) (version 4.x)
-   [Node.js](https://nodejs.org/) (version 18.x or later)
-   [Blender](https://www.blender.org/) (optional, for editing 3D assets)

### Godot Museum

1.  Open the Godot Engine.
2.  Import the `godot/project.godot` file.
3.  Run the project from the Godot editor.

### SvelteKit App

1.  Navigate to the `app` directory:
    ```bash
    cd app
    ```
2.  Install the dependencies:
    ```bash
    npm install
    ```
3.  Run the development server:
    ```bash
    npm run dev
    ```

The SvelteKit application will be running on `http://localhost:5173`.

## Building the Project

### Godot

To export the Godot project for the web:

1.  In the Godot editor, go to `Project > Export...`.
2.  Select the `Web` preset.
3.  Click `Export Project` and choose the `docs/demo` directory as the output location.

### SvelteKit

To build the SvelteKit application:

1.  Navigate to the `app` directory.
2.  Run the build command:
    ```bash
    npm run build
    ```

The production-ready files will be in the `app/build` directory. For GitHub pages, the output is in `docs/live`.

## How it Works

The Godot museum simulation runs in a web browser. Inside the simulation, there are QR codes that can be scanned by a smartphone. These QR codes link to the SvelteKit web application, which provides more information about the exhibits. The web application uses Gemini Live to provide an interactive and conversational experience.
