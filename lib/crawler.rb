#require 'pry'
require 'httparty'
require 'nokogiri'

def crawler
  url = 'https://github.com/trending?since=weekly'
  unparsed_page = HTTParty.get(url)
  parsed_page = Nokogiri::HTML(unparsed_page)

  trending_tiles = parsed_page.css('li.col-12.d-block.width-full.py-4.border-bottom')

  javascript_repo_count = 0
  no_programming_language_specified_count = 0

  trending_tiles.each do |trending_tile|
    name = trending_tile.css('h3').text.strip
    description = trending_tile.css('p.col-9.d-inline-block.text-gray.m-0.pr-4').text.strip

    language = trending_tile.css('div.f6.text-gray.mt-2')[0].css("span[itemprop='programmingLanguage']").children.text.strip
    display_language = !language.empty? ? language : 'NA'

    if display_language == 'JavaScript'
      javascript_repo_count += 1
    elsif display_language == 'NA'
      no_programming_language_specified_count += 1
    end

    primary_contributors = trending_tile.css('div.f6.text-gray.mt-2')[0].css('span.d-inline-block.mr-3').last.css('a.d-inline-block')

    output_primary_contributors = []
    primary_contributors.each do |primary_contributor|
      output_primary_contributors << (primary_contributor.attributes['href'].value).gsub("/", "")
    end

    puts name
    puts "========================="
    puts description
    puts ""
    puts "Written primarily in " + display_language
    puts ""
    puts "Primary Contributors:  " + output_primary_contributors.join(', ')
    puts "-------------------------"
    puts ""
    puts ""
  end

puts "Programming Language Count Summary"
puts "----------------------------------"
puts "JavaScript:  #{javascript_repo_count}"
puts "No Programming Language Specified:  #{no_programming_language_specified_count}"


end

crawler
