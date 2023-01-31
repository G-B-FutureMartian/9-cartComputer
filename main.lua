--openedCartridge = io.tmpfile("r")

function cartridgeOpen(cartridge,mode)
  if opened == true
    then
    openedCartridge:close()
    opened = false
  end
  if cartridge == "0"
    then
    openedCartridge = io.tmpfile(mode)
    opened = true
    print("Cartridge 0 doesn't work right now. Sorry.")
  end
  if cartridge == 1
    then
      openedCartridge = io.open("1.txt",mode)
      opened = false
    end
end

cartridgeOpen(0,"w")
openedCartridge:write("hi")
openedCartridge:close()