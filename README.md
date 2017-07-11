# SFAuthenticationSessionSample
iOS 11 SFAuthenticationSession Sample

```
        let url = URL(string: "https://accounts.google.com/o/oauth2/v2/auth")!
        let session = SFAuthenticationSession(url: url, callbackURLScheme: "google://") { (url, error) in
            print(url, error)
        }
        let started = session.start()
```
