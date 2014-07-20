run_list(
  "recipe[ntp]",
  "recipe[build-essential::default]",
  "recipe[apache2]",
  "recipe[apache2::mod_ssl]"
)

default_attributes(
  "apache" => {
    "listen_ports" => ["80", "443"]
  }
)