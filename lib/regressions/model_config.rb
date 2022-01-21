module Regressions
  class ModelConfig
    attr_accessor :model_class

    def initialize(model_class)
      @model_class = model_class
    end

    def setup
      run_validations

      model_class.send(:include, ::Regressions::Core)
    end

    def run_validations
      raise "Paper trail not enabled for #{model_class.name}" unless paper_trail_enabled?
    end

    def paper_trail_enabled?
      model_class.respond_to?(:paper_trail)
    end
  end
end
