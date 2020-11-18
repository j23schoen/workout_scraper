require 'httparty'
require 'nokogiri'
require 'pry'

require 'json'
tempHash = {
  "key_a" => "val_a",
  "key_b" => "val_b"
}
File.open("exercises.json","w") do |f|
  f.write(tempHash.to_json)
end

# response = HTTParty.get("https://www.bodybuilding.com/exercises/finder/#{1}")
#
# html_doc = Nokogiri::HTML(response)
# binding.pry
# p html_doc.css("div.ExResult-cell--nameEtc")[0]

# exercise name
# html_doc.css("div.ExResult-cell--nameEtc")[0].children.css(".ExResult-resultsHeading a").text.strip
#
# muscle type
# html_doc.css("div.ExResult-cell--nameEtc")[0].children.css(".ExResult-muscleTargeted a").text.strip
#
# equipment required
# html_doc.css("div.ExResult-cell--nameEtc")[0].children.css(".ExResult-equipmentType a").text.strip