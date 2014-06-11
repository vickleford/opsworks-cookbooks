cookbook 'external-cookbook', git: 'https://github.com/vickleford/external-cookbook.git'

site :opscode
cookbook 'apt'
cookbook 'mysql'


group :local_dev do
  cookbook 'chef-solo-search', '~> 0.5.1', github: 'edelight/chef-solo-search', protocol: :https

  # ty seth vargo: https://sethvargo.com/using-amazon-opsworks-with-berkshelf/
  Dir.entries('.').each do |entry|
    cookbook(entry, path: entry) if File.exists?(File.join(entry, 'metadata.rb'))
  end
end