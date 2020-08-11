require 'pry'
require 'yaml'

def load_library(file_path)
    emoticons = YAML.load_file(file_path)
    new_hash = {}
    emoticons.each do |key, value|
      new_hash[key] = {} #sets the key (the emotion) as an empty hash
      new_hash[key][:english] = value[0]
      new_hash[key][:japanese] = value[1]
  end
  new_hash
end


def get_japanese_emoticon
  # code goes here
end

def get_english_meaning(file_path, emoticon)
  load_library(file_path)
  emoticon.each do |key, emoticon_pairs|
    if emoricon_pairs[1] == japanese_emoticon
      return key
    end
end
  return "Sorry, that emoticon was not found"
end
