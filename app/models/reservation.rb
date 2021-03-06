class Reservation < ApplicationRecord
  belongs_to :pickadate, dependent: :destroy
  belongs_to :membership_number_id, optional: true
  belongs_to :exam_content_id, optional: true
  belongs_to :bothering_start

  def reservation_date
  	  @pickadate = Pickadate.find_by(id: self.pickadate_id)
	  return @pickadate.date + @pickadate.time
  end

  def preferred_datentime
 	  return Pickadate.find_by(id: self.pickadate_id).date
  end

end
