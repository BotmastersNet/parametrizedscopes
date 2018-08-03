require "parametrized_scopes/railtie"

module ParametrizedScopes
  extend ActiveSupport::Concern

  class_methods do

    def filter_scope(name, hook)
      scope name, -> (param) do
        if param.present?
          hook.call(param)
        else
          where(nil)
        end
      end
    end
    
  end
end
