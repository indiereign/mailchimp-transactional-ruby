=begin
#Mailchimp Transactional API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 1.0.47
Contact: apihelp@mailchimp.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.12

=end

require 'json'
require 'excon'

module MailchimpTransactional
  class ApiClient
    def initialize(api_key = '')
      @host = "https://mandrillapp.com/api/1.0"
      @format_list = ['json', 'xml', 'php', 'yaml']
      @default_output_format = 'json'
      @accepts = ['application/json', 'application/xml', 'application/x-php', 'application/x-yaml; charset=utf-8']
      @read_timeout = 300
      @write_timeout = 300
      @connect_timeout = 300
      set_api_key(api_key)
    end

    def self.default
      @@default ||= ApiClient.new
    end

    def set_api_key(api_key = '')
      @api_key = api_key
    end

    def set_default_output_format(output_format)
      if @format_list.include? output_format
        @default_output_format = output_format
      end
    end

    def set_timeout(default_timeout=nil, read: nil, write: nil, connect: nil)
      default_timeout = default_timeout || 300
      @read_timeout = read || default_timeout
      @write_timeout = write || default_timeout
      @connect_timeout = connect || default_timeout
    end

    def call_api(http_method, path, body = {})
      use_default_output_format = true
      active_output_format = @default_output_format
      url = @host + path

      # format body
      if body[:outputFormat]
        format = body[:outputFormat].downcase
        if @format_list.include? format
          url += ".#{format}"
          body.delete(:outputFormat)
          use_default_output_format = false
          active_output_format = format
        end
      end

      # apply output format
      if use_default_output_format && @format_list.include?(@default_output_format)
        url += '.%s' % @default_output_format
        active_output_format = @default_output_format
      end

      # apply api key
      body[:key] = @api_key

      # send request
      conn = Excon.new(url, :headers => {'Content-Type' => 'application/json'}, :read_timeout => @read_timeout, :write_timeout => @write_timeout, :connect_timeout => @connect_timeout)
      res = conn.post(:body => body.to_json)

      # handle response
      data = nil

      if res.status == 200
        if active_output_format == 'json'
          data = JSON.parse(res.body)
        else
          data = res.body
        end
      end

      if (!data)
        fail ApiError.new(:status => res.status, :response_body => res.body)
      end

      return data
    end
  end
end
