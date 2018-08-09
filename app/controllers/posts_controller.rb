class PostsController < ApplicationController
  def index
    @huhu ="Hallo, wie geht es?"
  end
  
  def contact
    @date = Time.now.strftime("%d.%m.%Y")
  end
  
  def sign_in
    @name = params[:visitor_name]
    unless @name.blank?
      @entry = Entry.create({:name => @name})
    end
    
    @entries = Entry.all
  end
  
end
