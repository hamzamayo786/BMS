class MembersController < ApplicationController
    # before_action :set_member, only: [:edit, :update, :show, :destroy] 
    # # before_action :authenticate_user!, except: %i[index show]

    # def index

    #     @members = User.all 
        
    # end

    # def new
    #     @member = User.new
    #     # authorize @member
    # end

    # def create
    #     # authorize @member
    #     @member = User.new(member_params)
    #     if @member.save
    #         redirect_to members_path , notice: 'member Has been created successfully'
    #     else
    #         render :new
    #     end
    # end

    # def edit 
    # end

    # def update
    #     if @member.update(member_params)
    #         redirect_to members_path , notice: 'User Has been Updated successfully'
    #     else
    #         render :edit
    #     end
    # end

    # def show 
    #     # authorize @member
    
    # end

    # def destroy
    #     if @member.destroy
    #         redirect_to members_path , notice: 'User Has been Deleted successfully'
       
    #     end 
    # end

    # private
    # def member_params
    #     params.require(:member).permit(:email, :encrypted_password,:password_confirmation, :type)
    # end

    # def set_member
    #     @member =User.find(params[:id])

    # rescue ActiveRecord::RecordNotFound => error
    #     redirect_to members_path, notice: error 
    # end


        before_action :set_user, only: [:edit, :update, :show, :destroy] 
     #   before_action :authenticate_user!, except: %i[index show]
    
        def index
    
            @members = User.all 
            
        end
    
        def new
            @member = User.new
            authorize @user
        end
    
        def create
            authorize @user
            @user = User.new(user_params)
            if @user.save
                redirect_to users_path , notice: 'User Has been created successfully'
            else
                render :new
            end
        end
    
        def edit 
        end
    
        def update
            if @user.update(user_params)
                redirect_to users_path , notice: 'User Has been Updated successfully'
            else
                render :edit
            end
        end
    
        def show 
            authorize @user
        
        end
    
        def destroy
            if @user.destroy
                redirect_to users_path , notice: 'User Has been Deleted successfully'
           
            end 
        end
    
        private
        def user_params
            params.require(:user).permit(:email, :encrypted_password,:password_confirmation, :type)
        end
    
        def set_user
            @user =User.find(params[:id])
    
        rescue ActiveRecord::RecordNotFound => error
            redirect_to users_path, notice: error 
        end
    


end
