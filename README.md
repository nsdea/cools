# Cools
🥶 Contabo VPS Tools (Backups/Snapshots/etc.) - using API

**Can only be ran on Linux** at the moment!

Works on the server, too (if it runs Linux, which is most likely the case)!

## Important Notices
### FAQ
See
[https://contabo.com/en/customer-support/faq/#can-i-use-the-api-for-every-product](https://contabo.com/en/customer-support/faq/#can-i-use-the-api-for-every-product)

**TL;DR:**

- Only works with those with DevOps features enabled (if you can access [https://my.contabo.com/api/details](https://my.contabo.com/api/details), you should be fine)

- **Supported products:**
    - Performance VPS (VPS SSD & VPS NVMe)
    - Virtual Dedicated Server (VDS)

    Every region is supported.

- Works right away, no downtime/migration required!

### Security
This project's code depends on:
- [https://github.com/p-fruck/python-contabo](https://github.com/p-fruck/python-contabo)
- [https://github.com/theskumar/python-dotenv](https://github.com/theskumar/python-dotenv)

## Setup

1. Log into the Contabo panel and open [https://my.contabo.com/api/details](https://my.contabo.com/api/details).

2. Open the auth.sh and read its instructions ***carefully***!

3. Run `pip install -r requirements.txt` inside of *this* directory to install all needed dependencies.

4. Start *Cools* using `python3 cools/main.py`.
