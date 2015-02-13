class MainControllerController < ApplicationController

	layout false

  def index
    #render ('hello')
  end

  def hello
    @array = [1,2,3,4,5]
    @id = params['id'].to_i
    @page  = params[:page].to_i

    #render ('index')
  end

  def other_hello
    redirect_to(:controller => 'main_contoller', :action => 'index')
  end

  def google
    redirect_to ('http://google.com')
  end



end
