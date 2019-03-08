def reformat_languages(languages)
  new_hash = {}
  languages.each do |category, lang|
    lang.each do |name, style|
      style.each do |key, value|
        new_hash[name] = {
          :type => Key,
          :style => []
        }
        new_hash[name][:style] << category
      end
    end
  end
  new_hash
end