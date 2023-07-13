#!/bin/bash
curl "https://api.telegram.org/bot5896325394:AAFavOTsIbpsocGE6ep1zvOEbTyRnV7bOJU/sendMessage?chat_id=995426763&text=Recording+$1+Done"
ffmpeg -y -i $1 -acodec libmp3lame -ar 44100 -ac 1 -vcodec libx264 $2
rm $1
curl "https://api.telegram.org/bot5896325394:AAFavOTsIbpsocGE6ep1zvOEbTyRnV7bOJU/sendMessage?chat_id=995426763&text=Converted+$1+to+$2"
