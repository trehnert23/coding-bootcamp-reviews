class BootcampsController < ApplicationController
  def index
  end

  def search
  end

  def new
  end

  def create
  end


  def show
    @bootcamp = Bootcamp.find_by_id(params[:id])
    @bootcamp_user = User.find_by_id(Bootcamp.first.bootcamp_reviews.last.user_id).username
    @reviewsLength = @bootcamp.bootcamp_reviews.length - 1
    @locationTotal = 0
    @jobhelpTotal = 0
    @campusTotal = 0
    @worthYesTotal = 0
    @worthNoTotal = 0
    @employedTotal = 0
    @notEmployedTotal = 0
    @stillAttendingTotal = 0
    @notSeekingTotal = 0
    @bootcamp.bootcamp_reviews.each do |review|
      @locationTotal += review.location
      @jobhelpTotal += review.jobhelp
      @campusTotal += review.campus
      if review.worthit == "Yes"
        @worthYesTotal += 1
      else
        @worthNoTotal += 1
      end
      if review.hired == "Employed"
        @employedTotal += 1
      elsif review.hired == "Not Employed"
        @notEmployedTotal += 1
      elsif review.hired == "Still Attending"
        @stillAttendingTotal += 1
      elsif review.hired == "Not Seeking Employment"
        @notSeekingTotal += 1
      end
    end

    @employedAvg = @employedTotal/@reviewsLength.round(2)
    @notEmployedAvg = @notEmployedTotal/@reviewsLength.round(2)
    @stillAttendingAvg = @stillAttendingTotal/@reviewsLength.round(2)
    @notSeekingAvg = @notSeekingTotal/@reviewsLength.round(2)
    @noAvg = @worthNoTotal/@reviewsLength.round(2)
    @yesAvg = @worthYesTotal/@reviewsLength.round(2)
    @locationAvg = @locationTotal/@reviewsLength
    @jobhelpAvg = @jobhelpTotal/@reviewsLength
    @campusAvg = @campusTotal/@reviewsLength
    @overall = @locationAvg + @jobhelpAvg + @campusAvg
    @overallAvg = @overall / 3

  end

  def edit
  end

  def update
  end

  def destroy
  end
end
