# Description
#   listens for panda related trigger words and responds
#
# Dependencies:
#   none
#
# Commands:
#   sad panda, angry panda, frustated panda, happy panda - hubot will reply with an image that captures that emotion.
#   
#
# Author:
#   missu 

module.exports = (robot) ->
  robot.hear /(.*) panda/i, (msg) ->
    pandaType = msg.match[1]
    angry = [
        'http://fc08.deviantart.net/fs70/f/2010/010/6/1/CROSS_ID_Panda_Version_by_xxcrossmaniac.jpg'
        'http://www.electricdialogue.com/2012dev/wp-content/uploads/2012/04/angry-panda.png'
        'http://2.bp.blogspot.com/-QCQupZ13FtA/TeV0Z8DmQzI/AAAAAAAAAGs/axFV7-ADzZw/s400/angry-panda.jpg'
        'http://memecrunch.com/image/51c27308afa96f3383000052.jpg?w=269'
        ]
    sad =[
        'https://farm5.staticflickr.com/4083/4966109357_eb24f7b6a1.jpg'
        'http://legendaryarchive.files.wordpress.com/2014/03/sad-panda.jpg'
        'http://fc05.deviantart.net/fs70/f/2011/029/a/a/sad_panda_by_garnwraly-d38cf9k.jpg'
    ]
    frustrated = [
        'http://media-cache-ak0.pinimg.com/736x/26/84/a2/2684a227bbace77222b9f8b6393c6419.jpg'
        'http://news.bbcimg.co.uk/media/images/69193000/jpg/_69193264_69193263.jpg'
    ]
    happy =[
        'http://media.tumblr.com/tumblr_lu71bnOkdD1qdljoj.jpg'
        'http://www.asianstyle.cz/upload/files/3/7d469/7d4699bdd4c28588e837326cf825c2b5.jpg'
        'http://2.bp.blogspot.com/--wvunLxIz0s/UHEJS8vqcnI/AAAAAAAAHZI/khje3PTQQxk/s1600/Happy%20Pandas%20Photo.jpg'
    ]

    if pandaType is "angry"
      msg.send "grrrrr"
      msg.send msg.random angry
    else if pandaType is "sad"
      msg.emote "sighs"
      msg.send msg.random sad
    else if pandaType is "frustrated"
      msg.send "seriously?!"
      msg.send msg.random frustrated
    else if pandaType is "happy"
      msg.emote "giggles"
      msg.send msg.random happy
    return
