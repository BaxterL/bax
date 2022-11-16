'''
我的一些杂七杂八的小脚本,不用管,这些基本都是自用的

使游戏输出 OUTPUT:[内容]
执行以下代码开始处理内容并写入output
可以对input进行更改

请将本脚本放置于数据包目录下,也就是跟data文件夹的同级目录下
data/..
this.py
input.txt
文本格式为“文字#4”  #4是延迟4s执行下一条对话 
'''
import json
import os
import sys
import string
from urllib.parse import quote
import requests
from pydub import AudioSegment

Global_dialogue = 1
Global_dtype = "a"
Global_respath = r"D:wangzj\.minecraft\versions\1.19.2-Fabric 0.14.9\resourcepacks\xiaobai\assets\bax"

def xyz(content: str):
    text=content.split("|")
    x=float(text[0].strip("d"))
    y=float(text[1].strip("d"))
    z=float(text[2].strip("d"))
    return f"^{round(x,6)} ^{round(y,6)} ^{round(z,6)}"

def output(content: str):
    with open("output.mcfunction","a") as f:
        f.write(f"execute positioned {xyz(content)} run particle minecraft:flame\n")

def jiexi():
    with open("input.txt",encoding='gbk',errors='ignore') as f:
        for line in f.readlines():
            templist = line.split("OUTPUT:")
            if (len(templist)==2):
                output(templist[1].strip('\n'))

def sprint(string):
    mylist = list(string)
    out= "data modify storage bax:data title set value ["
    for i in mylist:
        out = out + f'''\'{{\"text\":\"{i}\",\"color\":\"#f18271\"}}\','''
    out = out.strip(",") + "]"
    return out

def trans_all_file(files_path, target="ogg"):
    for filepath in os.listdir(files_path):
        modpath = os.path.dirname(os.path.abspath(sys.argv[0]))
        datapath = os.path.join(modpath, files_path + filepath)
        input_audio = os.path.splitext(datapath)
        song = AudioSegment.from_file(datapath, input_audio[-1].split(".")[-1])
        song.export(f"{input_audio[0]}.{target}", format=target)

def input():
    global Global_dialogue
    global Global_dtype
    huanhang = "\n"
    with open("input.txt",encoding='utf-8',errors='ignore') as f:
        for line in f.readlines():
            templist = line.split("#")
            write = sprint(templist[0])
            file = r"data\xiaobai\functions\dialogue"
            #get_ogg(templist[0],Global_dialogue)
            with open(file+f"\{Global_dtype}\{Global_dialogue}.mcfunction","w",encoding="utf-8") as b:
                b.write(f"#By bax generate\nsetblock -1 319 0 oak_sign\n{write}\nfunction bax:lib/print\nexecute as @a at @s run playsound bax:xiaobai.dialogue.{Global_dtype}.{Global_dialogue} voice @s\nschedule function xiaobai:dialogue/{Global_dtype}/{Global_dialogue+1} {templist[1].strip(huanhang)}s append")
                #sounds(Global_dialogue)
            Global_dialogue=Global_dialogue+1
    # trans_all_file(Global_respath+f"\sounds\dialogue\{Global_dtype}\\",target="ogg")

def sounds(num):
    global Global_dtype
    global Global_respath
    newdata={
        f"xiaobai.dialogue.{Global_dtype}.{num}": {
            "sounds": [
                {
                    "name": f"bax:dialogue/{Global_dtype}/{num}"
                }
            ],
            "subtitle": "bax.xiaobai.talk"
        }
    }
    with open(Global_respath+"\sounds.json", "r", encoding="utf-8") as f:
        old_data = json.load(f)
        old_data.update(newdata)
    with open(Global_respath+"\sounds.json", "w", encoding="utf-8") as f:
        json.dump(old_data, f)    

def get_ogg(text,num):
    global Global_respath
    global Global_dtype
    url = quote(f"https://fanyi.sogou.com/reventondc/synthesis?text={text}&speed=1&lang=zh-CHS&from=translateweb&speaker=6", safe = string.printable)
    res = requests.get(url).content
    with open(Global_respath+f"\sounds\dialogue\{Global_dtype}\{num}.mp3", 'ab') as f:
        f.write(res)
        f.flush()


#input()
#jiexi()