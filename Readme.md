# zip's streaming setup
Raspberry-pi friendly setup for streaming an external soundcard's output to icecast.
The endpoint is called "magpie'" because the raspberry pi is called magpie, which is because my current computer naming scheme is corvids.

You'll want to copy `.env.sample` to `.env` and pick some passwords.
`openssl rand -base64 12` is a good way to do this.
