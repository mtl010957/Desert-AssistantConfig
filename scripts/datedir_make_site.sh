#!/bin/bash

. /config/shell_secrets.sh
datedir=$1

echo "Cam1 Get Files..." && /config/scripts/get_cam_files.sh ${datedir} /media/5850cam1 ${USR_5850CAM1} ${PWD_5850CAM1} ${URL_5850CAM1}
echo "Cam1 Make MP4 from Images..." && /config/scripts/images_to_mp4.sh ${datedir} 5850cam1
echo "Cam1 Make MP4..." && /config/scripts/h264_to_mp4.sh ${datedir} 5850cam1

