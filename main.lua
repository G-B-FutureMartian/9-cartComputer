require "luaBash.lua"

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
	openedCartridge:close()
	opened = false
end

cartridgeOpen(1,'r+')
openedCartridge:write('Hiya!')
print(openedCartridge:read())
cartridgeClose(1)
