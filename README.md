# discordbot - latest
Red Discord Bot
made by the Cog creators at https://github.com/Cog-Creators/Red-DiscordBot

#### *Music, Moderation, Trivia, Stream Alerts and Fully Modular*  
<img src="https://imgur.com/pY1WUFX.png" width="720" height="385">

### Setup
Running Red Discord Bot data container: 
- docker run --name [name of your data container] jonasbonno/discordbot echo 'Data-only container'

Running Red Discord Bot container: 
- docker run --tty=true --interactive=true --detach=true --name [name of your container] --volumes-from [name of your data container] --env TOKEN="[your discord bot token]" jonasbonno/discordbot

### Obtain your Discord bot token
You can use this guide: https://docs.discord.red/en/stable/bot_application_guide.html?highlight=token#creating-the-bot-application

### Environment variables
--env TOKEN=[your discord bot token] - The Discord token the Red-DiscordBot will use.
</br>--env PREFIX=! - The prefix Red-DiscordBot will use. Default set to "!" if you don't specify it.

### On first start
- Grant the bot privileged intents: https://docs.discord.red/en/stable/bot_application_guide.html?highlight=token#enabling-privileged-intents
- Accept "Invite URL", run command to show it: docker logs [name of your container]
- Set bot permissions: https://docs.discord.red/en/stable/getting_started.html?highlight=moderator#administrator

### Overview
Red is a fully modular bot – meaning all features and commands can be enabled/disabled to your liking, making it completely customizable. This is a self-hosted bot – meaning you will need to host and maintain your own instance. You can turn Red into an admin bot, music bot, trivia bot, new best friend or all of these together!

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
