class BodyMass
  attr_reader :height, :weight

  def initialize(height: 1, weight: 1)
    @height = height
    @weight = weight
  end

  def index
    weight / height
  end

  def category
    calculate_category
  end

  private
    
    def calculate_category
      case (weight.to_f/(height.to_f * height.to_f))
      when 0.0..15.0
        'Very severely underweight'
      when 15.0..16.0
        'Severely underweight'
      when 16.0..18.5
        'Underweight'
      when 18.5..25.0
        'Normal (healthy weight)'
      when 25.0..30.0
        'Overweight'
      when 30.0..35.0
        'Obese Class I (Moderately obese)'
      when 35.0..40.0
        'Obese Class II (Severely obese)'
      when 40.0..100.0
        'Obese Class III (Very severely obese)'
      end
    end
end
