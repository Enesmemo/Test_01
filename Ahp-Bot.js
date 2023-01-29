const Discord = require("discord.js")
const client = new Discord.Client();
const prefix = "c!";
client.on("ready", message => {
   console.log("I am ready to Go");
});
client.on("message", message => {
   if(message.content === `${prefix}ping`) {
      message.channel.send(`Pong - ${client.ws.ping}`)
   }
})
client.login("MTAzMzU0MzkwODUzNTMyMDU3Ng.GEIVHA.wiE3uLSZbKlcnBgdpkaHf6u52pI82rryvQKEVg")
