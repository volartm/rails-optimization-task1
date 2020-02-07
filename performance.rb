require 'rspec-benchmark'
require_relative 'task-1'

RSpec.configure do |config|
  config.include RSpec::Benchmark::Matchers
end

describe 'Perfomance' do
  # describe '"work" linearly' do
    it 'work should run under 30 seconds' do
      expect { work }.to perform_under(15).ms.warmup(1).times.sample(1).times
    end
  # end
end
