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
        ##Modifier list

        ##Roll dice for character stats
        values = Array.new
        7.times do
            values.push(rand(6) + rand(6) + rand(6) + rand(6) + rand(6) + 5)
        end
        values.sort!
        @character = Character.new(character_params)
        race = Race.find(@character.race_id)
        job = Job.find(@character.job_id)
        @character.creator = current_user.name
        @character.user_id = current_user.id
        @character.constitution = values[1]
        @character.intelligence = values[2]
        @character.wisdom = values[3]
        @character.charisma = values[4]
        @character.strength = values[5]
        @character.dexterity = values[6]
    ##Modifiers
        @character.constitutionMod = (values[1]/2 -5)
        @character.intelligenceMod = (values[2]/2 -5)
        @character.wisdomMod = (values[3]/2 -5)
        @character.charismaMod = (values[4]/2 -5)
        @character.strengthMod = (values[5]/2 -5)
        @character.dexterityMod = (values[6]/2 -5)
        @character.hp = job.startingHP + @character.constitutionMod    
    ## From Race db
        @character.abilityScore = race.abilityScore
        @character.maxAge = race.maxAge
        @character.weight = race.weight
        @character.alignment = race.alignment
        @character.size = race.size
        @character.speed = race.speed
        @character.language1 = race.language1
        @character.language2 = race.language2
        @character.language3 = race.language3
        @character.darkVision = race.darkVision
        @character.weaponProf = race.weaponProf
        @character.prof = race.prof
        @character.extraAbility1 = race.extraAbility1
        @character.extraAbility2 = race.extraAbility2
        @character.extraAbility3 = race.extraAbility3
        @character.extraAbility4 = race.extraAbility4
        @character.extraAbility5 = race.extraAbility5
    
    ## From Job db
        @character.startingHP = job.startingHP
        @character.hitDice = job.hitDice
        @character.primaryAbility = job.primaryAbility
        @character.savingThrow1 = job.savingThrow1
        @character.savingThrow2 = job.savingThrow2
        @character.armorPref = job.armorPref
        @character.weaponPref = job.weaponPref
        @character.profBonus = job.profBonus
        @character.skills = job.skills
        @character.startingEquip = job.startingEquip
        @character.spellSlots = job.spellSlots
        @character.spells = job.spells
        @character.cantrip = job.cantrip
    
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
  


