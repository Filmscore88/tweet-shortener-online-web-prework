require 'pry'
def dictionary 
  dictionary={ "hello"=> "hi", "to"=> "2", "two"=> "2", "too"=> "2", "for"=> "4", "four"=> "4", "be"=> "b", "you"=> "u", "at"=> "@", "and"=> "&"}
end 


def word_substituter(tweet)
  tweet.split(" ").map do |word|
      if dictionary.keys.include?(word.downcase)
        word = dictionary[word.downcase]
      else
        word
    end
  end.join(" ")
end


def bulk_tweet_shortener(tweets)
  
  tweets.collect do |x| puts word_substituter(x)
end 
end

def selective_tweet_shortener(tweet)
    if tweet.chars.length > 140  
    word_substituter(tweet)
  else 
    tweet 
  end 
end 

def shortened_tweet_truncator(tweet)
  
  new_tweet=selective_tweet_shortener(tweet)
  if new_tweet.chars.length> 140 
    puts new_tweet[0..140]

end 
end 


