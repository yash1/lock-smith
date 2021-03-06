module Locksmith
  module Config
    extend self

    def env(key)
      ENV[key]
    end

    def env!(key)
      env(key) || raise("Locksmith is missing #{key}")
    end

    def env?(key)
      !env(key).nil?
    end

    def aws_id
      @aws_id ||= env!("AWS_ID")
    end

    def aws_secret
      @aws_secret ||= env!("AWS_SECRET")
    end

    def aws_id=(value); @aws_id = value; end
    def aws_secret=(value); @aws_secret = value; end
  end
end
