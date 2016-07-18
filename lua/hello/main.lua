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
	while true do
		menu = ui.menu("Imprimir:", {"Nome","Idade","Frase","Tudo", "Ver", "Ver Pausado","Alterar","Sair"})
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
		elseif op == 7 then
			newName = ui.textfield("Nome","Digite o novo nome")
			newName:type("text")
			newName:show()
			vix.name = newName:text()
			ui.destroy(newName)
			
			newAge = ui.textfield("Idade","Digite o nova idade")
			newAge:type("text")
			newAge:show()
			vix.age = newAge:text()
			ui.destroy(newAge)
		elseif op == 8 then
			break
		else
			return
		end
	end
end