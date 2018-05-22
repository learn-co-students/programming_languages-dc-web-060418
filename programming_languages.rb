require "pry"

def reformat_languages(languages)
  # your code here
  new_hash = {}
# lang->:00(it's style)->ruby-> type-> interpreted
#   new format should look like:
# {ruby->
#   {
#     type-> interpreted,
#     style->:00
#   },
#   python->{
#     type-> interpreted,
#     style->:00
#   }, etc.


# First pull out and place lang_names

  languages.each do | style_name, lang_name_prop|
    #binding.pry
    lang_name_prop.each do |lang_name, attributes |
#binding.pry
      if new_hash[lang_name] == nil
        new_hash[lang_name] = {}
      end
      if new_hash[lang_name][:style] ==  nil
      new_hash[lang_name] = {style: []}
      # new_hash[lang_name][:style].push(style_name)
      # else
      end
      new_hash[lang_name][:style].push(style_name)
      attributes.each do |type_key, value_key|
        #binding.pry
        new_hash[lang_name][type_key] = value_key
      end

    end
  end
  new_hash
end
#it's putting the type second and the style first... figure out how to flip that
