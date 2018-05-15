require "pry"
def reformat_languages(languages)
  # your code here
  new_languages = {}
  languages.each do |language_style, language_style_data|
    language_style_data.each do |language_name, language_data|
      if(!new_languages[language_name])
        new_languages[language_name] = {}
      end
      new_languages[language_name][:type] = language_data[:type]
      if(!!!new_languages[language_name][:style])
        new_languages[language_name][:style] = []
      end
       new_languages[language_name][:style] << language_style
    end
  end
  new_languages
end
