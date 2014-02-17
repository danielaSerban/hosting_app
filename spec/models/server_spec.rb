require 'spec_helper'

describe Server do

  it { should respond_to (:hostName) }
  it { should respond_to (:internalIP) }
  it { should respond_to (:externalIP) }
  it { should respond_to (:user) }
  it { should respond_to (:password) }
  it { should respond_to (:rootPassword) }
  it { should respond_to (:publicSSHKey) }
  it { should respond_to (:created_at) }
  it { should respond_to (:updated_at) }
  it { should respond_to (:provider_id) }

  it { should belong_to(:provider) }

  it { should validate_presence_of (:hostName)}
  it { should validate_presence_of (:internalIP)}

end