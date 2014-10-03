require 'serverspec'
include Serverspec::Helper::Exec
include Serverspec::Helper::DetectOS

Rspec.configure do |c|
  c.before :all do
    c.os = backend(Serverspec::Commands::Base).check_os
  end
  #c.path = "/sbin:/user/sbin"
end

describe command('/usr/bin/java -version') do
  its(:stdout) { should match /1.7/ }
end

describe command('/usr/local/go/bin/go version') do
  its(:stdout) { should match /go1.2.2/}
end

describe file('/opt/rbenv') do
  it { should be_directory }
end

describe file('/opt/rbenv/plugins/ruby_build')
  it { should be_directory }
end

describe file('/opt/rbenv/plugins/rbenv-gemset')
  it { should be_directory }
end

describe file('/etc/yum.repos.d/epel.repo') do
  it { should be_file }
end