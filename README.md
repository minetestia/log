# Log

Dump any lua variables in human-readable format and log them.

## Example

```lua
minetest.register_on_punchnode(
  function(pos, node, player, pointed_thing)
    log {[node.name] = minetest.registered_nodes[node.name].groups}
  end
)
```

---

This mod was created in [Minetestia Forge].

All my mods uses [Minetest LSP-API] annotations, [StyLua] and [Luacheck].

[Minetestia Forge]: https://github.com/orgs/minetestia/repositories
[Minetest LSP-API]: https://github.com/minetest-toolkit/minetest-lsp-api
[StyLua]: https://github.com/JohnnyMorganz/StyLua
[Luacheck]: https://github.com/mpeterv/luacheck
