#mcollective insalled

Facter.add(:mcostatus) do
setcode do
%x{rpm -qa | grep mcollective-common | wc -l }.chomp
        end
end

