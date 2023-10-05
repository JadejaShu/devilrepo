if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/JadejaShu/devilrepo.git /devilrepo
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /devilrepo
fi
cd /devilrepo
pip3 install -U -r requirements.txt
echo "Starting devilrepo...."
python3 bot.py
