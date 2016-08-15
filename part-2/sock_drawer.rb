class SockDrawer
  attr_reader :socks, :matcher

  def initialize(args = {})
    @socks = args.fetch(:socks) { Array.new }
    @matcher = args.fetch(:matcher)
  end

  def supply_match_for(possible_match)
    # iterate through all socks in the drawer
    # compare each sock to possible_match
    # if matching_attributes, return both socks
    # remove those socks from drawer
    matched_sock = @socks.find {|s| @matcher.match?(s, possible_match)}
    @socks.delete(matched_sock)
  end
end
