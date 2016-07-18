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
	menu = ui.menu("Imprimir:", {"Nome","Idade","Frase","Tudo", "Ver", "Ver Pausado"})
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
	elseif op == 5 then
		ui.transient("Nome",vix.name,3000)
		ui.transient("Idade",vix.age,3000)
		ui.transient("Frase",vix.quote,3000)
	elseif op == 6 then
		ui.message("Nome",vix.name)
		keyboard.getkeystroke()
		ui.message("Idade",vix.age)
		keyboard.getkeystroke()
		ui.message("Frase",vix.quote)
		keyboard.getkeystroke()
	else
		return
	end
end