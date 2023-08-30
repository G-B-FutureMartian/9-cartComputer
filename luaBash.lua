function quit()
	os.exit()
end

function help()
	print([[
		help - s
		Show this dialogue
		quit or exit - Quit 9-cartComputer
	]])
end

function echo(str)
	print(str)
end

while 1==1 do
	--print('')
	command = io.read()
	if command == 'help' then help()
	else if command == 'quit' or 'exit' then quit()
	else if command
	end
end
end
