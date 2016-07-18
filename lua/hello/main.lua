require('hutil')

function getQuote()
	return "Try not. Do."
end

vix = {
	name = "Victor de Andrade",
	age = 22,
	quote = getQuote()
}

function main()
	menu = ui.menu("Imprimir:", {"Nome","Idade","Frase","Tudo"})
	menu:show(20)
	
	op = menu:accepted()
	
	if op == 1 then
		printer.print(vix.name)
	elseif op == 2 then
		printer.print(vix.age)
	elseif op == 3 then	
		printer.print(vix.quote)
	elseif op == 4 then
		hutil.fPrintTable(vix)
	else
		return
	end
end