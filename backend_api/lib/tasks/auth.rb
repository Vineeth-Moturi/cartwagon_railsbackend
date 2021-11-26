require 'jwt'

class Auth
    ALGORITHM = 'HS256'

    def self.encode(payload)
        jwt.encode(
            payload,auth_secret,ALGORITHM
        )
    end

    def self.decode(token)
        jwt.decode(
            token, auth_secret ,true, {algorithm: ALGORITHM }).first
        )
    end

    def self.auth_secret
        #ENV["MY_SECRET_KEY"]
        Rails.application.credentials[secret_key_base]
    end
end