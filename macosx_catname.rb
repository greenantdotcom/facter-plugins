Facter.add(:macosx_catname) do
  confine :kernel => "Darwin"
  ### http://en.wikipedia.org/wiki/OS_X#Versions
  setcode do
    case Facter.value( :macosx_productversion_major )
    when '10.0'
        'Cheetah'
    when '10.1'
        'Puma'
    when '10.2'
        'Jaguar'
    when '10.3'
        'Panther'
    when '10.4'
        'Tiger'
    when '10.5'
        'Leopard'
    when '10.6'
        'Snow Leopard'
    when '10.7'
        'Lion'
    when '10.8'
        'Mountain Lion'
    else
        'Unknown'
    end
  end
end