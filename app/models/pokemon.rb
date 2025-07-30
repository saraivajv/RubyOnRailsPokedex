class Pokemon < ApplicationRecord
  # Validações que você já pode ter ou que são boas de ter
  validates :name, presence: true, uniqueness: true
  validates :pokemon_type, presence: true
  validates :level, presence: true, numericality: { greater_than_or_equal_to: 1, less_than_or_equal_to: 100 }

  before_save :fetch_and_set_image_url

  private

  def fetch_and_set_image_url
    return unless image_url.blank? && name.present?

    begin
      api_url = "https://pokeapi.co/api/v2/pokemon/#{name.downcase}"

      response = HTTParty.get(api_url)

      if response.success?
        artwork_url = response.parsed_response.dig('sprites', 'other', 'official-artwork', 'front_default')
        
        self.image_url = artwork_url if artwork_url.present?
      else
        puts "API request failed for #{name}: #{response.code}"
      end
    rescue StandardError => e
      puts "An error occurred while fetching image for #{name}: #{e.message}"
    end
  end
end