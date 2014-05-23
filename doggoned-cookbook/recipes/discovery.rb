nodes = search(:node, "platform:*")

Chef::Log.debug("Found nodes: #{nodes}")