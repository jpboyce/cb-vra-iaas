#
# Logon As A Service permissions for IAAS Service Account
windows_user_privilege 'user' do
  privilege SeServiceLogonRight
end

# Logon As Batch Job permissions for IIS App Pool Identity
windows_user_privilege 'user' do
  privilege SeBatchLogonRight
end
