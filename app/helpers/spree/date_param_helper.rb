module Spree
  module DateParamHelper
    DATE_FORMAT = "%m/%d/%Y %H:%M"

  private
    def date_param(name)
      Time.strptime(params[name] + " UTC", DATE_FORMAT)
    end
  end
end
