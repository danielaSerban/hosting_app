require 'spec_helper'

describe Provider do

  # test db structure
  it { should respond_to (:name) }
  it { should respond_to (:contactname) }
  it { should respond_to (:contactemail) }
  it { should respond_to (:username) }
  it { should respond_to (:userpassword) }
  it { should respond_to (:created_at)}
  it { should respond_to (:updated_at)}

  it { should validate_uniqueness_of (:name) }

end
