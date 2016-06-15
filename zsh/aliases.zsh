
src() { cd ~/src/$1 }

srcgh() {
	if [ ! -d ~/src/github.com/$1 ]; then
		mkdir -p ~/src/github.com
		cd ~/src/github.com
		hub clone $1
	fi

	src github.com/$1
}

srcpg() { srcgh pagarme/$1 }

