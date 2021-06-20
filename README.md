JST_following cart project
=============

### software & hardware
* ros, python, cpp, cmake
* jetson nano, logitech webcam, arduino, motor sheild, xbox joystick, rp lidar a1

### prerequisite & hardware
* jetson_inference 필요(https://github.com/dusty-nv/jetson-inference)
* ros_deep_learning(https://github.com/dusty-nv/ros_deep_learning)
* ros, python, cpp
* jetson nano, logitech webcam, arduino, motor sheild, xbox joystick, rp lidar a1
```
$ cd ~
$ sudo apt-get install git cmake
$ git clone --recursive https://github.com/dusty-nv/jetson-inference
$ cd jetson-inference
$ mkdir build
$ cd build
$ cmake ../
$ make -j$(nproc)
$ sudo make install
$ sudo ldconfig
```
* camera_degree 폴더 내에 존재하는 modify_jetson_inference 폴더
  * 앞서 설치한 ros_deep_learning/src/node_detectnet.cpp 파일을 modify_jetson_inference 폴더내 node_detectnet.cpp 파일로 변경 수정
* enter to ros_deep_learning/launch/detectnet.ros1.launch, then change default="csi://0" to default="v4l2:///dev/video0"
- - -

### 설치법
```
  $ git clone https://github.com/khk1262/JST.git
```

### 실행 shell script
* JST/code 폴더 내에 존재하는 start.sh
* 이것은 젯슨 나노가 부팅시 자동으로 roslaunch를 실행하기 위함
* https://ahnbk.com/?p=1329 해당 블로그 글을 참고하여 서비스 파일 생성
  
  
