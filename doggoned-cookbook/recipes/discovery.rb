nodes = search(:node, "platform:*")

Chef::Log.debug("Found nodes: #{nodes}")

file "/tmp/gonengotem" do
  content nodes.to_s
end