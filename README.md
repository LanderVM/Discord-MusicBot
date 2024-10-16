<h1 align="center"><img src="./Discord-MusicBot-5/assets/logo.gif" width="30px"> Discord Music Bot <img src="./Discord-MusicBot-5/assets/logo.gif" width="30px"></h1>

## 📝 | Tutorial: Setting Up Your Discord Music Bot

### 📖 | Introduction

I created this tutorial because the original one wasn't very straightforward for beginners. This guide will help you set up your own Discord music bot using Lavalink and Discord.js. The bot is capable of playing music in voice channels and supports various commands for controlling music playback. Works on Windows, macOS, and Linux.

---

### 🚧 | Prerequisites

- [Node.js v20 (LTS)](https://nodejs.org/en/download/prebuilt-installer)
- [Java 21 (LTS)](https://www.oracle.com/be/java/technologies/downloads/#jdk21-windows)

### 1. Download/Clone the Project

- Download or clone this project to your local machine.

### 2. Create a Bot in the Discord Developer Portal

1. Go to the [Discord Developer Portal](https://discord.com/developers/applications).
2. Click on `New Application`.
3. Name your application, agree to the TOS and Developer Policy, then click `Create`.
4. Navigate to the `Bot` tab and click `Reset Token`, then `Yes, do it!`.
5. Click `Copy` to copy the token and keep it safe. **Do not share this token with anyone!**

### 3. Set Up Environment Variables

1. Open the project and in the `Discord-MusicBot-5` folder, create a copy of the `.env.example` file and rename it to `.env`.
2. Open the `.env` file in any text editor.
3. **Add Bot Token:** Paste the token from the Discord Developer Portal into the `DISCORD_BOT_TOKEN` field.
4. **Add Client ID:** Return to the Developer Portal, click on `OAuth2` on the left side of the website, and copy your `Client ID`. Paste it into the `DISCORD_CLIENT_ID` field.
5. **Add Client Secret:** Go back to the Developer Portal, click `Reset Client Secret`, and paste it into the `DISCORD_CLIENT_SECRET` field.
6. **Additional Settings (Optional):**
   - Update the `DISCORD_ADMIN_ID` field with your Discord ID for access to additional commands. [Learn how to find your Discord ID](https://support.discord.com/hc/en-us/articles/206346498-Where-can-I-find-my-User-Server-Message-ID).
   - Adjust other values, such as `LAVALINK_NODE_PORT` or `LAVALINK_NODE_PASSWORD`, as needed.

### 4. Start Lavalink

1. Navigate to the `Lavalink-v3` folder in your project.
2. **For Windows:**
   - Run `start.bat` to start Lavalink.
   - **(Optional)** If you changed the optional values like `LAVALINK_NODE_PORT` or `LAVALINK_NODE_PASSWORD` in the `.env` file, right-click `start.bat`, edit it, and update these values. Then, save and rerun the file.
3. **For macOS/Linux:**
   - Open a terminal in the `Lavalink-v3` folder.
   - Run:
     ```bash
     chmod +x start.sh
     ```
     ```bash
     ./start.sh
     ```

### 5. Invite the Bot to Your Server

1. Go back to the Developer Portal and copy your bot's `Client ID`.
2. Visit the [Discord API Permissions Calculator](https://discordapi.com/permissions.html#277083450689) and enter your Client ID.
3. Copy the generated URL. Clicking on this URL will redirect you to invite your bot to a server.

### 6. Get the Bot Online

1. Navigate back to the `Discord-MusicBot-5` folder.
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

4. Check if the bot is online by going to your server and verifying its presence. Connect to a voice channel and use `/play (your specified song)` to test if the bot plays the song.

### 7. Customize Bot Settings (Optional)

- To change additional settings, such as the bot's name or other configurations, edit the `config.js` file in the root directory.

---

### 🐳 | Running with Docker

If you want to run the bot in a Docker container:

1. Ensure all optional settings are updated in the `config.js` file.
2. Go into the `Discord-MusicBot-5` folder and build and start both the bot and Lavalink using this command:

   ```sh
   docker-compose up -d --build
   ```

   **(Optional)** Check out in the Discord-MusicBot-5 folder the `docker-compose.yml` and `docker/application.yml` files if you changed any optional settings in the `.env` file.

### 🔧 | Troubleshooting Common Issues

- **Bot Not Appearing Online:** Check if the bot token is correct and if the bot has been invited to the server.
- **Lavalink Not Starting:** Ensure Node.js 20 & Java 21 are installed and properly configured.
- **Commands Not Working:** Verify that slash commands were deployed successfully and that the bot has sufficient permissions.

### **Conclusion**

This guide provides a basic setup for your Discord music bot. If you encounter any issues or if something is unclear, feel free to reach out for further assistance. This guide is created for Windows, but the steps may vary slightly on other operating systems. For non-Windows users, refer to the appropriate commands in Step 4.

## 📝 | [Support Server](https://discord.gg/sbySMS7m3v)

If you have major coding issues with this bot, please join and ask for help.

## 🌟 | Made with

- [Discord.js](https://discord.js.org/)
- [Lavalink](https://github.com/freyacodes/Lavalink) with erela.js
- [Express](https://expressjs.com/)
- [Next JS](https://nextjs.org/)
- [Next UI](https://nextui.org)
- [Material UI Icons](https://mui.com/material-ui/material-icons/)
