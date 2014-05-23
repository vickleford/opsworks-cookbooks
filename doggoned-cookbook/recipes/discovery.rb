nodes = search(:node, "platform:*")

Chef::Log.debug("Found nodes: #{nodes}")

file '/tmp/gotem' do
  content nodes
end