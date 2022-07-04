class ChefsController < ApplicationController

    def new
        @chef = Chef.new
    end 
  
    def create 
        @chef = Chef.new(chef_params)
        if @chef.save 
            flash[:success] = "Your account has been created"
            redirect_to recipes_path
        else
            render 'new'
        end 
    end 

    def edit
        @chef = Chef.find(params[:id])
    end 

    def update 
         @chef = Chef.find(params[:id])
         if @chef.update(chef_params)
            flash[:success]= "Your Profile has been updated"
            redirect_to @chef 
         else 
            render 'edit' 
         end 
    end 

    def show
        @chef = Chef.find(params[:id])
    end 

    private 
        def chef_params
            params.require(:chef).permit(:chefname, :email, :password)
        end 
end 