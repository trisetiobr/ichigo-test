class Recipe
  attr_reader :recipes, :name, :ingredients, :method_steps

  def initialize(name)
    @name = name
    @ingredients = []
    @method_steps = []
    @recipes = {}
  end

  public

  def self.clear
    @recipes = {}
  end

  def self.describe(&block)
    instance_eval(&block)
  end

  def self.recipe(recipe_name, &block)
    recipe = Recipe.new(recipe_name)
    recipe.instance_eval(&block)
    @recipes[recipe_name] = recipe
  end

  def self.for(recipe_name)
    @recipes[recipe_name]
  end

  private

  def ingredient(ingredient_step)
    @ingredients << ingredient_step
  end

  def method(&block)
    instance_eval(&block)
  end

  def step(description)
    @method_steps << description
  end
end
