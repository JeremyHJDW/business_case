class BusinessCase < ApplicationRecord

validates :title, presence: true
validates :client_problem, presence: true
validates :user_methodology, presence: true
validates :client_results, presence: true
validates :client_location, presence: true
validates :client_industry, presence: true
validates :user_expertise, presence: true
validates :client_size, presence: true
validates :client_position, presence: true

validate do |business_case|
   business_case.title_must_begin_with("Comment ") if title && !title.blank?
end

  def title_must_begin_with(string)
      errors.add(:title, "Le titre doit commencer par \"#{string}\" [suivi par la description du problème résolu dans ce business case]"
      ) unless title.start_with?(string)
  end


  def self.client_locations_list
    [
      "France",
      "Europe",
      "Amerique",
      "Asie",
      "Afrique",
      "Moyen-Orient"
    ]
  end

  validates :client_location, inclusion: { in: self.client_locations_list, message: "C'est étonant, mais ton choix de localisation n'appartient pas à la liste autorisée !" }

  def self.client_industries_list
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

validates :client_industry, inclusion: { in: self.client_industries_list, message: "C'est étonant, mais ton choix d'industrie n'appartient pas à la liste autorisée !" }

  def self.user_expertises_list
    [
    "Finance",
    "Strategie",
    "Organisation",
    "Digital",
    "Sales & Marketing"
    ]
  end

validates :user_expertise, inclusion: { in: self.user_expertises_list, message: "C'est étonant, mais ton choix d'expertise n'appartient pas à la liste autorisée !" }

  def self.client_sizes_list
    [
    "0-1m",
    "1-10m",
    "10-50m",
    "50-250m",
    "250-1000m",
    ">1000m"
    ]
  end

validates :client_size, inclusion: { in: self.client_sizes_list, message: "C'est étonant, mais ton choix de taille d'entreprise n'appartient pas à la liste autorisée !"  }

  def self.client_positions_list
    [
      "CEO",
      "CFO",
      "COO",
      "DRH",
      "CMO",
      "CTO"
    ]
  end

  validates :client_position, inclusion: { in: self.client_positions_list, message: "C'est étonant, mais ton choix de fonction de l'interlocuteur client n'appartient pas à la liste autorisée !" }

end
