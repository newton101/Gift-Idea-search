require 'json'

class GiftIdeaData
  class << self
    def fetch
      parsed['gift_ideas'].map { |gift_idea| gift_idea['gift_idea'] }
    end

    def parsed
      JSON.parse(raw)
    end

    def raw
      File.read('code_challenge.json')
    end
  end
end

class GiftIdea
  def self.data(data_store=GiftIdeaData)
    @data ||= data_store.fetch
  end

  def self.all
    data.map { |record| new(record) }
  end

  def self.originals
    all.reject(&:original_id)
  end

  def self.find(id)
    new(data.select { |record| record.fetch('id') == id }.first)
  end

  attr_reader :attributes

  def initialize(attributes={})
    @attributes = attributes
  end

  def method_missing(name, *args, &block)
    attributes[name.to_s]
  end

end