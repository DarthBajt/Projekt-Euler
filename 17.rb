require "to_words"
p (1..1000).map { |e| e.to_words.gsub(" ", "").length }.reduce :+
