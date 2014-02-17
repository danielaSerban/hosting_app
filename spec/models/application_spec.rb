require 'spec_helper'

describe Application do

  it { should respond_to (:url) }
  it { should respond_to (:githuburl) }
  it { should respond_to (:httpbasicUser) }
  it { should respond_to (:httpbasicpassword) }
  it { should respond_to (:adminuser) }
  it { should respond_to (:adminpassword) }
  it { should respond_to (:serverPath) }
  it { should respond_to (:flag) }
  it { should respond_to (:created_at) }
  it { should respond_to (:updated_at) }
  it { should respond_to (:server_id) }
  it { should respond_to (:client_id) }
  it { should respond_to (:application_database_id) }

  it { should belong_to(:server) }
  it { should belong_to(:application_database) }
  it { should belong_to(:client) }

end