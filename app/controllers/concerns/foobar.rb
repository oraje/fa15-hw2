class Foobar
  def initialize(str)
  	@str = str
  end

  def bar(str1, opt = {})
  	return str1.to_s + @str.to_s + opt[:sat].to_s 
  end 
end
