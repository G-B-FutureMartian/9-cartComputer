function cartridgeOpen(cartridge,mode)
	if opened == true
	then
		openedCartridge:close()
		opened = false
	end
	if cartridge == 0
	then
		cartName = os.tmpname
		openedCartridge = io.open(tostring(cartName),mode)
	else
		openedCartridge = io.open(cartridge .. '.txt',mode)
	end
	opened = true
	return openedCartridge
end

function cartridgeClose(cartridge)
	cartridge:close()
	opened = false
end

cart = "2.txt"
cartridgeOpen(cart,"r+")
dofile("2.txt")
cart:write("Hi")
--cartridgeClose(cart)
cart:close()
