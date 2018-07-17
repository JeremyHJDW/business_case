require 'rails_helper'

RSpec.describe BusinessCase, type: :model do

  subject { BusinessCase.new }

  context "Invalid parameters" do

    it "detects title presence" do
      subject.title = nil
      subject.valid?
      expect(subject.errors[:title]).to include("can't be blank")
    end

    it "detects an invalid title" do
      subject.title = "This is a test title"
      subject.valid?
      expect(subject.errors[:title]).to include("Le titre doit commencer par \"Comment \" [suivi par la description du problème résolu dans ce business case]")
    end


    it "detects location presence" do
      subject.client_location = nil
      subject.valid?
      expect(subject.errors[:client_location]).to include("can't be blank")
    end

    it "detects an invalid location" do
      subject.client_location = "This is a test location"
      subject.valid?
      expect(subject.errors[:client_location]).to include("C'est étonant, mais ton choix de localisation n'appartient pas à la liste autorisée !")
    end

    it "detects industry presence" do
      subject.client_industry = nil
      subject.valid?
      expect(subject.errors[:client_industry]).to include("can't be blank")
    end

    it "detects an invalid industry" do
      subject.client_industry = "This is a test industry"
      subject.valid?
      expect(subject.errors[:client_industry]).to include("C'est étonant, mais ton choix d'industrie n'appartient pas à la liste autorisée !")
    end

    it "detects expertise presence" do
      subject.user_expertise = nil
      subject.valid?
      expect(subject.errors[:user_expertise]).to include("can't be blank")
    end

    it "detects an invalid expertise" do
      subject.user_expertise = "This is a test expertise"
      subject.valid?
      expect(subject.errors[:user_expertise]).to include("C'est étonant, mais ton choix d'expertise n'appartient pas à la liste autorisée !")
    end

    it "detects size presence" do
      subject.client_size = nil
      subject.valid?
      expect(subject.errors[:client_size]).to include("can't be blank")
    end

    it "detects an invalid size" do
      subject.client_size = "This is a test size"
      subject.valid?
      expect(subject.errors[:client_size]).to include("C'est étonant, mais ton choix de taille d'entreprise n'appartient pas à la liste autorisée !")
    end

    it "detects position presence" do
      subject.client_position = nil
      subject.valid?
      expect(subject.errors[:client_position]).to include("can't be blank")
    end

    it "detects an invalid position" do
      subject.client_position = "This is a test position"
      subject.valid?
      expect(subject.errors[:client_position]).to include("C'est étonant, mais ton choix de fonction de l'interlocuteur client n'appartient pas à la liste autorisée !")
    end

    it "detects methodology presence" do
      subject.user_methodology = nil
      subject.valid?
      expect(subject.errors[:user_methodology]).to include("can't be blank")
    end

    it "detects problem presence" do
      subject.client_problem = nil
      subject.valid?
      expect(subject.errors[:client_problem]).to include("can't be blank")
    end

    it "detects results presence" do
      subject.client_results = nil
      subject.valid?
      expect(subject.errors[:client_results]).to include("can't be blank")
    end

  end



  context "Valid parameters" do

    it "creates a business case with valid parameters" do
      subject.title = "Comment tester"
      subject.client_location = BusinessCase.client_locations_list.sample
      subject.client_industry = BusinessCase.client_industries_list.sample
      subject.client_size = BusinessCase.client_sizes_list.sample
      subject.user_expertise = BusinessCase.user_expertises_list.sample
      subject.client_position = BusinessCase.client_positions_list.sample
      subject.user_methodology = "L'instinct"
      subject.client_problem = "Pas assez de rentabilité"
      subject.client_results = "Il a fait x2 à la fin !!!"

      subject.valid?
      expect(subject).to be_valid


      subject.save

      subject.pending!
      expect(subject.client_validation_status).to eq("pending")
    end

    # it "changes comment status" do
    #   subject.comment_pending!
    #   expect(subject.client_comment_status).to eq "pending"
    # end

  end

end
