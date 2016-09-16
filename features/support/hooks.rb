Before do
  case ENV['BROWSER']
    when 'ie'
      browser = Watir::Browser.new :ie
      browser.timeout = 240
    when 'ff'
      browser = Watir::Browser.new :ff
    when 'chrome'
      browser = Watir::Browser.new :chrome
    else
      browser = Watir::Browser.new :ie
  end

  $perfil = ENV['PERFIL']
  $browser = browser
end

AfterStep do
  if $encoded_img != nil
    embed("data:image/png;base64,#{$encoded_img}",'image/png')
  end

  $encoded_img = nil
end

After do |scenario|
  if scenario.failed?
    sleep 1
    encoded_img = $browser.driver.screenshot_as(:base64)
    embed("data:image/png;base64,#{encoded_img}",'image/png')
  end
  $browser.close
end
