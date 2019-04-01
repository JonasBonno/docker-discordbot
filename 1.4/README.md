# discordbot - v1.4
Red - A fully customizable Discord bot
Music, admin, trivia, fun commands and much more!
made by Twentysix at https://github.com/Twentysix26/Red-DiscordBot/tree/develop

#### *Music, admin, trivia, fun commands and much more!*  

To run container: docker run --tty=true --interactive=true --detach=true --volume=[path to data location on host]:/data jonasbonno/discordbot:1.4

To set it up on first start: 
</br>docker attach [name of container]
</br>Enter discord email, password, admin group and etc.
</br>To exit again press CTRL+P and then CTRL+Q

Firewall:
Remember that the bot needs access to Discord voice servers therefor open up for e.g. london365.discord.gg and frankfurt306.discord.gg. If you use other server locations then check your firewall logs and open for their blocked IPs.

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
