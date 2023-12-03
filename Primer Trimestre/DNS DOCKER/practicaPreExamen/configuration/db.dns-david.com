$TTL    1d ; default expiration time (in seconds) of all RRs without their own TTL value
@       IN      SOA     master.dns-david.com. root.dns-david.com. (
                  3      ; Serial
                  1d     ; Refresh
                  1h     ; Retry
                  1w     ; Expire
                  1h )   ; Negative Cache TTL

; name servers - NS records
     IN      NS      master.dns-david.com.

; name servers - A records
master.dns-david.com.             IN      A      192.168.221.10

servidor1.dns-david.com.        IN      A      192.168.221.20
servidor2.dns-david.com.        IN      A      192.168.221.30