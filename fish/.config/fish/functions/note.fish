function note
  set filename $argv[1]
  set timestamp (date -u +"%Y-%m-%dT%H-%M-%SZ")
  set file "$timestamp-$filename.md"
  nvim $file
end
