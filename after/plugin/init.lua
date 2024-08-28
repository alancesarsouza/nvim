local released = require 'reseased'

for _, path in pairs(released.plugins) do
  local plugin = require(path)
  plugin.after()
end

released.checkers()

-- Instaces !! REQUIRE RUN AFTER ALL !!
require 'main.autocomand'
