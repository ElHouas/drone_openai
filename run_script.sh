#!/bin/bash

source devel/setup.bash
rosrun drone_openai yaw_ppo2.py
# rosrun drone_openai sjtu_train_dqn.py
# rosrun drone_openai sjtu_train_ppo2_tb.py
# rosrun drone_openai sjtu_eval.py
# rosrun drone_openai yaw_task.py