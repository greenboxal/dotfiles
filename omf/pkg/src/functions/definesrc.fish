function definesrc -d "Create quick directory changer"
  set name $argv[1]
  set path $argv[2]

  function $name -V path
    set target $argv[1] ''

    if test -z "$target"
      cd $path
      return
    end

    _src $path/* $target
  end
  
  complete -c $name -f -a "(find $path/* -maxdepth 0 -type d | xargs -n 1 basename -a)"
end

