class Sinister < ApplicationRecord

  after_commit :store_values

  belongs_to :type_process, optional: true

  def self.get_capture(month)
    dt = DateTime.new(Date.today.year, month)
    boy = dt.beginning_of_month
    eoy = dt.end_of_month
    self.where("(reserve_cents_date >= ? and reserve_cents_date <= ?) or (reserved_fees_cents_date >= ? and reserved_fees_cents_date <= ?)", boy, eoy, boy, eoy)
  end

  def get_branch_commercial
    if self.branch_commercial == nil || self.branch_commercial == "NO APLICA"
      "NO APLICA"
    elsif self.branch_commercial == "NO PRESENTA"
      "NO PRESENTA"
    elsif self.branch_commercial == "0"
      "PENDIENTE"
    else
       BranchCommercial.where(num: self.branch_commercial)[0].name
    end
  end

  def get_branch_policy
    if self.branch_policy == nil || self.branch_policy == "NO APLICA"
      "NO APLICA"
    elsif self.branch_policy == "NO PRESENTA"
      "NO PRESENTA"
    elsif self.branch_policy == "0"
      "PENDIENTE"
    else
      BranchPolicy.where(num: self.branch_policy)[0].name
    end
  end

  private

    def store_values
      t_process = TypeProcess.find(self.type_process_id)
      if t_process.p_type != 5
        t_process.reserved_fees_cents = t_process.sinisters.pluck(:reserved_fees_cents).sum
        t_process.reserve_cents = t_process.sinisters.pluck(:reserve_cents).sum
        t_process.save
      end
    end


end
