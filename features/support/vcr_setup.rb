require 'vcr'

VCR.configure do |c|
  c.cassette_library_dir = 'vcr_cassettes'
  c.hook_into  :webmock
  c.ignore_localhost = true
end

VCR.cucumber_tags do |t|
  t.tags '@googlemap', :use_scenario_name => true
end