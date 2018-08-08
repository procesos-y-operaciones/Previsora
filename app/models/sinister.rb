class Sinister < ApplicationRecord

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

end
