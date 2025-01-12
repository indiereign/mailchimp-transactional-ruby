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
  class UrlsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Add tracking domains
    # Add a tracking domain to your account.
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse20071, Fixnum, Hash)>] InlineResponse20071 data, response status code and response headers
    def add_tracking_domain(body = {})
      data = @api_client.call_api(:POST, '/urls/add-tracking-domain', body)
      data
    end

    # Check cname settings
    # Checks the CNAME settings for a tracking domain. The domain must have been added already with the add-tracking-domain call.
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse20071, Fixnum, Hash)>] InlineResponse20071 data, response status code and response headers
    def check_tracking_domain(body = {})
      data = @api_client.call_api(:POST, '/urls/check-tracking-domain', body)
      data
    end

    # List most clicked urls
    # Get the 100 most clicked URLs.
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<InlineResponse20067>, Fixnum, Hash)>] Array<InlineResponse20067> data, response status code and response headers
    def list(body = {})
      data = @api_client.call_api(:POST, '/urls/list', body)
      data
    end

    # Search most clicked urls
    # Return the 100 most clicked URLs that match the search query given.
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<InlineResponse20068>, Fixnum, Hash)>] Array<InlineResponse20068> data, response status code and response headers
    def search(body = {})
      data = @api_client.call_api(:POST, '/urls/search', body)
      data
    end

    # Get url history
    # Return the recent history (hourly stats for the last 30 days) for a URL
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<InlineResponse20069>, Fixnum, Hash)>] Array<InlineResponse20069> data, response status code and response headers
    def time_series(body = {})
      data = @api_client.call_api(:POST, '/urls/time-series', body)
      data
    end

    # List tracking domains
    # Get the list of tracking domains set up for this account.
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<InlineResponse20070>, Fixnum, Hash)>] Array<InlineResponse20070> data, response status code and response headers
    def tracking_domains(body = {})
      data = @api_client.call_api(:POST, '/urls/tracking-domains', body)
      data
    end
  end
end
