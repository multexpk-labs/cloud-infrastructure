# Reference Cloud Architecture

    Internet
       |
       v
    DNS / Edge
       |
       v
    Firewall
       |
       v
    Reverse Proxy / Load Balancer
       |
       +----------------+
       |                |
       v                v
    App Node 1       App Node 2
       |                |
       +-------+--------+
               |
               v
        Database / Storage
               |
               v
        Backup / Recovery

This is a conceptual reference. Actual topology should follow the workload and failure requirements.
