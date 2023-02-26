class MeetupsController < ApplicationController
  def index
    @meetups = Meetup.all
    @meetups = Meetup
    .select('meetups.*, meetup_categories.meetup_type')
  .joins(:meetup_categories)
  .find_by('meetups.meetup_category_id = 1 ') # this should be the last
  end

end
