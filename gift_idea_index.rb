class GiftIdeaIndex
  attr_reader :gift_ideas

  def initialize(gift_ideas)
    @gift_ideas = gift_ideas
  end

  def index
    {}.tap do |inverted_index|
      index_array.each do |record|
        record[:words].each do |word|
          add_to_index(inverted_index, word, record[:id])
        end
      end
    end
  end

  private

  def add_to_index(inverted_index, word, id)
    if inverted_index[word]
      inverted_index[word] = inverted_index[word] + [id]
    else
      inverted_index[word] = [id]
    end
  end

  def index_array
    @index_array ||= @gift_ideas.map do |gift_idea|
      { id:     gift_idea.id,
        words:  words_for(gift_idea.title, gift_idea.brand_name) }
    end
  end

  def words_for(*strings)
    strings.map do |string|
      string && string.split.map(&:downcase)
    end.flatten.compact.uniq
  end
end