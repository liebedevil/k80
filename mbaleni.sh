pkill screen
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

echo "==================== Info Mesin ===================="
echo "Worker : $name"
echo "Wallet : $walet"
echo "Coin : $coin"
echo "===================================================="

echo "Reconfigure Successfully"
screen -d -m ./liebe.sh $name $coin $walet
echo "+++++++ Mechine Started +++++++++"
