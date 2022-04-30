# Using Multiple GPU
./darknet detector train data/autoku_sign_config/obj.data cfg/yolov4-custom-traffic-sign.cfg data/yolov4.conv.137 -gpus 0,1,2,3
# [RESULT] Divergence...

# Lower LR and re-calculate anchor size lr = 0.0005
./darknet detector train data/autoku_sign_config/obj-lr-0005.data cfg/yolov4-custom-traffic-sign-lr-005.cfg data/yolov4.conv.137 -gpus 0
# [RESULT] Training...

# Using Single GPU with lr = 0.001
./darknet detector train data/autoku_sign_config/obj.data cfg/yolov4-custom-traffic-sign.cfg data/yolov4.conv.137 -gpus 1

# Using Single GPU with lr = 0.0001
./darknet detector train data/autoku_sign_config/obj-lr-0001.data cfg/yolov4-custom-traffic-lr-0001.cfg data/yolov4.conv.137 -gpus 2

