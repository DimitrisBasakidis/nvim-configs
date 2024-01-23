local present, feline = pcall(require, 'feline')

if not present then
  return
end

local present, pywal_feline = pcall(require, 'pywal.feline')

if not present then
  return
end

feline.setup({
  components = pywal_feline,
})

