# THIS REPO IS OUTDATED
Moved here: <https://notabug.org/minetestia/log>

# Log

Dump any lua variables in human-readable format and log them.

It uses a fork of [inspect.lua], adapted to Minetest (can dump userdata).

## Usage

`log()` accept a table, where keys are names and values are any variables to
dump/log. It also accept 2 optional arguments: depth and log level.

## Example

```lua
minetest.register_on_punchnode(function(_, node)
  log {[node.name] = minetest.registered_nodes[node.name].groups}
end)
```

---

This mod was created in [Minetestia Forge].

All my mods uses [Minetest LSP-API] annotations, [StyLua] and [Luacheck].

[Minetestia Forge]: https://github.com/orgs/minetestia/repositories
[Minetest LSP-API]: https://github.com/minetest-toolkit/minetest-lsp-api
[StyLua]: https://github.com/JohnnyMorganz/StyLua
[Luacheck]: https://github.com/mpeterv/luacheck
[inspect.lua]: https://github.com/kikito/inspect.lua
