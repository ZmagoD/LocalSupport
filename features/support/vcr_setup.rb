require 'vcr'
require 'capybara'
require 'capybara-webkit'

VCR.configure do |c|
  c.allow_http_connections_when_no_cassette = true
  c.default_cassette_options = {  match_requests_on: [:uri, :body, :method],
                                  record: :new_episodes }
  c.cassette_library_dir = 'features/vcr_cassettes'
  c.hook_into :webmock
  #c.ignore_localhost = true
end

VCR.cucumber_tags do |t|
  t.tag  '@vcr', :use_scenario_name => true
end
Capybara::Webkit.configure do |config|
  config.allow_url("http://fonts.googleapis.com/css?family=Roboto:300,400,500,700")

  config.allow_url("http://maps.google.com/maps/api/js?v=3.13&sensor=false&libraries=geometry")

  config.allow_url("http://maps.google.com/maps-api-v3/api/js/20/16/main.js")

  config.allow_url("http://maps.google.com/maps-api-v3/api/js/20/16/geometry.js")

  config.allow_url("maps.google.com")

  config.allow_url("http://www.google-analytics.com/analytics.js")

  config.allow_url("www.google-analytics.com")


  config.allow_url("https://www.expeditedssl.com/ssl-secure-badge.png")

  config.allow_url("www.expeditedssl.com")

  config.allow_url("http://maps.google.com/maps-api-v3/api/js/20/16/common.js")


  config.allow_url("http://maps.googleapis.com/maps/api/js/StaticMapService.GetMapImage?1m2&1i523028&2i347950&2e1&3u12&4m2&1u556&2u609&5m5&1e0&5sen-US&6sus&10b1&12b1&token=27655")


  config.allow_url("http://maps.google.com/maps-api-v3/api/js/20/16/util.js")

  config.allow_url("http://maps.google.com/maps-api-v3/api/js/20/16/onion.js")
  config.allow_url("maps.google.com")

  config.allow_url("http://maps.gstatic.com/mapfiles/openhand_8_8.cur")

  config.allow_url("maps.gstatic.com")

  config.allow_url("http://maps.google.com/maps-api-v3/api/js/20/16/controls.js")

  config.allow_url("http://maps.gstatic.com/mapfiles/transparent.png")

  config.allow_url("maps.gstatic.com")

  config.allow_url("http://mt1.googleapis.com/vt?pb=!1m4!1m3!1i12!2i2043!3i1359!2m3!1e0!2sm!3i325000000!3m9!2sen-US!3sUS!5e18!12m1!1e47!12m3!1e37!2m1!1ssmartmaps!4e0")

  config.allow_url("mt1.googleapis.com")

  config.allow_url("http://mt0.googleapis.com/vt?pb=!1m4!1m3!1i12!2i2044!3i1359!2m3!1e0!2sm!3i325000000!3m9!2sen-US!3sUS!5e18!12m1!1e47!12m3!1e37!2m1!1ssmartmaps!4e0")

  config.allow_url("mt0.googleapis.com")

  config.allow_url("http://mt0.googleapis.com/vt?pb=!1m4!1m3!1i12!2i2044!3i1360!2m3!1e0!2sm!3i325000000!3m9!2sen-US!3sUS!5e18!12m1!1e47!12m3!1e37!2m1!1ssmartmaps!4e0")

  config.allow_url("mt0.googleapis.com")

  config.allow_url("http://mt0.googleapis.com/vt?pb=!1m4!1m3!1i12!2i2042!3i1359!2m3!1e0!2sm!3i325000000!3m9!2sen-US!3sUS!5e18!12m1!1e47!12m3!1e37!2m1!1ssmartmaps!4e0")

  config.allow_url("mt0.googleapis.com")

  config.allow_url("http://mt0.googleapis.com/vt?pb=!1m4!1m3!1i12!2i2042!3i1360!2m3!1e0!2sm!3i325000000!3m9!2sen-US!3sUS!5e18!12m1!1e47!12m3!1e37!2m1!1ssmartmaps!4e0")


  config.allow_url("http://mt1.googleapis.com/vt?pb=!1m4!1m3!1i12!2i2043!3i1360!2m3!1e0!2sm!3i325000000!3m9!2sen-US!3sUS!5e18!12m1!1e47!12m3!1e37!2m1!1ssmartmaps!4e0")

  config.allow_url("mt1.googleapis.com")

  config.allow_url("http://maps.google.com/maps-api-v3/api/js/20/16/stats.js")

  config.allow_url("http://maps.googleapis.com/maps/api/js/ViewportInfoService.GetViewportInfo?1m6&1m2&1d51.39276236210985&2d-0.6234148580695091&2m2&1d51.79538445794644&2d-0.03896342862935853&2u12&4sen-US&5e0&6sm@325000000&7b0&8e0&9b0&callback=_xdc_._vjfi8d&token=82217")

  config.allow_url("maps.googleapis.com")

  config.allow_url("http://mt0.googleapis.com/vt?pb=!1m4!1m3!1i12!2i2042!3i1358!1m4!1m3!1i12!2i2042!3i1359!1m4!1m3!1i12!2i2043!3i1358!1m4!1m3!1i12!2i2043!3i1359!1m4!1m3!1i12!2i2044!3i1358!1m4!1m3!1i12!2i2044!3i1359!1m4!1m3!1i12!2i2045!3i1358!1m4!1m3!1i12!2i2045!3i1359!1m4!1m3!1i12!2i2042!3i1360!1m4!1m3!1i12!2i2042!3i1361!1m4!1m3!1i12!2i2043!3i1360!1m4!1m3!1i12!2i2043!3i1361!1m4!1m3!1i12!2i2044!3i1360!1m4!1m3!1i12!2i2044!3i1361!1m4!1m3!1i12!2i2045!3i1360!1m4!1m3!1i12!2i2045!3i1361!2m3!1e0!2sm!3i325000000!3m9!2sen-US!3sUS!5e18!12m1!1e47!12m3!1e37!2m1!1ssmartmaps!4e3&callback=_xdc_._fd28z&token=58778")

  config.allow_url("mt0.googleapis.com")

  config.allow_url("http://fonts.googleapis.com/css?family=Roboto:300,400,500,700")
  config.allow_url("fonts.googleapis.com")

  config.allow_url("http://maps.google.com/maps-api-v3/api/js/20/16/marker.js")

  config.allow_url("maps.google.com")

  config.allow_url("http://mt0.googleapis.com/vt?pb=!1m4!1m3!1i12!2i2044!3i1358!2m3!1e0!2sm!3i325000000!3m9!2sen-US!3sUS!5e18!12m1!1e47!12m3!1e37!2m1!1ssmartmaps!4e0")

  config.allow_url("http://mt0.googleapis.com/vt?pb=!1m4!1m3!1i12!2i2044!3i1361!2m3!1e0!2sm!3i325000000!3m9!2sen-US!3sUS!5e18!12m1!1e47!12m3!1e37!2m1!1ssmartmaps!4e0")

  config.allow_url("mt0.googleapis.com")

  config.allow_url("http://mt1.googleapis.com/vt?pb=!1m4!1m3!1i12!2i2043!3i1358!2m3!1e0!2sm!3i325000000!3m9!2sen-US!3sUS!5e18!12m1!1e47!12m3!1e37!2m1!1ssmartmaps!4e0")

  config.allow_url("mt1.googleapis.com")

  config.allow_url("http://mt1.googleapis.com/vt?pb=!1m4!1m3!1i12!2i2043!3i1361!2m3!1e0!2sm!3i325000000!3m9!2sen-US!3sUS!5e18!12m1!1e47!12m3!1e37!2m1!1ssmartmaps!4e0")

  config.allow_url("http://mt1.googleapis.com/vt?pb=!1m4!1m3!1i12!2i2045!3i1359!2m3!1e0!2sm!3i325000000!3m9!2sen-US!3sUS!5e18!12m1!1e47!12m3!1e37!2m1!1ssmartmaps!4e0")

  config.allow_url("mt1.googleapis.com")

  config.allow_url("http://mt1.googleapis.com/vt?pb=!1m4!1m3!1i12!2i2045!3i1360!2m3!1e0!2sm!3i325000000!3m9!2sen-US!3sUS!5e18!12m1!1e47!12m3!1e37!2m1!1ssmartmaps!4e0")

  config.allow_url("http://mt0.googleapis.com/vt?pb=!1m4!1m3!1i12!2i2042!3i1358!2m3!1e0!2sm!3i325000000!3m9!2sen-US!3sUS!5e18!12m1!1e47!12m3!1e37!2m1!1ssmartmaps!4e0")
  config.allow_url("http://mt0.googleapis.com/vt?pb=!1m4!1m3!1i12!2i2042!3i1361!2m3!1e0!2sm!3i325000000!3m9!2sen-US!3sUS!5e18!12m1!1e47!12m3!1e37!2m1!1ssmartmaps!4e0")
  config.allow_url("mt0.googleapis.com")
  config.allow_url("http://mt1.googleapis.com/vt?pb=!1m4!1m3!1i12!2i2042!3i1358!1m4!1m3!1i12!2i2042!3i1359!1m4!1m3!1i12!2i2043!3i1358!1m4!1m3!1i12!2i2043!3i1359!1m4!1m3!1i12!2i2044!3i1358!1m4!1m3!1i12!2i2044!3i1359!1m4!1m3!1i12!2i2045!3i1358!1m4!1m3!1i12!2i2045!3i1359!1m4!1m3!1i12!2i2042!3i1360!1m4!1m3!1i12!2i2042!3i1361!1m4!1m3!1i12!2i2043!3i1360!1m4!1m3!1i12!2i2043!3i1361!1m4!1m3!1i12!2i2044!3i1360!1m4!1m3!1i12!2i2044!3i1361!1m4!1m3!1i12!2i2045!3i1360!1m4!1m3!1i12!2i2045!3i1361!2m3!1e0!2sm!3i325191102!3m9!2sen-US!3sUS!5e18!12m1!1e47!12m3!1e37!2m1!1ssmartmaps!4e3&callback=_xdc_._z56mk6&token=100418")
  config.allow_url("mt1.googleapis.com")
  config.allow_url("http://maps.gstatic.com/mapfiles/api-3/images/google4.png")
  config.allow_url("http://maps.gstatic.com/mapfiles/api-3/images/mapcnt6.png")
  config.allow_url("http://maps.gstatic.com/mapfiles/api-3/images/cb_scout2.png")

  config.allow_url("http://maps.gstatic.com/mapfiles/mv/imgs8.png")
  config.allow_url("maps.gstatic.com")
  config.allow_url("http://maps.google.com/maps-api-v3/api/js/20/16/overlay.js")
  config.allow_url("maps.google.com")
  config.allow_url("https://mt.googleapis.com/vt/icon/name=icons/spotlight/spotlight-poi.png")
  config.allow_url("mt.googleapis.com")

  config.allow_url("https://maps.gstatic.com/intl/en_ALL/mapfiles/markers2/measle.png")
  config.allow_url("maps.gstatic.com")
  config.allow_url("http://mt0.googleapis.com/vt?pb=!1m4!1m3!1i12!2i2044!3i1359!2m3!1e0!2sm!3i325157260!3m9!2sen-US!3sUS!5e18!12m1!1e47!12m3!1e37!2m1!1ssmartmaps!4e0")
  config.allow_url("http://mt0.googleapis.com/vt?pb=!1m4!1m3!1i12!2i2044!3i1360!2m3!1e0!2sm!3i325181739!3m9!2sen-US!3sUS!5e18!12m1!1e47!12m3!1e37!2m1!1ssmartmaps!4e0")

  config.allow_url("http://mt1.googleapis.com/vt?pb=!1m4!1m3!1i12!2i2043!3i1359!2m3!1e0!2sm!3i325142856!3m9!2sen-US!3sUS!5e18!12m1!1e47!12m3!1e37!2m1!1ssmartmaps!4e0")

  config.allow_url("http://mt1.googleapis.com/vt?pb=!1m4!1m3!1i12!2i2043!3i1360!2m3!1e0!2sm!3i325181018!3m9!2sen-US!3sUS!5e18!12m1!1e47!12m3!1e37!2m1!1ssmartmaps!4e0")


  config.allow_url("http://mt0.googleapis.com/vt?pb=!1m4!1m3!1i12!2i2042!3i1359!2m3!1e0!2sm!3i325163024!3m9!2sen-US!3sUS!5e18!12m1!1e47!12m3!1e37!2m1!1ssmartmaps!4e0")

  config.allow_url("http://mt0.googleapis.com/vt?pb=!1m4!1m3!1i12!2i2042!3i1360!2m3!1e0!2sm!3i325181018!3m9!2sen-US!3sUS!5e18!12m1!1e47!12m3!1e37!2m1!1ssmartmaps!4e0")

  config.allow_url("http://mt1.googleapis.com/vt?pb=!1m4!1m3!1i12!2i2043!3i1358!2m3!1e0!2sm!3i325163024!3m9!2sen-US!3sUS!5e18!12m1!1e47!12m3!1e37!2m1!1ssmartmaps!4e0")

  config.allow_url("http://mt0.googleapis.com/vt?pb=!1m4!1m3!1i12!2i2044!3i1358!2m3!1e0!2sm!3i325181739!3m9!2sen-US!3sUS!5e18!12m1!1e47!12m3!1e37!2m1!1ssmartmaps!4e0")

  config.allow_url("http://mt1.googleapis.com/vt?pb=!1m4!1m3!1i12!2i2043!3i1361!2m3!1e0!2sm!3i325181018!3m9!2sen-US!3sUS!5e18!12m1!1e47!12m3!1e37!2m1!1ssmartmaps!4e0")

  config.allow_url("http://mt0.googleapis.com/vt?pb=!1m4!1m3!1i12!2i2044!3i1361!2m3!1e0!2sm!3i325181739!3m9!2sen-US!3sUS!5e18!12m1!1e47!12m3!1e37!2m1!1ssmartmaps!4e0")
  config.allow_url("http://mt0.googleapis.com/vt?pb=!1m4!1m3!1i12!2i2042!3i1358!2m3!1e0!2sm!3i325163024!3m9!2sen-US!3sUS!5e18!12m1!1e47!12m3!1e37!2m1!1ssmartmaps!4e0")

  config.allow_url("http://mt0.googleapis.com/vt?pb=!1m4!1m3!1i12!2i2042!3i1361!2m3!1e0!2sm!3i325181018!3m9!2sen-US!3sUS!5e18!12m1!1e47!12m3!1e37!2m1!1ssmartmaps!4e0")

  config.allow_url("mt0.googleapis.com")

  config.allow_url("http://mt1.googleapis.com/vt?pb=!1m4!1m3!1i12!2i2045!3i1359!2m3!1e0!2sm!3i325188942!3m9!2sen-US!3sUS!5e18!12m1!1e47!12m3!1e37!2m1!1ssmartmaps!4e0")

  config.allow_url("http://mt1.googleapis.com/vt?pb=!1m4!1m3!1i12!2i2045!3i1360!2m3!1e0!2sm!3i325188942!3m9!2sen-US!3sUS!5e18!12m1!1e47!12m3!1e37!2m1!1ssmartmaps!4e0")

  config.allow_url("http://mt1.googleapis.com/vt?pb=!1m4!1m3!1i12!2i2045!3i1358!2m3!1e0!2sm!3i325188942!3m9!2sen-US!3sUS!5e18!12m1!1e47!12m3!1e37!2m1!1ssmartmaps!4e0")

  config.allow_url("http://mt1.googleapis.com/vt?pb=!1m4!1m3!1i12!2i2045!3i1361!2m3!1e0!2sm!3i325188942!3m9!2sen-US!3sUS!5e18!12m1!1e47!12m3!1e37!2m1!1ssmartmaps!4e0")

  config.allow_url("mt1.googleapis.com")

  config.allow_url("http://csi.gstatic.com/csi?v=2&s=mapsapi3&action=apiboot&rt=jl.46,mc.162,mb.250,ep.448,smv.748,dm.748,prt.748,plt.632,vt.1062,mt.1062&size=556x609&maptype=m")

  config.allow_url("csi.gstatic.com")
end
