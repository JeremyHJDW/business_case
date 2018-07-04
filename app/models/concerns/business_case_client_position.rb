module BusinessCaseClientPosition
    extend ActiveSupport::Concern

    included do
      validates :client_position, presence: true
        validates :client_position, inclusion: { in: self.client_positions_list,
          message: "C'est étonant, mais ton choix de fonction de l'interlocuteur client n'appartient pas à la liste autorisée !" }
    end

    class_methods do

      def client_positions_list
      [
        "CEO",
        "CFO",
        "COO",
        "DRH",
        "CMO",
        "CTO"
      ]
    end

    end
end
