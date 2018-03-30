class AnimalsController < ApplicationController

def index
  @animals = Animal.all
end

def new
  @animal = Animal.new
end

def create
  raw_animal = params[:animal]
  animal = Animal.new

  animal.name = raw_animal.name
  animal.species = raw_animal.species
  animal.age = raw_animal.age

  if animal.save
    redirect_to animals_path
  end
end

def show
  @animal = Animal.find(params[:id])
end

def edit
  @animal = Animal.find(params[:id])
end

def update

end

def destroy

end

end
