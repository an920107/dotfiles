# Install Logi Driver

1. Install the dependencies.

   ```bash
   sudo pacman -S base-devel cmake libevdev libconfig systemd-libs glib2
   ```

2. Clone the driver, build, and install.

   ```bash
   git clone https://github.com/PixlOne/logiops.git
   mkdir logiops/build
   cd logiops/build
   cmake ..
   make
   sudo make install
   ```

3. Modify the config file at `/etc/logid.cfg`.

   > Example: https://github.com/PixlOne/logiops/blob/main/logid.example.cfg

4. Enable the service.

   ```bash
   sudo systemctl enable --now logid
   ```

