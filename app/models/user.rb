class User < ApplicationRecord
  acts_as_authentic { |c| c.crypto_provider = Authlogic::CryptoProviders::Sha512 }
  after_create :update_photo

  private

  # Sets a placeholder photo
  def update_photo
    update(photo_url: Faker::Avatar.image(name.parameterize) )
  end

end
