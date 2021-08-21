provider "sendgrid" {
  api_key = "SG.abc123"
}

resource "sendgrid_subuser" "user1" {
  username = "subuser1"
  email    = "isrihari258@gmail.com"

}

password {
    destination = "./output/user1.pass"

    ips = [
    "255.255.255.255"
  ]
}

resource "sendgrid_api_key" "user1" {
  name = "my-account-subuser1"

}

scopes = [
    "mail.batch.create",
    "mail.batch.delete",
    "mail.batch.read",
    "mail.batch.update",
    "mail.send"
  ]
}
