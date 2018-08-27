require 'spec_helper'

describe file('/etc/hosts') do
  it { should be_file }
  it { should exist }
  it { should contain 'host1 1.1.1.1' }
  it { should contain 'host2 2.2.2.2' }
  it { should be_mode 644 }
  it { should be_owned_by 'root' }
  it { should be_readable.by('owner') }
  it { should be_writable.by('owner') }
end
