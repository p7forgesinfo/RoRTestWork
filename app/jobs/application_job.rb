class ApplicationJob < ActiveJob::Base
  queue_as :default

  def perform(*args)
    # Do something later
    puts "--->>> It's from ActiveJob::Base"
  end
end
