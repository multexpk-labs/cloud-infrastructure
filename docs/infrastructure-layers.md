# Infrastructure Layers

A practical infrastructure stack can be viewed as:

    DNS
      ↓
    Edge / CDN / Reverse Proxy
      ↓
    Firewall
      ↓
    Load Balancer
      ↓
    Compute
      ↓
    Runtime
      ↓
    Application
      ↓
    Database / Storage

Each layer has different failure modes and operational responsibilities.

## Debugging order

When a service is unreachable, validate from the outside inward: DNS, edge, network path, firewall, listener, reverse proxy, application, and finally its dependencies.
