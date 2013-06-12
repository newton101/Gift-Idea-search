require 'spec_helper'
require 'json'
require 'gift'

describe Gift do
  describe '#find' do
    context 'given a json string and gift name' do
    	it 'should return records for that title' do
    		json_string = '{"gift_ideas":[{"gift_idea":{"title":"Porsche 911 Carerra S","id":1,"type":"car"}},{"gift_idea":{"title":"Porsche 911 Carerra S","id":2,"type":"car"}},{"gift_idea":{"title":"Hugo_boss","id":null,"type":"handbag"}}]}'
    		parsed = JSON.parse(json_string)
    		result = Gift.find("Porsche 911 Carerra S")
    		p result
    	end
      it 'should return all records with that title' do
        json_string = '{"gift_ideas":[{"gift_idea":{"title":"Porsche 911 Carerra S","id":1,"type":"car"}},{"gift_idea":{"title":"Porsche 911 Carerra S","id":2,"type":"car"}},{"gift_idea":{"title":"Hugo_boss","id":null,"type":"handbag"}}]}'
        parsed = JSON.parse(json_string)
        result = Gift.find("Porsche 911 Carerra S")
        result.count.should eq 1
      end
      it 'should not return record if ID is null' do
        json_string = '{"gift_ideas":[{"gift_idea":{"title":"Porsche 911 Carerra S","id":1,"type":"car"}},{"gift_idea":{"title":"Porsche 911 Carerra S","id":2,"type":"car"}},{"gift_idea":{"title":"Hugo_boss","id":null,"type":"handbag"}}]}'
        parsed = JSON.parse(json_string)
        result = Gift.find("Porsche 911 Carerra S")
        result.count.should_not eq 2
      end
     end
  end	
end

