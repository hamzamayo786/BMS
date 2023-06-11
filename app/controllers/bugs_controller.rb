class BugsController < ApplicationController
        before_action :set_bug, only: [:edit, :update, :show, :destroy] 
        
        def index
    
            @bugs   = Bug.all 
            
        end
    
        def new
            @bug = Bug.new
        end
    
        def create
            @bug = Bug.new(bug_params)
            if @bug.save
                redirect_to bugs_path , notice: 'Bug Has been created successfully'
            else
                render :new
            end
        end
    
        def edit
            
        end
    
        def update
            if @bug.update(bug_params)
                redirect_to bugs_path , notice: 'Bug Has been Updated successfully'
            else
                render :edit
            end
        end
    
        def show 
        
        end
    
        def destroy
            if @bug.destroy
                redirect_to bugs_path , notice: 'bug Has been Deleted successfully'
           
            end 
        end
    
        private
        def bug_params
            params.require(:bug).permit(:title, :description, :priority, :est_days,
            :status, :user_id)
        end
    
        def set_bug
            @bug =Bug.find(params[:id])
    
        rescue ActiveRecord::RecordNotFound => error
            redirect_to bugs_path, notice: error 
        end
    

    
    
end
