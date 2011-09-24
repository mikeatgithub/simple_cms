class DemoController < ApplicationController

  layout 'admin'  
  
  def index
    # render('hello')
    # redirect_to(:action => "other_hello")
  end
 
  def hello
    # redirect_to("http://www.yahoo.com")
    @id = params[:id].to_i
    @page = params[:page].to_i
    @my_array = [1,2,3,4]
  end

  def other_hello
    render(:text => "Hello Everyone")
  end

    def javascript
    end
end


