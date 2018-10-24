require 'rails_helper'

RSpec.describe BusinessCase, type: :model do

  let(:invalid_business_case) { build(:empty_business_case) }
  let(:business_case) { build(:valid_business_case) }

  context "Invalid parameters" do
    context 'when title is invalid' do
      it "detects title absence" do
        invalid_business_case.valid?
        expect(invalid_business_case.errors[:title]).to include("can't be blank")
      end

      it "detects an invalid title" do
        invalid_business_case.title = "This is a test title"
        invalid_business_case.valid?
        expect(invalid_business_case.errors[:title]).to include("Le titre doit commencer par \"Comment \" [suivi par la description du problème résolu dans ce business case]")
      end
    end


    context 'when title is invalid' do
      it "detects location absence" do
        invalid_business_case.valid?
        expect(invalid_business_case.errors[:client_location]).to include("can't be blank")
      end

      it "detects an invalid location" do
        invalid_business_case.client_location = "This is a test location"
        invalid_business_case.valid?
        expect(invalid_business_case.errors[:client_location]).to include("C'est étonant, mais ton choix de localisation n'appartient pas à la liste autorisée !")
      end
    end

    context 'when industry is invalid' do
      it "detects industry absence" do
        invalid_business_case.valid?
        expect(invalid_business_case.errors[:client_industry]).to include("can't be blank")
      end

      it "detects an invalid industry" do
        invalid_business_case.client_industry = "This is a test industry"
        invalid_business_case.valid?
        expect(invalid_business_case.errors[:client_industry]).to include("C'est étonant, mais ton choix d'industrie n'appartient pas à la liste autorisée !")
      end
    end

    context 'when expertise is invalid' do
      it "detects expertise absence" do
        invalid_business_case.valid?
        expect(invalid_business_case.errors[:user_expertise]).to include("can't be blank")
      end

      it "detects an invalid expertise" do
        invalid_business_case.user_expertise = "This is a test expertise"
        invalid_business_case.valid?
        expect(invalid_business_case.errors[:user_expertise]).to include("C'est étonant, mais ton choix d'expertise n'appartient pas à la liste autorisée !")
      end
    end

    context 'when size is invalid' do
      it "detects size absence" do
        invalid_business_case.valid?
        expect(invalid_business_case.errors[:client_size]).to include("can't be blank")
      end

      it "detects an invalid size" do
        invalid_business_case.client_size = "This is a test size"
        invalid_business_case.valid?
        expect(invalid_business_case.errors[:client_size]).to include("C'est étonant, mais ton choix de taille d'entreprise n'appartient pas à la liste autorisée !")
      end
    end

    context 'when position is invalid' do
      it "detects position absence" do
        invalid_business_case.valid?
        expect(invalid_business_case.errors[:client_position]).to include("can't be blank")
      end

      it "detects an invalid position" do
        invalid_business_case.client_position = "This is a test position"
        invalid_business_case.valid?
        expect(invalid_business_case.errors[:client_position]).to include("C'est étonant, mais ton choix de fonction de l'interlocuteur client n'appartient pas à la liste autorisée !")
      end
    end

    context 'when methology is invalid' do
      it "detects methodology absence" do
        invalid_business_case.valid?
        expect(invalid_business_case.errors[:user_methodology]).to include("can't be blank")
      end
    end

    context 'when problem is invalid' do
      it "detects problem presence" do
        invalid_business_case.valid?
        expect(invalid_business_case.errors[:client_problem]).to include("can't be blank")
      end
    end

    context 'when results is invalid' do
      it "detects results presence" do
        invalid_business_case.valid?
        expect(invalid_business_case.errors[:client_results]).to include("can't be blank")
      end
    end

    context 'when user is invalid' do
      it "detects user presence" do
        invalid_business_case.valid?
        expect(invalid_business_case.errors[:user]).to include("must exist")
      end
    end
  end

  context "Valid parameters" do
    it "creates a business case with valid parameters" do
      business_case.valid?
      expect(business_case).to be_valid
    end
    #invalid_business_case.pending!
    #expect(invalid_business_case.client_validation_status).to eq("pending")

    # it "changes comment status" do
    #   invalid_business_case.comment_pending!
    #   expect(invalid_business_case.client_comment_status).to eq "pending"
    # end

  end

end
