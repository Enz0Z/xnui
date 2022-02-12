# Allow to simplify all NUIs of all resources into one.

## Exports (Client side)

### add(id, payload)
#### Example
```lua
exports['xnui']:add('hello_world', [[
    <p>This is an example of a simple HTML page with one paragraph.</p>
]])
```

### edit(id, payload)
#### Example
```lua
exports['xnui']:edit('hello_world', [[
    <p>This is an example of a simple HTML page with two paragraph.</p>
    <p>This is an example of a simple HTML page with two paragraph.</p>
]])
```

### remove(id)
#### Example
```lua
exports['xnui']:remove('hello_world')
```

------------

## Exports (Server side)
`-1 for source work as well`

### add(source, id, payload)
#### Example
```lua
exports['xnui']:add(GetPlayers()[1], 'hello_world', [[
    <p>This is an example of a simple HTML page with one paragraph.</p>
]])
```

### edit(source, id, payload)
#### Example
```lua
exports['xnui']:edit(GetPlayers()[1], 'hello_world', [[
    <p>This is an example of a simple HTML page with two paragraph.</p>
    <p>This is an example of a simple HTML page with two paragraph.</p>
]])
```

### remove(source, id)
#### Example
```lua
exports['xnui']:remove(GetPlayers()[1], 'hello_world')
```