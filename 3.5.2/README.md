# discordbot - v3.5.2
Red Discord Bot
made by the Cog creators at https://github.com/Cog-Creators/Red-DiscordBot

NOTE: Server config reset is required when upgrading from v1 to v3.0 or higher.

#### *Music, Moderation, Trivia, Stream Alerts and Fully Modular*  
<img src="https://imgur.com/pY1WUFX.png" width="720" height="385">

### Setup
Running Red Discord Bot data container: 
- <code>docker run --name [name of your data container] jonasbonno/discordbot:3.5.2 echo 'Data-only container'</code>

Running Red Discord Bot container: 
- <code>docker run --tty=true --interactive=true --detach=true --restart unless-stopped --name [name of your container] --volumes-from [name of your data container] --env TOKEN="[your discord bot token]" jonasbonno/discordbot:3.5.2</code>

### Obtain your Discord bot token
You can use this guide: https://docs.discord.red/en/stable/bot_application_guide.html?highlight=application%20page#creating-the-bot-application

### Environment variables
--env TOKEN=[your discord bot token] - The Discord token the Red-DiscordBot will use.
</br>--env PREFIX=! - The prefix Red-DiscordBot will use. Default set to "!" if you don't specify it.

### On first start
- Grant the bot privileged intents: https://docs.discord.red/en/stable/bot_application_guide.html?highlight=Enabling%20Privileged%20Intents#enabling-privileged-intents
- Accept "Invite URL", run command to show it: docker logs [name of your container]
- Set bot permissions: https://docs.discord.red/en/stable/getting_started.html?highlight=moderator%20Administrator#administrator

### Overview
Red is a fully modular bot – meaning all features and commands can be enabled/disabled to your liking, making it completely customizable. This is a self-hosted bot – meaning you will need to host and maintain your own instance. You can turn Red into an admin bot, music bot, trivia bot, new best friend or all of these together!

### Tips
- Set admin role: <code>!set addadminrole [your discord admin group]</code>
- Set moderator role: <code>!set addmodrole [your discord moderator group]</code>
- Show loaded and unloaded cogs: <code>!cogs</code>
- Load music cog: <code>!load music</code>

**The default set of modules includes and is not limited to:**

- Moderation features (kick/ban/softban/hackban, mod-log, filter, chat cleanup)
- Trivia (lists are included and can be easily added)
- Music features (YouTube, SoundCloud, local files, playlists, queues)
- Stream alerts (Twitch, Youtube, Hitbox, Picarto)
- Bank (slot machine, user credits)
- Custom commands
- Imgur/gif search
- Admin automation (self-role assignment, cross-server announcements, mod-mail reports)
- Customisable command permissions
