class CharactersController < ApplicationController
    def new
        @character = Character.new
        # @job = Job.find(params[:job_id])
    end
    
    def index
        @characters = Character.all
    end
   
    def show
        @character = Character.find(params[:id])
    end
    
    def create
          @character = Character.new(character_params)
          @character.creator = current_user.name
          @character.user_id = current_user.id
        if @character.save
            redirect_to @character
        else
            render 'new'
        end
    end
    
    def edit
        @character = Character.find(params[:id])
    end
    
    def update
        @character = Character.find(params[:id])
        if @character.update(character_params)
            redirect_to @character
        else
            render 'edit'
        end
    end 
    def destroy
        @character = Character.find(params[:id])
        @character.destroy
        
        redirect_to characters_path
    end
    
    private
    def character_params
        params.require(:character).permit(:name, :race_id, :job_id,
        :hp, :strength, :dexterity, :constitution, :intelligence, :wisdom, :charisma, :cantrip, :creator, :user_id)
    end
    
end
  


