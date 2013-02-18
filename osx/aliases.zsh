if $(which memcached &>/dev/null)
then
  alias load_memcached="launchctl load -w ~/Library/LaunchAgents/homebrew.mxcl.memcached.plist"
  alias unload_memcachedl="launchctl unload -w ~/Library/LaunchAgents/homebrew.mxcl.memcached.plist"
fi
