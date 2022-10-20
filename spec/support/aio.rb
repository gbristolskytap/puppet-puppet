add_custom_fact :aio_agent_version, ->(os, facts) do
  return facts[:puppetversion] unless ['AIX', 'Archlinux', 'FreeBSD', 'DragonFly', 'Windows'].include?(facts[:os]['family'])
end

def unsupported_puppetmaster_osfamily(osfamily)
  ['AIX', 'Archlinux', 'windows', 'Suse'].include?(osfamily)
end
