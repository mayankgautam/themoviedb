module Tmdb
  class Api
    include HTTParty
    base_uri 'http://api.themoviedb.org/3/'
    format :json
    headers 'Accept' => 'application/json'
    headers 'Content-Type' => 'application/json'

    def self.config
      @@config ||= {}
    end

    def self.key(api_key)
      self.config[:api_key] = api_key
    end

    def self.language(lang)
      if (lang.nil?)
        self.config.delete(:language)
      else
        self.config[:language] = lang
      end
    end

    def self.etag(etag)
      headers 'If-None-Match' => '"' + etag + '"'
    end

    def self.response
      @@response ||= {}
    end

    def self.set_response(hash)
      @@response = hash
    end

    def self.append_to_response(methods)
      if (methods.nil?)
        self.config.delete(:append_to_response)
      else
        self.config[:append_to_response] = methods
      end
    end

  end
end
