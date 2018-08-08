class Sinister < ApplicationRecord

  belongs_to :type_process, optional: true


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
