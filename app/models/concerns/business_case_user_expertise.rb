module BusinessCaseUserExpertise
    extend ActiveSupport::Concern

    included do
      validates :user_expertise, presence: true
      validates :user_expertise, inclusion: { in: self.user_expertises_list,
        message: "C'est étonant, mais ton choix d'expertise n'appartient pas à la liste autorisée !" }
    end

    class_methods do

      def user_expertises_list
        [
        "Finance",
        "Strategie",
        "Organisation",
        "Digital",
        "Sales & Marketing"
        ]
      end

    end
end
