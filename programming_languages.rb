def reformat_languages(languages)
  # your code here
  formatted_languages = {}
  languages[:oo].each do |language, type|
    formatted_languages[language] = type
    formatted_languages[language][:style] = [:oo]
  end
    
  languages[:functional].each do |language, type|
    if formatted_languages.keys.include?(language)
      formatted_languages[language][:style] << :functional
    else
      formatted_languages[language] = type
      formatted_languages[language][:style] = [:functional]
    end
  end
  formatted_languages
end

#for help, here's the hash
languages = {
  :oo => {
    :ruby => {
      :type => "interpreted"
    },
    :javascript => {
      :type => "interpreted"
    },
    :python => {
      :type => "interpreted"
    },
    :java => {
      :type => "compiled"
    }
  },
  :functional => {
    :clojure => {
      :type => "compiled"
    },
    :erlang => {
      :type => "compiled"
    },
    :scala => {
      :type => "compiled"
    },
    :javascript => {
      :type => "interpreted"
    }
 
  }
}
#testing
#puts reformat_languages(languages)
