# Godotミュージアム

このプロジェクトは、Gemini Live を活用して美術館環境でセルフサービスを提供し、来館者にインタラクティブで魅力的な体験をどのように提供できるかを示します。

## Gemini Live搭載のミュージアMを体験しよう！

PC/Macでこのシミュレーターを実行してください。

=> [GitHub Pageでミュージアムを見る](https://araobp.github.io/godot-museum/demo/)

次に、シーン内でスマートフォンのカメラでQRコードをスキャンしてください。

カメラで検出されたURLをクリックすると、ウェブアプリが起動します。

初回はGemini APIキーが必要です。キーアイコンをクリックしてください。

お楽しみください！

## プロジェクト構成

このプロジェクトは主に3つの部分で構成されています。

*   `godot/`: 3D美術館環境を構築するGodotプロジェクトです。
*   `app/`: 美術館のインタラクティブなガイドとして機能するSvelteKitウェブアプリケーションです。
*   `blender/`: Godotプロジェクトで使用される3DモデルのBlenderソースファイルが含まれています。

## はじめに

このプロジェクトをローカルで実行するには、GodotプロジェクトとSvelteKitアプリケーションをセットアップする必要があります。

### 前提条件

-   [Godot Engine](https://godotengine.org/) (バージョン 4.x)
-   [Node.js](https://nodejs.org/) (バージョン 18.x 以降)
-   [Blender](https://www.blender.org/) (オプション、3Dアセットの編集用)

### Godot Museum

1.  Godot Engineを開きます。
2.  `godot/project.godot` ファイルをインポートします。
3.  Godotエディタからプロジェクトを実行します。

### SvelteKit App

1.  `app` ディレクトリに移動します:
    ```bash
    cd app
    ```
2.  依存関係をインストールします:
    ```bash
    npm install
    ```
3.  開発サーバーを起動します:
    ```bash
    npm run dev
    ```

SvelteKitアプリケーションは `http://localhost:5173` で実行されます。

## プロジェクトのビルド

### Godot

Godotプロジェクトをウェブ用にエクスポートするには：

1.  Godotエディターで、「`Project > Export...`」に移動します。
2.  「`Web`」プリセットを選択します。
3.  「`Export Project`」をクリックし、出力先として「`docs/demo`」ディレクトリを選択します。

### SvelteKit

SvelteKitアプリケーションをビルドするには：

1.  「`app`」ディレクトリに移動します。
2.  以下のビルドコマンドを実行します。
    ```bash
    npm run build
    ```

本番環境用のファイルは「`app/build`」ディレクトリに生成されます。GitHub Pagesの場合、出力は「`docs/live`」にあります。

## 仕組み

Godot美術館シミュレーションはウェブブラウザで動作します。シミュレーション内には、スマートフォンでスキャンできるQRコードがあります。これらのQRコードはSvelteKitウェブアプリケーションにリンクしており、展示物に関する詳細情報を提供します。このウェブアプリケーションは、Gemini Liveを使用して、インタラクティブで会話形式の体験を提供します。

---
English translation

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



