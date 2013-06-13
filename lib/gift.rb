require 'json'
class Gift

  def self.find_by_title title
    filtered_results_by title
  end

  def self.parse_json json
    parsed = JSON.parse json 
    parsed
  end

  def self.check_for_title gift, title
  	gift["gift_idea"]["title"] == title
  end

  def self.check_id_is_null gift
    gift["gift_idea"]["id"] == nil
  end

  def self.filtered_results_by title
  	json_collection = parse_json json_data 
    filter_all_by_title_and_id json_collection, title
  end

  private

  def self.json_data
    '{"gift_ideas":[{"gift_idea":{"title":"Porsche 911 Carerra S","id":null,"type":"car"}},{"gift_idea":{"title":"Porsche 911 Carerra S","id":2,"type":"car"}},{"gift_idea":{"title":"Hugo_boss","id":null,"type":"handbag"}}]}'  
  end

   def self.filter_all_by_title_and_id gifts_collection, title
    gifts_collection["gift_ideas"].select do|gift| 
      check_for_title(gift, title) &&  check_id_is_null(gift)
    end
  end
end