PKG=""

if [ -n "$(which yum 2>/dev/null)" ]
  then PKG="yum"
elif [ -n "$(which apt-get 2>/dev/null)" ]
  then PKG="apt-get"
fi

echo "PKG=${PKG}"

$PKG install vim
