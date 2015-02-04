class Beard < Mustache

  def trim_last
    lambda do |text|
      rendered = render(text)
      regex = /,([\s]*)\z/

      matches = rendered.match(regex)

      if matches.length == 2
        replaced = matches[1]
      else
        replaced = ""
      end

      rendered.gsub!(regex, replaced)

      return rendered
    end
  end

end