=begin
#Mailchimp Transactional API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 1.0.32
Contact: apihelp@mailchimp.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.12

=end

require 'uri'

module MailchimpTransactional
  class TagsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # View all tags history
    # Return the recent history (hourly stats for the last 30 days) for all tags.
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<InlineResponse20028>, Fixnum, Hash)>] Array<InlineResponse20028> data, response status code and response headers
    def all_time_series(body = {})
      data = @api_client.call_api(:POST, '/tags/all-time-series', body)
      data
    end

    # Delete tag
    # Deletes a tag permanently. Deleting a tag removes the tag from any messages that have been sent, and also deletes the tag&#39;s stats. There is no way to undo this operation, so use it carefully.
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse20055, Fixnum, Hash)>] InlineResponse20055 data, response status code and response headers
    def delete(body = {})
      data = @api_client.call_api(:POST, '/tags/delete', body)
      data
    end

    # Get tag info
    # Return more detailed information about a single tag, including aggregates of recent stats.
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse20056, Fixnum, Hash)>] InlineResponse20056 data, response status code and response headers
    def info(body = {})
      data = @api_client.call_api(:POST, '/tags/info', body)
      data
    end

    # List tags
    # Return all of the user-defined tag information.
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<InlineResponse20054>, Fixnum, Hash)>] Array<InlineResponse20054> data, response status code and response headers
    def list(body = {})
      data = @api_client.call_api(:POST, '/tags/list', body)
      data
    end

    # View tag history
    # Return the recent history (hourly stats for the last 30 days) for a tag.
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<InlineResponse20028>, Fixnum, Hash)>] Array<InlineResponse20028> data, response status code and response headers
    def time_series(body = {})
      data = @api_client.call_api(:POST, '/tags/time-series', body)
      data
    end
  end
end
