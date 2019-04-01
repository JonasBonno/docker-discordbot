# discordbot - v1.8
Red - A fully customizable Discord bot
Music, admin, trivia, fun commands and much more!
made by Twentysix at https://github.com/Twentysix26/Red-DiscordBot/tree/develop

#### *Music, admin, trivia, fun commands and much more!*  

To run container:
docker create --name [name of data container] jonasbonno/discordbot:1.8
docker run --tty=true --interactive=true --detach=true --volumes-from [name of data container] jonasbonno/discordbot:1.8

Backup:
docker run --rm --volumes-from [name of data container] -v $(pwd):/backup alpine tar jcpvf /backup/discordbot.bz2 /root/Red-DiscordBot

Restore:
docker stop [name of data container]
docker run --rm --volumes-from [name of data container] -v $(pwd):/backup alpine tar jxpvf /backup/discordbot.bz2
docker start[name of data container]

To set it up on first start: 
</br>docker attach [name of container]
</br>Create bot account: https://twentysix26.github.io/Red-Docs/red_guide_bot_accounts
</br>Enter discord token, admin group and etc.
</br>To exit again press CTRL+P and then CTRL+Q

Red has been completely rewritten. It is now fully modular and it comes with sets of features/commands that can be enabled/disabled to your liking, making it customizable exactly how you want.
You can turn Red into a trivia bot, an admin bot, a music bot (...) or all of these together.

The default set of modules includes and it's not limited to:

    admin commands
    trivia (lists included and you can make new ones!)
    music features (playlists, youtube, soundcloud, queues...)
    stream alerts (twitch/hitbox)
    slot machines (yes, really!)
    custom commands
    imgur/gif search
    and much much more

Red is in continuous development and new features get added all the time.
