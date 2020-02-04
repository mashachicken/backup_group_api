class Diet

  def initialized(diet)
    @diet = diet
  end

  def get_diet_nutrition
    response = HTTParty.get('localhost:3001/diets/search?' + @diet)
    response["nutrition"]
  end

  def get_diet_enviroment
    response = HTTParty.get('localhost:3001/diets/search?' + @diet)
    response["enviromental_impact"]
  end
end
