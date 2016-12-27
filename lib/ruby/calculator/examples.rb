require "ruby/calculator/examples/version"
require 'bigdecimal'
require "active_model/attribute_assignment"

module Ruby
  module Calculator
    module Examples
      class Hand
        include ActiveModel::AttributeAssignment
        attr_accessor :first_argument, :second_argument

        def add
          first_argument + second_argument
        end

        def subtract
          first_argument - second_argument
        end

        def multiply
          first_argument * second_argument
        end

        def divide
          (first_argument / second_argument).round(10)
        end
      end

      class Financial
        #...
      end

      class Scientific
        #...
      end

      class Programmer
        #...
      end
    end
  end
end
