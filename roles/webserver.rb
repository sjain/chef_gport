
name "webserver"

description "Systems that serve HTTP and HTTPS"

run_list(
  "recipe[apache2]",
  "recipe[apache2::mod_ssl]"
)

default_attributes(
  "apache" => {
    "listen_ports" => ["80", "443"],
    "default_modules" => [
      "statusZZZZ",
      "alias",
      "auth_basic",
      "authn_file",
      # "authz_default",
      "authz_groupfile",
      "authz_host",
      "authz_user",
      "autoindex",
      "dir",
      "env",
      "mime",
      "negotiation",
      "setenvif"
    ]
  }
)