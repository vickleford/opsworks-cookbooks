Chef::Log.info("You wascily doggoned cookbook, now when i say #{node['whoa']}!... i mean #{node['whoa'].upcase}!")
Chef::Log.warn("Now, ya carrot-chewin’ coyote! Git a goin’!")
if attribute?('doggoned_attribute')
  Chef::Log.warn("I’m a-comin’ over the wall after ya … and I’m a-comin’ in a-shootin’!")
end