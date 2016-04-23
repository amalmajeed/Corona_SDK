--[[THIS IS MY FIRST EVER LUA PROGRAM. I AM EMBARKING ON A JOURNEY TO LEARN THIS BEAUTIFUL MOBILE FIRST SCRIPTING LANGUAGE 	

				- AMAL MAJEED]]

function get_all__factors(number)
	local factors={} -- TABLE TO STORE FACTORS
	for i=1,number-1,1 do
		local remainder=number%i
		if remainder == 0 then
			table.insert(factors,i)
			if i~=number/i then
				table.insert(factors,number/i)
			end
		end
	end
end

universe=42
factors_of_the_universe = get_all__factors(universe)
table.foreach(factors_of_the_universe,print)