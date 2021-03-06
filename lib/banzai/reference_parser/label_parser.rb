module Banzai
  module ReferenceParser
    class LabelParser < BaseParser
      self.reference_type = :label

      def references_relation
        Label
      end

      private

      def can_read_reference?(user, ref_project)
        can?(user, :read_label, ref_project)
      end
    end
  end
end
