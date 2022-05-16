

docker-compose up -d --build


docker inspect octo|grep -10  volume
docker volume rm klipper_octoprint



My serial port: /dev/serial/by-id/usb-1a86_USB_Serial-if00-port0
configuration: https://www.klipper3d.org/Installation.html#:~:text=Configuring%20OctoPrint%20to%20use%20Klipper,-The%20OctoPrint%20web&text=Navigate%20to%20the%20Settings%20tab,%22%2Ftmp%2Fprinter%22.