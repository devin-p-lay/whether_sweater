class BoredFacade
  class << self
    def get_two_activities(temp)
      activity1_data = if temp >= 60
                         BoredService.activity_data('recreational')
                       elsif temp >= 50 && temp < 60
                         BoredService.activity_data('busywork')
                       else
                         BoredService.activity_data('cooking')
                       end
      activity2_data = BoredService.activity_data('relaxation')
      [Activity.new(activity1_data), Activity.new(activity2_data)]
    end
  end
end