require_relative 'gift_idea'
require_relative 'search_gift_ideas'
require_relative 'gift_idea_index'
require 'benchmark'


puts SearchGiftIdeas.search('new').map(&:title)

