class JobsController < ApplicationController
    def new
    end
    def show
        @job = Job.find(params[:id])
    end
    
    def index
        @jobs = Job.all
    end
    
    private
    def job_params
         params.require(:job)
         .permit(:name, :startingHP, :hitDice, :primaryAbility, :savingThrow1, 
         :savingThrow2, :armorPref, :weaponPref, :profBonus, :skills, 
         :startingEquip, :cantrip, :spellSlots, :spells)
    end
   
end
