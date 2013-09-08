require_relative 'gift_idea'
require_relative 'search_gift_ideas'
require_relative 'gift_idea_index'


puts SearchGiftIdeas.search('new').map(&:title)

