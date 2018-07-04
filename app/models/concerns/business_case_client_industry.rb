module BusinessCaseClientIndustry
    extend ActiveSupport::Concern

    included do
      validates :client_industry, presence: true
      validates :client_industry, inclusion: { in: self.client_industries_list,
        message: "C'est étonant, mais ton choix d'industrie n'appartient pas à la liste autorisée !" }
    end

    class_methods do

      def client_industries_list

        [
        "Agro-alimentaire et boissons",
        "Assurance",
        "Automobiles et équipementiers",
        "Banques",
        "Bâtiment et matériaux de construction",
        "Biens et services industriels",
        "Chimie",
        "Distribution",
        "Immobilier",
        "Matières premières",
        "Medias",
        "Pétrole et gaz",
        "Produits ménagers et de soin personnel",
        "Santé",
        "Services aux collectivités",
        "Services financiers",
        "Technologie",
        "Télécommunications",
        "Voyage et loisirs"
        ]
      end


    end
end
