require 'report_builder'

  # Ex 1:
  ReportBuilder.configure do |config|
    config.json_path = 'cucumber_sample/logs'
    config.report_path = 'my_test_report'
    config.report_types = [:json, :html]
    config.report_tabs = [:overview, :features, :scenarios, :errors]
    config.report_title = 'My Test Results'
    config.compress_images = false
    config.additional_info = {browser: 'Chrome', environment: 'Stage 5'}
  end
