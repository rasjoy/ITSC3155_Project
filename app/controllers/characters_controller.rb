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
        values = Array.new
        6.times do
            values.push(rand(6) + rand(6) + rand(6) + 3)
        end
        values.sort!
        @character = Character.new(character_params)
        @character.creator = current_user.name
        @character.user_id = current_user.id
        @character.hp = 0
        @character.constitution = values[0]
        @character.intelligence = values[1]
        @character.wisdom = values[2]
        @character.charisma = values[3]
        @character.strength = values[4]
        @character.dexterity = values[5]
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
  


