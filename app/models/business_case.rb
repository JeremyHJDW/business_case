class BusinessCase < ApplicationRecord
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

  validates :client_location, inclusion: { in: self.client_locations_list }

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

validates :client_industry, inclusion: { in: self.client_industries_list }

  def self.user_expertises_list
    [
    "Finance",
    "Strategie",
    "Organisation",
    "Digital",
    "Sales & Marketing"
    ]
  end

validates :user_expertise, inclusion: { in: self.user_expertises_list }

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

validates :client_size, inclusion: { in: self.client_sizes_list }

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

validates :client_position, inclusion: { in: self.client_positions_list }

end
