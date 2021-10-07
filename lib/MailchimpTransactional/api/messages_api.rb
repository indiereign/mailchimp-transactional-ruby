=begin
#Mailchimp Transactional API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 1.0.45
Contact: apihelp@mailchimp.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.12

=end

require 'uri'

module MailchimpTransactional
  class MessagesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Cancel scheduled email
    # Cancels a scheduled email.
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<InlineResponse20035>, Fixnum, Hash)>] Array<InlineResponse20035> data, response status code and response headers
    def cancel_scheduled(body = {})
      data = @api_client.call_api(:POST, '/messages/cancel-scheduled', body)
      data
    end

    # Get message content
    # Get the full content of a recently sent message.
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse20033, Fixnum, Hash)>] InlineResponse20033 data, response status code and response headers
    def content(body = {})
      data = @api_client.call_api(:POST, '/messages/content', body)
      data
    end

    # Get message info
    # Get the information for a single recently sent message.
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse20032, Fixnum, Hash)>] InlineResponse20032 data, response status code and response headers
    def info(body = {})
      data = @api_client.call_api(:POST, '/messages/info', body)
      data
    end

    # List scheduled emails
    # Queries your scheduled emails.
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<InlineResponse20035>, Fixnum, Hash)>] Array<InlineResponse20035> data, response status code and response headers
    def list_scheduled(body = {})
      data = @api_client.call_api(:POST, '/messages/list-scheduled', body)
      data
    end

    # Parse mime document
    # Parse the full MIME document for an email message, returning the content of the message broken into its constituent pieces.
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse20034, Fixnum, Hash)>] InlineResponse20034 data, response status code and response headers
    def parse(body = {})
      data = @api_client.call_api(:POST, '/messages/parse', body)
      data
    end

    # Reschedule email
    # Reschedules a scheduled email.
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<InlineResponse20035>, Fixnum, Hash)>] Array<InlineResponse20035> data, response status code and response headers
    def reschedule(body = {})
      data = @api_client.call_api(:POST, '/messages/reschedule', body)
      data
    end

    # Search messages by date
    # Search recently sent messages and optionally narrow by date range, tags, senders, and API keys. If no date range is specified, results within the last 7 days are returned. This method may be called up to 20 times per minute. If you need the data more often, you can use /messages/info.json to get the information for a single message, or webhooks to push activity to your own application for querying.
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<InlineResponse20030>, Fixnum, Hash)>] Array<InlineResponse20030> data, response status code and response headers
    def search(body = {})
      data = @api_client.call_api(:POST, '/messages/search', body)
      data
    end

    # Search messages by hour
    # Search the content of recently sent messages and return the aggregated hourly stats for matching messages.
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<InlineResponse20031>, Fixnum, Hash)>] Array<InlineResponse20031> data, response status code and response headers
    def search_time_series(body = {})
      data = @api_client.call_api(:POST, '/messages/search-time-series', body)
      data
    end

    # Send new message
    # Send a new transactional message through the Transactional API.
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<InlineResponse20028>, Fixnum, Hash)>] Array<InlineResponse20028> data, response status code and response headers
    def send(body = {})
      data = @api_client.call_api(:POST, '/messages/send', body)
      data
    end

    # Send mime document
    # Take a raw MIME document for a message, and send it exactly as if it were sent through the Transactional API&#39;s SMTP servers.
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Object, Fixnum, Hash)>] Object data, response status code and response headers
    def send_raw(body = {})
      data = @api_client.call_api(:POST, '/messages/send-raw', body)
      data
    end

    # Send using message template
    # Send a new transactional message through the Transactional API using a template.
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<InlineResponse20029>, Fixnum, Hash)>] Array<InlineResponse20029> data, response status code and response headers
    def send_template(body = {})
      data = @api_client.call_api(:POST, '/messages/send-template', body)
      data
    end
  end
end
