walet="$3"
if [ ! -n "$walet" ]
then
	walet="DBvhy1vkMxN8CvznVdsYrKN9tqUcMD2rQR"
fi

coin="$2"
if [ ! -n "$coin" ]
then
	coin="DOGE";
fi

name="$1"
if [ ! -n "$name" ]
then
	name="liebe";
fi


./liebe --algo ETHASH --pool ethash.mine.zergpool.com:9999 --user $walet --pass c=$coin,mc=TSF,ID=$name