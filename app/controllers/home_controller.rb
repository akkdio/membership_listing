class HomeController < ApplicationController
  def index
       @memberships = Membership.order("company_name").all
       @categories = Category.order("name").all
       @listings = @memberships.zip(@categories)
       respond_to do |format|
         format.html
         format.csv { render text: @listings.to_csv}
         end   
      
       #@category = Category.order("name").find(params[:id])
       # @category = Category.find(params[:id])
       
       

     
       
  end
  
  def member_cat
     @categories = Category.order("name").all
     #@memberships = Membership.order("company_name").all
   
     @category = Category.find(params[:id])
     @company_names = @category.company_name
     
     
  end
 
  
end
