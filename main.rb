# coding: utf-8

require 'bundler'
Bundler.require

require 'yaml'

options = Selenium::WebDriver::Chrome::Options.new
options.add_argument('--headless')
options.add_argument('--window-size=800x3500')
driver = Selenium::WebDriver.for :chrome, options: options
url = 'https://www4.city.kanazawa.lg.jp/17021/bp/salon_s.html'
driver.navigate.to url

y = YAML.load_file('./inputs.yml')

y.each do |k, v|
  if v['t'] == 'text'
    element = driver.find_element(:name, k.to_s)
    element.send_keys(v['a'])
  end

  if v['t'] == 'radio'
    driver.find_element(:id, v['a']).click
  end
end

element = driver.find_element(:name, 'ENQFORM')
element.submit

driver.save_screenshot './confirm.png'
`open ./confirm.png`

if ARGV[0] != 'CONFIRM'
  puts 'if OK then to add **CONFIRM** parameter ex) bundle exec ruby main.rb CONFIRM'
  return
end

element = driver.find_element(:name, 'ENQFORM')
element.submit

driver.save_screenshot './result.png'
`open ./result.png`
