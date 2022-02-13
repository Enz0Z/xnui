# Allow to simplify all NUIs of all resources into one.

## Exports (Client side)

## add
### Parameters
- id: Unique ID of the DIV
  - Required values: `string`
- payload: The content of the DIV
  - Required values: `string`
### Example
```lua
exports['xnui']:add('hello_world', [[
    <p>This is an example of a simple HTML page with one paragraph.</p>
]])
```

## edit
### Parameters
- id: Unique ID of the DIV
  - Required values: `string`
- payload: The content of the DIV
  - Required values: `string`
- create_if: Allow to create the DIV in case it doesn't exist
  - Required values: `boolean: true/false/nil`
### Example
```lua
exports['xnui']:edit('hello_world', [[
    <p>This is an example of a simple HTML page with two paragraph.</p>
    <p>This is an example of a simple HTML page with two paragraph.</p>
]], true)
```

## remove
### Parameters
- id: Unique ID of the DIV
  - Required values: `string`
### Example
```lua
exports['xnui']:remove('hello_world')
```

## exist
### Parameters
- id: Unique ID of the DIV
  - Required values: `string`
### Example
```lua
local retval = exports['xnui']:exist('hello_world')

print(retval)
```

------------

## Exports (Server side)

## add
### Parameters
- source: Player ID
  - Required values: `any`
  - `-1 for all players`
- id: Unique ID of the DIV
  - Required values: `string`
- payload: The content of the DIV
  - Required values: `string`
### Example
```lua
exports['xnui']:add(GetPlayers()[1], 'hello_world', [[
    <p>This is an example of a simple HTML page with one paragraph.</p>
]])
```

## edit
### Parameters
- source: Player ID
  - Required values: `any`
  - `-1 for all players`
- id: Unique ID of the DIV
  - Required values: `string`
- payload: The content of the DIV
  - Required values: `string`
- create_if: Allow to create the DIV in case it doesn't exist
  - Required values: `boolean: true/false/nil`
### Example
```lua
exports['xnui']:edit(GetPlayers()[1], 'hello_world', [[
    <p>This is an example of a simple HTML page with two paragraph.</p>
    <p>This is an example of a simple HTML page with two paragraph.</p>
]], true)
```

## remove
### Parameters
- source: Player ID
  - Required values: `any`
  - `-1 for all players`
- id: Unique ID of the DIV
  - Required values: `string`
### Example
```lua
exports['xnui']:remove(GetPlayers()[1], 'hello_world')
```