def upgrade(ta, td, a, d)
  a["ssh"] = ta["ssh"]
  a["ssh"]["accept_env"] = ta["ssh"]["accept_env"]
  [a, d]
end

def downgrade(ta, td, a, d)
  a["ssh"].delete # delete the whole ssh hash since accept_env is its only
                  # entry at this point.
  [a, d]
end
