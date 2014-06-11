include_recipe 'mysql::server'

webheads = search(:node, "cluster_name:#{node['cluster_name']}")

node.override['mysq']['allow_remote_root'] = true
node.override['mysql']['root_network_acl'] = webheads