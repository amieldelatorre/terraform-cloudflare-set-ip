# terraform-cloudflare-set-ip
Create a Cloudflare record based on your current IP Address.

## Setup

### Prerequisites
- [`terraform`](https://www.terraform.io/) must be installed
    - Here I use [`tfenv`](https://github.com/tfutils/tfenv)
- Must have a Cloudflare API token and the zone id of the domain you want to create a record for
    - The API token must have edit permissions

### Configuration
1. Make a copy of the file `.env.example` as `.env`
2. Replace the following values with appropriate values for your setup:
    1. `__CLOUDFLARE_API_TOKEN__`
    2. `__CLOUDFLARE_ZONE_ID__`
    3. `__RECORD_NAME__`
    4. `__TTL__`
3. Run `apply.sh`

### Adding to crontab
Must have `cron` installed. Open crontab with `crontab -e` and add the line:

```bash
0 *   *   *   *    (/full/path/to/script/apply.sh) 2>&1 | logger -t set-ip
```

This will run at the start of every hour and send the logs to the default logging system with logger, tagged with set-ip.

To view the logs with systemd:
```bash
journalctl -xet set-ip
```
