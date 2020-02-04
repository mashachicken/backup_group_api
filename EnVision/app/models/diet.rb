class Diet

  def initialize(diet)
    @diet = diet
  end

  def get_diet_nutrition
    response = HTTParty.get('http://localhost:3001/diets/search?' + @diet)
    response["nutrition"]
  end

  def get_diet_environment
    response = HTTParty.get("http://localhost:3001/diets/search?diet_type=#{@diet}")
    body = JSON.parse(response.body)
    body["environmental_impact"]
  end
end
