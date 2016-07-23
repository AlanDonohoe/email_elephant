# Email Elephant

Email Elephant is a Rails-backed API for saving emails associated with your website. That is all it is.....

Request an API key and post your emails like this:

post json:

```sh
{"site": { "url": "mysite.com", "api_key": "12345678", "emails_attributes": [{"address": "dude@example.com"}]}}
```
(NB: can really just post: {"email": {"address": "dude@example.com", "api_key": "12345678"}} ) // and get the sending url/ domain in the controller...

Use a client - yet to be built - to access your emails...
