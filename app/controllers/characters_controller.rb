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
       mod = Array.new(31)
..1...-5
..2...	-4
..3...	-4
..4...	-3
..5	-3
..6	-2
..7	-2
..8	-1
..9	-1
..10	0
..11	0
..12	1
..13	1
..14	2
..15	2
..16	3
..17	3
..18	4
..19	4
..20	5
..21	5
..22	6
23	6
24	7
25	7
26	8
27	8
28	9
29	9
30	10
                   
       ##Roll dice for character stats
       values = Array.new
       6.times do
           values.push(rand(6) + rand(6) + rand(6) + 3)
       end
       values.sort!
       @character = Character.new(character_params)
       race = Race.find(@character.race_id)
       job = Job.find(@character.job_id)
       @character.creator = current_user.name
       @character.user_id = current_user.id
       @character.hp = job.startingHP
       @character.constitution = values[0]
       @character.intelligence = values[1]
       @character.wisdom = values[2]
       @character.charisma = values[3]
       @character.strength = values[4]
       @character.dexterity = values[5]
   ##Modifiers
       @character.constitutionMod = mod[values[0]]
       @character.intelligenceMod = mod[values[1]]
       @character.wisdomMod = mod[values[2]]
       @character.charismaMod = mod[values[3]]
       @character.strengthMod = mod[values[4]]
       @character.dexterityMod = mod[values[5]]
   
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
