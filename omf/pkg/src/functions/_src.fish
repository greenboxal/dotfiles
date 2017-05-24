function _src -d "Go to project"
  set possible $argv[1..-2]
  set target $argv[-1]
  set matching (printf '%s\n' $possible | grep $target)

  if test (count $matching) = 1
    cd $matching
    return
  end

  printf '%s\n' $matching | fzf | read -l path; and cd $path
end

