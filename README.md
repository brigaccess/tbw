This Better Work
===

Ansible playbook that deploys various proxy and VPN services to the Ubuntu machine.
- [SoftEther VPN Server](https://www.softether.org/) with fail2ban
- [shadowsocks-rust](https://github.com/shadowsocks/shadowsocks-rust) with [v2ray-plugin](https://github.com/shadowsocks/v2ray-plugin)

How to use?
====
0. Install Ansible, clone repo 
1. Update `inventory.yml`:
    - Add your own hosts
    - Update `vars` to your taste
    - Add users
2. Update `proxy.yml`:
    - Change CA passphrase (twice, TODO fix that)
    - If you'd rather not install some components, just comment the unwanted role out
3. Make sure you're able to connect to all the hosts with `make ping`
3. Deploy with `make`
4. Test the services

TODO
====
- Port knocking
- fail2ban for shadowsocks-rust
- [v2ray](https://github.com/v2fly/v2ray-core) server
- [xray](https://github.com/XTLS/Xray-core) server (maybe replace v2ray completely?)
- [Trojan](https://github.com/trojan-gfw/trojan) server
- WireGuard and StrongSwan support?
- End-user distributable package generation (with all the installers, links, certs and stuff?)