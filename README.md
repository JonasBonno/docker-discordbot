# discordbot
A multifunction Discord bot 
made by Twentysix at https://github.com/Twentysix26/Red-DiscordBot

#### *Fun bringer, admin helper and music bot*  
[<img align="right" title="Art by Supergiant Games" src="https://www.supergiantgames.com/static/images/transistor/cartoon_red.png">](https://www.supergiantgames.com/games/transistor/)

To run container: docker run --tty=true --interactive=true --detach=true --volume=[path to data location on host]:/json jonasbonno/discordbot

To set it up on first start: 
</br>docker attach [name of container]
</br>Enter discord email, password, admin group and etc.
</br>To exit again press CTRL+P and then CTRL+Q

### Cool title, but what does it do exactly?
A bit of everything. Seriously though:  
It has the [most common features](#general-commands) of many chatbots (!flip, !8, stopwatch, etc.), **custom commands** (inspired by Twitch's [Nightbot](https://www.nightbot.tv/)).  
It features some games such as **Trivia**, rock paper scissors, [users can earn and play with credits](#economy-commands) in the slot machine.  
[The audio part is quite fleshed out](#audio-commands). Users can **stream youtube videos**, create **playlists** that everyone will be able to play and control (previous/next song, pause/resume, shuffle...).  
**MP3 and flac files can also be streamed** (see [FAQ](#faq) for details on local playlists)  
**Twitch's online notifications**: Red will notify the channels you want whenever you favorite Twitch streamers are online.  
As for the moderation tools, it includes a **powerful message filter with regular expression capabilities** and **mass messages cleanup**.  
[I'm planning to expand all this much more](#todo-list).  
See the [command list](#general-commands) for an even better idea of what this bot can do.
