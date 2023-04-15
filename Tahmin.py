import discord
from discord.ext import commands

bot = commands.Bot(command_prefix='') 
@bot.event
async def on_ready():
    print(f'{bot.user} çalışmaya hazır!')

@bot.command()
async def hello(ctx):
    await ctx.send('Hi!')

bot.run('TOKEN')                       
