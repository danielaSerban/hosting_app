require "spec_helper"

describe Database do

  it { should respond_to (:db_type) }
  it { should respond_to (:rootpassword) }
  it { should respond_to (:created_at) }
  it { should respond_to (:updated_at) }
  it { should respond_to (:server_id) }

  it { should validate_presence_of (:db_type) }

end