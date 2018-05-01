# # encoding: utf-8

# Inspec test for recipe tasks/main.yml

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

describe docker.info do
  its('Swarm.LocalNodeState') { should eq 'active' }
end
