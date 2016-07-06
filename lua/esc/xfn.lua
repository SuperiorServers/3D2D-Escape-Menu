-- 
-- 3D2D Escape Menu by thelastpenguin aka Gareth
-- The author of this script takes no responsability for damages incured in it's use including loss or disruption of service or otherwise.
-- All derivitave scripts must keep this credit banner to the author and must credit the author thelastpenguin in any releases
-- other than that you can do whatever the fvck you want with it :)
-- 

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
