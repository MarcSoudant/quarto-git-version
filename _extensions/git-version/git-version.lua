-- run git and read its output
local function git(command, readType)
    readType = readType or '*all'
    local p = io.popen("git " .. command)
    local output = ""
    if p ~= nil then
      output = p:read(readType)
      p:close()
    end
    return output
end

return {
  ['git-version'] = function(args, kwargs, meta) 
    
      -- run the command
      local cmd = 'describe --tags --abbrev=0'
      local tags = git(cmd)

      -- return as string
      if tags ~= nil and tags ~= "" then
          return pandoc.read(tags).blocks
      else
          return pandoc.read("?.?").blocks
      end
  end
}
