param($prefix, $dns)

for ($i=1; $x -le 254; $i++)
{
    $address = "$prefix.$i"
    Resolve-DnsName -DnsOnly $address -Server $dns -ErrorAction Ignore | Select-Object Name, NameHost

}
