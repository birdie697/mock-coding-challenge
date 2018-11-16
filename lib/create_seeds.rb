#require 'pry'
require 'httparty'
require 'nokogiri'

File.open('db/seeds.rb', 'w') do |file|
  file.puts '#create seeds.rb'
  file.puts '#from lib/create_seeds.rb'
  file.puts '#by running: $ rails runner lib/create_seeds.rb'
  file.puts '#'
  file.puts '#empty the Contributor table, then the Repo table'
  file.puts ''
  file.puts 'Contributor.destroy_all'
  file.puts 'Repo.destroy_all'
  file.puts ''
end

def seed_planter(file)
  url = 'https://github.com/trending?since=weekly'
  unparsed_page = HTTParty.get(url)
  parsed_page = Nokogiri::HTML(unparsed_page)

  trending_tiles = parsed_page.css('li.col-12.d-block.width-full.py-4.border-bottom')

  index = 1

  trending_tiles.each do |trending_tile|
    name = trending_tile.css('h3').text.strip
    description = trending_tile.css('p.col-9.d-inline-block.text-gray.m-0.pr-4').text.strip

    language = trending_tile.css('div.f6.text-gray.mt-2')[0].css("span[itemprop='programmingLanguage']").children.text.strip

    if language.empty?
      file.puts "repo#{index} = Repo.create name: '#{name}', description: '#{description}'"
    else
      file.puts "repo#{index} = Repo.create name: '#{name}', description: '#{description}', language: '#{language}'"
    end

    primary_contributors = trending_tile.css('div.f6.text-gray.mt-2')[0].css('span.d-inline-block.mr-3').last.css('a.d-inline-block')

    primary_contributors.each do |primary_contributor|
      contributor = (primary_contributor.attributes['href'].value).gsub("/", "")
      file.puts "Contributor.create name: '#{contributor}', repo: repo#{index}"
    end

    file.puts ""
    index += 1
  end
end

File.open('db/seeds.rb', 'a') do |file|
  seed_planter(file)
end
