class MembersInfo
  attr_reader :argument
  
  def initialize(member_info)
    require 'pry'; binding.pry
    @name   = member_info[:name]
    @photo  = member_info[:photoUrl]
    @allies = member_info[:allies]
    @allies = member_info[:allies]
    @allies = member_info[:allies]

  end
end