Given(/^a file "([^"]*)" is written$/) do |file|
  @file_path = File.expand_path("../../..", __FILE__)
  file_at_path = File.join(@file_path, file)
  puts file_at_path
  `touch #{file_at_path}`
end

Then(/^a file "([^"]*)" exists$/) do |file|
  file_at_path = File.join(@file_path, file)
  puts file_at_path
  expect(file_at_path).to be_an_existing_file
end