class IngredientApi
  def self.api_call(ingr)
    app_id = ENV["APP_ID"]
    app_key = ENV["APP_KEY"]
    api_url = "https://api.edamam.com/api/food-database/v2/parser?&app_id=#{app_id}&app_key=#{app_key}&ingr=#{ingr}"
    HTTParty.get(api_url)
  end

  def self.suggestions(ingr)
    suggestions = []
    response = self.api_call(ingr)["hints"]
    response.each_with_index { |result, index|
      suggestions << result["food"] if index <= 9
    }
    return suggestions
  end
end
