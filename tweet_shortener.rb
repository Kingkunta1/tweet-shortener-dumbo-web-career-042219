require 'pry'
 def dictionary
dictionary = {
"hello" => 'hi',
"to"  =>  "2",
"two" => "2",
"too"  => '2',
"for"  => "4",
"For" => "4",
"four" => '4',
"be"  => 'b',
"you" => 'u',
"at" => "@",
"and" => "&",
}

end

def word_substituter(tweet)
  tweet.split.collect do |word|
    if dictionary.keys.include?(word)
    word = dictionary[word.downcase]
  else
    word
    end
  end.join(" ")
end


def bulk_tweet_shortener(tweets)
  tweets.each do |word|
    puts word_substituter(word)
  end
end


def selective_tweet_shortener(tweet)
  if tweet.length > 140
       word_substituter(tweet)
    else
      tweet.length < 140
      tweet
  end
end




def shortened_tweet_truncator(tweet)
  #binding.pry
 #binding.pry
  if word_substituter(tweet).length > 140
    #binding.pry
  tweet[0..139]
  else
    tweet.length < 140
    tweet


  end
end
