require_relative 'gift_idea_index'

class SearchGiftIdeas
  attr_reader :gift_ideas

  def self.search(string)
    new.search(string)
  end

  def initialize(gift_ideas=GiftIdea.originals)
    @gift_ideas = gift_ideas
  end

  def search(string)
    search_ids(string).map { |id| GiftIdea.find(id) }
  end

  private

  def search_ids(string)
    string.split.map { |term| index[term] }.flatten.uniq
  end

  def index(indexer=GiftIdeaIndex)
    @index ||= indexer.new(gift_ideas).index
  end
end