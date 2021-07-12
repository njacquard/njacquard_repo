require 'watir'
require 'page-object'
require 'webdrivers'
require 'rspec'

# create global variables for pass/fail/scenario count
$passed=0
$failed=0
$scenario_count=0

Before do
  # use Watir to generate browser object (requires webdriver so no chromedriver path needs to be specified/harcoded)
  @browser = Watir::Browser.new :chrome
  @browser.window.maximize
end

# create a simple output of each scenario's execution
After do |scenario|
    if scenario.status.to_s=="passed"
      $passed+=1
    elsif scenario.status.to_s=="failed"
      $failed+=1
    end
    $scenario_count+=1
    # close browser instance
    @browser.close
  end

# on exit of test, put the execution report into console output
at_exit do |scenario|
  puts "==============================================================="
  puts  "Execution Report - Total Scenarios: #{$scenario_count} | Passed: #{$passed} | Failed: #{$failed}"
  puts "==============================================================="
end
