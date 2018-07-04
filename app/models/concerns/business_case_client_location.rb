module BusinessCaseClientLocation
    extend ActiveSupport::Concern

    included do
      validates :client_location, presence: true
      validates :client_location, inclusion: { in: self.client_locations_list,
        message: "C'est étonant, mais ton choix de localisation n'appartient pas à la liste autorisée !" }
    end

    class_methods do
      def client_locations_list
        [
          "France",
          "Europe",
          "Amerique",
          "Asie",
          "Afrique",
          "Moyen-Orient"
        ]
      end
    end
end
