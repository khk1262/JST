# JST_following cart project

### 졸업 작품 구상 및 과정
- 최신 기술 트렌드인 자율주행 기술을 접목시키고자 함
- 2가지 파트로 나누어 사용자를 추종하는 기술과 slam을 활용하여 맵 제작 및 추후 네비게이션 기술 지원 예상
- 하지만 비닐 하우스라는 오픈된 공간에서 slam으로는 맵이 제대로 제작되지 않음
- 현재 구현된 부분은 사람을 트래킹하는 부분까지 완료

***

## 초기 시도
1. 처음 설계 및 구현 시 노트북을 이용하여 시도하였음
2. 2d 라이다를 이용하여 사람 다리로부터 사람을 인식하는 leg_tracker[https://github.com/angusleigh/leg_tracker] 기술을 이용
3. 또한 yolov4를 이용하여 전방에 사람이 있는지 웹캠을 통해 인지하여 라이다가 잘못 인식할 경우 걸러낼 수 있도록 함

### 사용된 언어 및 하드웨어
* ros, python, cpp, cmake
* laptop(cpu : i5, ram : 8gb), logitech webcam, arduino, motor sheild, xbox joystick, rp lidar a1

### 구현 단계
1. leg_tracker
<img width="60%" src="https://github.com/khk1262/JST/blob/main/photo/%EB%8B%A4%EB%A6%AC%EC%B6%94%EC%A0%81.gif?raw=true"/>
- rp lidar a1을 사용하여 위와같이 사용자의 다리를 잡아내고, 라이다로부터 떨어진 위치를 알아낼 수 있음
***
2. yolov4와 결합
<img width="40%" src="https://github.com/khk1262/JST/blob/main/photo/%EC%8B%A4%ED%97%981.jpg"/> <img width="40%" src="https://github.com/khk1262/JST/blob/main/photo/%EC%8B%A4%ED%97%982.jpg"/>

- 웹캠을 통해 전방에 사람이 있다는 것을 인지한 후 라이다의 사람 다리 판단으로 넘어감

3. 
## 2차 시도

### 사용된 언어 및 하드웨어
* ros, python, cpp, cmake
* jetson nano, logitech webcam, arduino, motor sheild, xbox joystick, rp lidar a1

### prerequisite & hardware
* jetson_inference 필요(https://github.com/dusty-nv/jetson-inference)
* ros_deep_learning(https://github.com/dusty-nv/ros_deep_learning)
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
  
  
