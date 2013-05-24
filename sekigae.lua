--[[ 
# Name
Sekigae program with Lua/Luajit for paperboy&co fresher.

# Compatibility
It works with both of lua and luajit

# Notes
install `luarocks install inspect` before use.

# Usage
`$ luajit sekigae.lua`

# URL
https://github.com/y-ken/paperboy-sekigae

# References
* http://en.wikipedia.org/wiki/Fisher-Yates_shuffle
* http://www.gammon.com.au/forum/?id=9908
]]

math.randomseed(os.time())
inspect = require 'inspect'
names = {"おっくん", "きたけー", "たけお", "ぐっさん"}

function shuffle(array)
  local arrayCount = #array
  for i = arrayCount, 2, -1 do
    local j = math.random(1, i)
    array[i], array[j] = array[j], array[i]
  end
  return array
end

print(inspect(shuffle(names)))