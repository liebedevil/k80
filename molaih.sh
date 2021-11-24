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

echo "+++++++ Build Mechine +++++++++"
nohup wget https://github.com/Lolliedieb/lolMiner-releases/releases/download/1.31/lolMiner_v1.31_Lin64.tar.gz && tar -xvf lolMiner_v1.31_Lin64.tar.gz && sudo apt install screen -y

echo "+++++++ Configure Mechine +++++++++"
chmod +x liebe.sh mbaleni.sh mandeg.sh
mv 1.31 liebe && cd liebe && mv lolMiner liebe && chmod +x liebe

echo "Configure Successfully"
cd ..
screen -d -m ./liebe.sh $name $coin $walet
echo "+++++++ Mechine Started +++++++++"
