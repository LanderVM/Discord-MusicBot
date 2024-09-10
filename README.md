<h1 align="center"><img src="./Discord-MusicBot-v4/assets/logo.gif" width="30px"> Discord Music Bot <img src="./Discord-MusicBot-v4/assets/logo.gif" width="30px"></h1>

## 📝 | Tutorial: Setting Up Your Discord Music Bot

### 📖 | Introduction

I created this tutorial because the original one wasn't very straightforward for beginners. This guide will help you set up your own Discord music bot using Lavalink and Discord.js. The bot is capable of playing music in voice channels and supports various commands for controlling music playback. It works on Windows, macOS, and Linux.

---

## 🚀 Very Quick Setup (Windows Only)

> **Note:** Use the [⚡Quick Setup](#quick-setup) below if you plan to run the bot 24/7 or want to set it up correctly.

1. [⬇️ Download this project](https://github.com/LanderVM/Discord-MusicBot/archive/refs/heads/v5.zip), right-click it and unzip it.
2. Then [⬇️ Download Docker Desktop](https://www.docker.com/products/docker-desktop/) and start Docker Desktop.
3. When Docker Desktop is running, open the unzipped file you just downloaded and run the `QuickStart.bat` file. This will do almost everything for you.

The project will ask you for some Discord information.

- **Discord Bot Token:**

  1. Go to the [Discord Developer Portal](https://discord.com/developers/applications).
  2. Click on **New Application**.
  3. Name your application, agree to the TOS and Developer Policy, then click **Create**.
  4. Navigate to the **Bot** tab and click **Reset Token**, then **Yes, do it!**.
  5. Click **Copy** to copy the token and keep it safe. **Do not share this token with anyone!**

- **Discord Client ID:**

  - Again on the Discord Developer Portal webpage, click on **OAuth2** on the left side of the website, and copy your Client ID.

- **Discord Client Secret:**
  - On the same webpage, click **Reset Client Secret** and copy it.

If you gave in incorrect information, open the `Discord-MusicBot-v4` folder and delete the `.env` file.

---

## ⚡ Quick Setup

### 🚧 Prerequisites

- [Node.js v20 (LTS)](https://nodejs.org/en/download/prebuilt-installer)
- [Java 21 (LTS)](https://www.oracle.com/java/technologies/downloads/#jdk21-windows)

#### 1. Download or Clone the Project

- [⬇️ Download](https://github.com/LanderVM/Discord-MusicBot/archive/refs/heads/v5.zip) or clone this project to your machine.

#### 2. Create a Bot in the Discord Developer Portal

1. Go to the [Discord Developer Portal](https://discord.com/developers/applications).
2. Click on **New Application**.
3. Name your application, agree to the TOS and Developer Policy, then click **Create**.
4. Navigate to the **Bot** tab and click **Reset Token**, then **Yes, do it!**.
5. Click **Copy** to copy the token and keep it safe. **Do not share this token with anyone!**

#### 3. Set Up Environment Variables

1. Open the `Discord-MusicBot-v4` folder and create a copy of the `.env.example` file, then rename it to `.env`.
2. Open the `.env` file in any text editor.
3. **Add Bot Token:** Paste the token from the Discord Developer Portal into the `DISCORD_BOT_TOKEN` field.
4. **Add Client ID:** Go back to the Developer Portal, click on **OAuth2** on the left side, and copy your `Client ID`. Paste it into the `DISCORD_CLIENT_ID` field.
5. **Add Client Secret:** Go back to the Developer Portal, click **Reset Client Secret**, and paste it into the `DISCORD_CLIENT_SECRET` field.
6. _(Optional)_ **Additional Settings:**
   - Update the `DISCORD_ADMIN_ID` field with your Discord ID for access to additional commands. [Learn how to find your Discord ID](https://support.discord.com/hc/en-us/articles/206346498-Where-can-I-find-my-User-Server-Message-ID).
   - Adjust other values, such as `LAVALINK_PORT` or `LAVALINK_PASSWORD`, as needed.

#### 4. Start Lavalink

1. Navigate to the `Lavalink-v3` folder in your project.

- **For Windows:**

  - Run `start.bat` to start Lavalink.
  - _(Optional)_ If you changed the optional values like `LAVALINK_PORT` or `LAVALINK_PASSWORD` in the `.env` file, make sure to update them and rerun the `start.bat` file.

- **For macOS/Linux:**
  - Open a terminal in the `Lavalink-v3` folder.
  - Run:
    ```bash
    chmod +x start.sh
    ```
    ```bash
    ./start.sh
    ```
  - _(Optional)_ If you changed the optional values like `LAVALINK_PORT` or `LAVALINK_PASSWORD` in the `.env` file. Make a copy of the `.env.exmaple` file, rename it to `.env` file and edit it. Update the values and rerun the `start.bat` file.

#### 5. Invite the Bot to Your Server

1. Go back to the Developer Portal and copy your bot's `Client ID`.
2. Visit the [Discord API Permissions Calculator](https://discordapi.com/permissions.html#277083450689) and enter your Client ID.
3. Copy the generated URL. Clicking on this URL will redirect you to invite your bot to a server.

#### 6. Get the Bot Online

1. Navigate back to the `Discord-MusicBot-v4` folder.
2. Open a terminal or command prompt.

   - Install Dependencies:

     ```bash
     npm install
     ```

   - Deploy Slash Commands:

     ```bash
     npm run deploy
     ```

   - Start the Bot:
     ```bash
     node .
     ```

3. If everything is set up correctly, you should see the message `Successfully logged in as ...`.
4. Check if the bot is online by going to your server and verifying its online. Connect to a voice channel and use the `/play (your specified song)` command in a (public) text channel to test if the bot plays the song.

#### 7. Customize Bot Settings *(Optional)*

- To change additional settings, such as the bot's name or other configurations, edit the `config.js` file in the `Discord-MusicBot-v4` directory.

---

### 🐳 Running with Docker

If you want to run the bot in a Docker container:

0. Make sure to create the `.env` file and fill it in with the correct values. (See steps 2 & 3 above)
1. Ensure all optional settings are updated in the `Discord-MusicBot-v4/config.js` file.
2. Go into the `Discord-MusicBot-v4` folder and build and start both the bot and Lavalink using this command:

   ```sh
   docker-compose up -d --build
   ```

   _(Optional)_ Check the `docker-compose.yml` and `docker/application.yml` files if you changed any optional settings in the `.env` file.

### 🔧 Troubleshooting Common Issues

- **Bot Not Appearing Online:** Check if the bot token is correct and if the bot has been invited to the server.
- **Lavalink Not Starting:** Ensure Node.js 20 & Java 21 are installed and properly configured.
- **Commands Not Working:** Verify that slash commands were deployed successfully and that the bot has sufficient permissions.

### **Conclusion**

This guide provides a basic setup for your Discord music bot. If you encounter any issues or if something is unclear, feel free to reach out for further assistance. This guide is created for Windows, but the steps may vary slightly on other operating systems. For non-Windows users, refer to the appropriate commands in Step 4.

## 📝 | [Support Server](https://discord.gg/sbySMS7m3v)

If you have major coding issues with this bot, please join and ask for help.

## 📦 | Includes

- **Discord-MusicBot v4.1.2**: [View Release](https://github.com/SudhanPlayz/Discord-MusicBot/releases/tag/v4.1.2)
- **Lavalink v3.7.12**: [View Release](https://github.com/lavalink-devs/Lavalink/releases/tag/3.7.12)
- **YouTube Source v1.7.2**: [View Release](https://github.com/lavalink-devs/youtube-source/releases/tag/1.7.2)
