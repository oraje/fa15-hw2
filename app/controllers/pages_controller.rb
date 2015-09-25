class PagesController < ApplicationController
  def home
    foo = Foobar.new "baz"
    @baz = foo.bar :cat, sat: :dat, dat: :sat
  end

  def stringify
    
    if params[:name].blank? and params[:adjective].blank?
      @text = "You are nothing!"
    else
      @text = params[:name] + " is so " + params[:adjective]
    end 
    
  end

  def age

  end

  def person
    p1 = Person.new params[:name], params[:age]
    @per1 = p1.introduce
    @per2 = p1.birth_year
    @per3 = p1.nickname
  end
end
