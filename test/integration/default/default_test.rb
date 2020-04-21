# # encoding: utf-8

# Inspec test for recipe edgeR::default

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

describe command('Rscript -e \'packageVersion("edgeR")\'') do
  its('exit_status') { should eq 0 }
end
