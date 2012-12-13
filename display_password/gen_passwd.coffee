# http://coffeescriptcookbook.com/chapters/strings/generating-a-unique-id

uniqueId = (length=8) ->
  id = ""
  id += Math.random().toString(36).substr(2) while id.length < length
  id.substr 0, length

uniqueId()    # => n5yjla3b
uniqueId(2)   # => 0d
uniqueId(20)  # => ox9eo7rt3ej0pb9kqlke
uniqueId(40)  # => xu2vo4xjn4g0t3xr74zmndshrqlivn291d584alj
