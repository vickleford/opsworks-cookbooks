Chef::Log.debug(“Great horny toads … a trespasser gettin’ footie prints all over my desert”)

nodes = search(:node, "platform:*")

Chef::Log.debug("Found nodes: #{nodes}")

file '/tmp/gotem' do
  content nodes
end