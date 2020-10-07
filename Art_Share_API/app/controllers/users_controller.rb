class UsersController < ApplicationController

    def index
        users = User.all
        render json: users
    end 

    def create #create ...follow class[...]
        # debugger
        x = User.new(users_params)
        if x.save #want to return false
            render json: x
        else 
            render json: x.errors.full_messages, status:422
        end 
    end

    def show
        user = User.find(params[:id]) #only need id dont need top level id
        render json: user
        #:id is wild card and points to
    end

    def update
        user = User.find(params[:id]) #only need id dont need top level id
        if user.update(users_params) #AR update method that acts on instance
          redirect_to show_user_url(user)  #redirect to show
        else
          render json: user.errors.full_messeges, status: :unprocessable_entity #meessage for error
        end
    end

    def destroy
        user = User.find(params[:id]) #only need id dont need top level id
        user.destroy 
        redirect_to users_url #do not need to pass arg because its not looking for :id wildcard
        #does .all and shows whats still there
    end 

    private 

    def users_params 
        params.require(:user).permit(:username)
    end


end

