require 'spec_helper'

describe Client do
  it { should respond_to :name }

  it { should validate_presence_of :name }
  it { should have_many :applications }

end