=begin
#Mailchimp Transactional API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 1.0.47
Contact: apihelp@mailchimp.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.12

=end

require 'uri'

module MailchimpTransactional
  class WebhooksApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Add webhook
    # Add a new webhook.
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse20075, Fixnum, Hash)>] InlineResponse20075 data, response status code and response headers
    def add(body = {})
      data = @api_client.call_api(:POST, '/webhooks/add', body)
      data
    end

    # Delete webhook
    # Delete an existing webhook.
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse20078, Fixnum, Hash)>] InlineResponse20078 data, response status code and response headers
    def delete(body = {})
      data = @api_client.call_api(:POST, '/webhooks/delete', body)
      data
    end

    # Get webhook info
    # Given the ID of an existing webhook, return the data about it.
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse20076, Fixnum, Hash)>] InlineResponse20076 data, response status code and response headers
    def info(body = {})
      data = @api_client.call_api(:POST, '/webhooks/info', body)
      data
    end

    # List webhooks
    # Get the list of all webhooks defined on the account.
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<InlineResponse20074>, Fixnum, Hash)>] Array<InlineResponse20074> data, response status code and response headers
    def list(body = {})
      data = @api_client.call_api(:POST, '/webhooks/list', body)
      data
    end

    # Update webhook
    # Update an existing webhook.
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse20077, Fixnum, Hash)>] InlineResponse20077 data, response status code and response headers
    def update(body = {})
      data = @api_client.call_api(:POST, '/webhooks/update', body)
      data
    end
  end
end
