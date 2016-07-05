xfn = xfn or {}

function xfn.fn_const(val)
	return function()
		return val
	end
end

function xfn.filter(tab, func)
	local c = 1
	for i = 1, #tab do
		if func(tab[i]) then
			tab[c] = tab[i]
			c = c + 1
		end
	end
	for i = c, #tab do
		tab[i] = nil
	end
	return tab
end

xfn.nothing = function() end
