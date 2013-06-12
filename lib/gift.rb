require 'json'
class Gift

  def self.find(title)
  	json_data = '{"gift_ideas":[{"gift_idea":{"title":"Porsche 911 Carerra S","id":null,"type":"car"}},{"gift_idea":{"title":"Porsche 911 Carerra S","id":2,"type":"car"}},{"gift_idea":{"title":"Hugo_boss","id":null,"type":"handbag"}}]}'
  	parsed = JSON.parse(json_data)
    results = parsed["gift_ideas"].select do|gift| 
    	gift["gift_idea"]["title"] == title && gift["gift_idea"]["id"] == nil 
    end
  end
end