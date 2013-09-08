# Gift Idea Search

This is a simple program that searches a JSON dataset of 'gift idea' records and returns relevant matches.


###Run
The program can be run with the following command.

` $ ruby challenge_RUN_THIS.rb`

**Output**


```
Gansevoort Hotel Meatpacking New York
Christian Dior Diorshow New Look Mascara
```
(Results above for search term 'new')



###Interface

The program's interface, located in the executable file above, is as follows:

```ruby
 SearchGiftIdeas.search('search-term').map(&:title)
```

where 'search-term' refers to the item/keyword being looked up.

###Notes
As this challenge was done as a technical test with only a limited amount of time permitted, tests have not been included, although I intend to add those in the near future,


## The Challenge

Attached you will find a file with JSON data in it, the challenge is to write a program that takes a search string and returns all gift_idea records where the title or brand_name match the search string (decide for yourself what you think a reasonable definition of a match is).

You can filter out any records where the original_id is an integer and keep the records where it is 'null', as the records where it is an integer are duplicates.

The interface to your program is not important as long as it is intuitive enough for another programmer to run it, and you can use any programming language you prefer.