class Url < ActiveRecord::Base
	def shorten
	alpha_numeric = 6.times.map{[*'0'..'9',*'a'..'z',*'A'..'Z'].sample}.join

       self.short_url = "http://bit.ly/" + alpha_numeric
       
	end
end
