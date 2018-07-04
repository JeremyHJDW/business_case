module BusinessCaseClientSize
    extend ActiveSupport::Concern

    included do
      validates :client_size, presence: true
      validates :client_size, inclusion: { in: self.client_sizes_list,
        message: "C'est étonant, mais ton choix de taille d'entreprise n'appartient pas à la liste autorisée !"  }
    end

    class_methods do

      def client_sizes_list
        [
        "0-1m",
        "1-10m",
        "10-50m",
        "50-250m",
        "250-1000m",
        ">1000m"
        ]
      end


    end
end
