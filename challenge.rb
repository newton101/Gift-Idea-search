require_relative 'gift_idea'
require_relative 'search_gift_ideas'

puts SearchGiftIdeas.search('new').map(&:title)

