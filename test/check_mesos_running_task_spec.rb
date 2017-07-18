require_relative './spec_helper.rb'
require_relative '../bin/check-mesos-running-tasks.rb'
require_relative './fixtures.rb'

# rubocop:disable Style/ClassVars
class MesosRunningTaskCheck
  at_exit do
    @@autorun = false
  end
end

describe 'MesosRunningTaskCheck' do

  def check_running(parameters)
    check = MesosRunningTaskCheck.new parameters.split(' ')
    check.get_running_tasks mesos_metrics_response
  end

  before do
    @default_parameters = '--server localhost --mode eq --value 0'
    @check = MesosRunningTaskCheck.new @default_parameters.split(' ')
  end

  describe '#run' do
    it 'tests that running tasks  metrics are ok' do
      tasks_running = check_running '--server localhost --mode eq --value 0'
      expect(tasks_running).to be 9
    end

    it 'tests that an empty server response raises an error' do
      expect {@check.get_running_tasks '{}'}.to raise_error(/No tasks in server response/)
      expect {@check.get_running_tasks ''}.to raise_error(/Could not parse JSON/)
    end
  end
end
