src() { cd ~/src/$1 }

srcgh() {
	fp=~/src/github.com/$1
	bp=$(dirname $fp)

	if [ ! -d $fp ]; then
		mkdir -p $bp
		cd $bp
		hub clone $1
	fi

	src github.com/$1
}

srcpg() { srcgh pagarme/$1 }

srcgb() { srcgh greenboxal/$1 }

dco() {
	if [ -f './script/docker-compose-noconflict' ]; then
		script/docker-compose-noconflict $*
	else
		docker-compose $*
	fi
}

alias tfplan="terraform plan"
alias tfapply="terraform apply"
alias tfls="terraform state list"

alias vim=nvim
