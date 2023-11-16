$TTL    1d ; default expiration time (in seconds) of all RRs without their own TTL value
@       IN      SOA     ns1.red-david.com. root.red-david.com. (
                  3      ; Serial
                  1d     ; Refresh
                  1h     ; Retry
                  1w     ; Expire
                  1h )   ; Negative Cache TTL

; name servers - NS records
     IN      NS      ns1.red-david.com.

; name servers - A records
ns1.red-david.com.             IN      A      192.168.21.2

servidor1.red-david.com.        IN      A      192.168.21.3
servidor2.red-david.com.        IN      A      192.168.21.4