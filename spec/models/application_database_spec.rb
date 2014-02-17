require 'spec_helper'

describe ApplicationDatabase do

  it { should respond_to (:name) }
  it { should respond_to (:user) }
  it { should respond_to (:password) }
  it { should respond_to (:created_at) }
  it { should respond_to (:updated_at) }
  it { should respond_to (:database_id) }

  it { should belong_to(:database) }
  it { should validate_presence_of (:name) }
  end