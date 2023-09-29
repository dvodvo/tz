class ApplicationController < ActionController::Base

  def timezones
    @timezones = Timezone.order(id: :asc).all
    @timezone_names = @timezones.pluck(:name)
  end

end
