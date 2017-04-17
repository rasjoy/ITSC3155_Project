class RacesController < ApplicationController
     def new
    end
    def show
        @race = Race.find(params[:id])
    end
    
    def index
        @races = Race.all
    end
    
    private
    def job_params
         params.require(:race)
         .permit(:name, :abilityScore, :maxAge, :weight, :alignment, :size, 
         :speed, :language1, :language2, :language3, :darkVision, :weaponPref, 
         :armorPref, :extraAbility1, :extraAbility2, :extraAbility3, :extraAbility4, 
         :extraAbility5)
    end
    
end
