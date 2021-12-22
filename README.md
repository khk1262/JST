# JST_following cart project

### 졸업 작품 구상 및 과정
- 최신 기술 트렌드인 자율주행 기술을 접목시키고자 함
- 2가지 파트로 나누어 사용자를 추종하는 기술과 ~~slam을 활용하여 맵 제작 및 추후 네비게이션 기술 지원 예상~~
- 하지만 비닐 하우스라는 오픈된 공간에서 slam으로는 맵이 제대로 제작되지 않음
- 현재 구현된 부분은 사람을 트래킹하는 부분까지 완료

***

## 초기 시도
1. 처음 설계 및 구현 시 노트북을 이용하여 시도하였음
2. 2d 라이다를 이용하여 사람 다리로부터 사람을 인식하는 [leg_tracker](https://github.com/angusleigh/leg_tracker) 기술을 이용
3. 또한 yolov4를 이용하여 전방에 사람이 있는지 웹캠을 통해 인지하여 라이다가 잘못 인식할 경우 걸러낼 수 있도록 함

### 사용된 언어 및 하드웨어
* ROS, python, cpp, cmake
* laptop(cpu : i5, ram : 8gb), logitech webcam, arduino, motor sheild, xbox joystick, rp lidar a1

### 구현 단계
#### leg_tracker
<img width="60%" src="https://github.com/khk1262/JST/blob/main/photo/%EB%8B%A4%EB%A6%AC%EC%B6%94%EC%A0%81.gif?raw=true"/>- rp lidar a1을 사용하여 위와같이 사용자의 다리를 잡아내고, 라이다로부터 떨어진 위치를 알아낼 수 있음

#### yolov4와 결합
<img width="40%" src="https://github.com/khk1262/JST/blob/main/photo/%EC%8B%A4%ED%97%981.jpg"/> <img width="40%" src="https://github.com/khk1262/JST/blob/main/photo/%EC%8B%A4%ED%97%982.jpg"/>
- 웹캠을 통해 전방에 사람이 있다는 것을 인지한 후 라이다의 사람 다리 판단으로 넘어감

#### 조이스틱 조종
<img width="30%" src="https://github.com/khk1262/JST/blob/main/photo/%EC%A1%B0%EC%9D%B4%EC%8A%A4%ED%8B%B1.gif"/> <img width="30%" src="https://github.com/khk1262/JST/blob/main/photo/%EB%B8%94%ED%88%AC%EC%A1%B0%EC%A2%85.gif"/>
- 아두이노 조이스틱 모듈을 설치하여 유사시 사람이 조종할 수 있도록 함, 해당 부분은 추후 xbox 블루투스 조종기로 교체
- 오른쪽 영상의 경우 미니 프로토타입에 적용하여 시험

#### 중간 완성
<img width="40%" src="https://github.com/khk1262/JST/blob/main/photo/%EC%B4%88%EA%B8%B0%EB%8B%A8%EA%B3%84.jpg"/> <img width="30%" src="https://github.com/khk1262/JST/blob/main/photo/%ED%9B%84%EB%B0%A9.gif"/>
- 노트북을 통한 사용자 트래킹의 경우 거의 완성이 되었다.
- 따라서 이제 해당 제품을 실제 제품처럼 만들 단계로 넘어왔다.

***

## 발생 오류
* 연산장치의 소형화를 위해 노트북에서 jetson nano로 변경하는 과정에서 문제가 발생하였다.
* 노트북의 컴퓨팅 파워를 jetson nano가 감당을 하지 못해 기존의 코드를 실행 시 엄청난 렉이 걸리는 것이 이유였다.
* 따라서 기존의 복잡하지만 정교한 코드를 과감히 버릴 수 밖에 없었다.
* 그래서 좀 단순하지만, 확실한 방법이었던 병행 [진행 중이던 프로젝트의 코드](https://github.com/khk1262/camera_degree)를 가져왔다.

## 2차 시도

### 사용된 언어 및 하드웨어
* ROS, python, cpp, cmake
* jetson nano, logitech webcam, arduino, motor sheild, xbox joystick, rp lidar a1

<img width="40%" src="https://github.com/khk1262/JST/blob/main/photo/jetson.jpg"/> _이 쬐까만 놈때문에..._


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
* 해당 과정의 경우 기존 yolov4의 경우 실행하기엔 너무 무거웠기에 ssd-mobilenetv2기반의 ros_deep_learning 패키지를 가져온 것임
- - -

### 2차 구현 단계
* 2차에서는 디자인적인 측면 및 사용의 편리성에 많이 비중을 두었다.

#### 버튼 배선
<img width="20%" src="https://github.com/khk1262/JST/blob/main/photo/%EB%B2%84%ED%8A%BC%EB%B0%B0%EC%84%A01.jpg"/><img width="20%" src="https://github.com/khk1262/JST/blob/main/photo/%EB%B2%84%ED%8A%BC%EB%B0%B0%EC%84%A02.jpg"/><img width="20%" src="https://github.com/khk1262/JST/blob/main/photo/%EC%A0%84%EC%9B%90%EB%B2%84%ED%8A%BC%EA%B2%B0%ED%95%A9.jpg"/><img width="20%" src="https://github.com/khk1262/JST/blob/main/photo/%EB%B0%B0%EC%84%A0%EB%8F%84%EC%A0%95%EB%A6%AC.jpg"/>

사용자가 쉽게 전원을 켜고, 사용 모드를 변경할 수 있도록 카트 몸체에 버튼 결합, 현재 모드를 버튼의 led를 통해 인지할 수 있음

#### ros auto booting
* jetson nano의 전원이 켜지면 내부 roslaunch 파일이 자동으로 실행되도록 하였음
* 밑의 코드는 자동 부팅을 위한 bash 파일(start.sh)
```
#!/bin/bash
source /home/cart/.bashrc
source /opt/ros/melodic/setup.bash
source /home/cart/catkin_ws/devel/setup.bash

roslaunch ros_servo run_all_temp_v1.launch
```
* 디음으로 systemd 서비스 파일을 생성, 생성 위치는 /etc/systemd/system 내에 위치
* /etc/systemd/system/bringup_ros.service
```
[Unit]
Description=Bringup ROS launch Test

[Service]
ExecStart=/home/cart/start.sh
Restart=on-abort

[Install]
WantedBy=multi-user.target
```
* 이제 systemd의 데몬을 재시작
```
$ sudo systemctl daemon-reload
```
* 생성한 서비스를 시작
```
sudo systemctl start bringup_ros.service
```
* 이제 전원을 키면 start.bash 파일에 지정해두었던 roslaunch 파일이 자동으로 실행

#### 중간 단계
<img width="40%" src="https://github.com/khk1262/JST/blob/main/photo/%EC%A4%91%EA%B0%84%EB%8B%A8%EA%B3%84.gif"/>
좁은 길에서 다시 되돌아 갈 경우를 산정하여, 카메라를 전방에서 후방으로 돌아가게 한 후 다시 사람을 트래킹할 경우에도 문제가 없음을 보임

#### 완성 단계
<img width="40%" src="https://github.com/khk1262/JST/blob/main/photo/%EB%B2%84%ED%8A%BC%EA%B2%B0%ED%95%A9.gif"/>
전원을 켰을 때 문제없이 부팅 및 블루투스 패드 조종, 모드 변경이 원활하게 되는 최종 단계

### 끝마치면서
* 문제도 많았고, 탈도 많아 초기에 구상했던 것과는 아직 많이 미흡했지만, 평소부터 관심이 있고, 한번쯤 만들어보고 싶었던 자율 주행(....많이 미흡하지만) 로봇을 졸업 작품이나마 제작을 해볼 수 있어서 즐거운 경험이었다.
* 또한 시작 초기에만 해도 제대로 쓸 줄도 몰랐던 ROS 프로그래밍을 ros-wiki를 뒤적거리며, 아니면 온라인 영상에서 찾아보면서 스스로 생각하기에 많은 것을 배울 수 있었던 프로젝트였던 것 같다.


### 참고 레퍼런스
* [leg_tracker](https://github.com/angusleigh/leg_tracker)
* [bluetooth control](http://wiki.ros.org/joy)
* [젯슨 나노가 부팅시 자동으로 roslaunch를 실행](https://ahnbk.com/?p=1329) 
 * [표윤석 박사 ros 강의](https://www.youtube.com/watch?v=ot_D9N-H4lQ&list=PLRG6WP3c31_VIFtFAxSke2NG_DumVZPgw)
