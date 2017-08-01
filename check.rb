	def verify(user, pass)
	set = ["#{user}", "#{pass}"]
	pairs = [["cc","bernie"],["ll","swanson"],["mm","koch"],["ff","trump"]]
	if pairs.include? set
	then 
	x = true 
	else
	x = false
end
end

# verify("ff", "trump") 