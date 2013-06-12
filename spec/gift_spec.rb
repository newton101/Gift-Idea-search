require 'spec_helper'
require 'json'
require 'gift'

describe Gift do
  describe '#results_for' do
    context 'given a json string and gift name' do
    	it 'should return records for that title' do
    		result = Gift.results_for("Porsche 911 Carerra S")
    		result.first["gift_idea"]["title"].should eq "Porsche 911 Carerra S"
    	end
      it 'should return all records with that title' do
        result = Gift.results_for("Porsche 911 Carerra S")
        result.count.should eq 1
      end
      it 'should not return record if ID is null' do
        result = Gift.results_for("Porsche 911 Carerra S")
        result.count.should_not eq 2
      end
     end
  end	
end

