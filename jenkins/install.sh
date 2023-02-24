#!/usr/bin/env sh

docker login -u cn-north-4@WM250O3AXDUXIHF3B0Z8 -p ${HW_DK_PS} swr.cn-north-4.myhuaweicloud.com
docker build -t swr.cn-north-4.myhuaweicloud.com/cn/jenkins/jenkins:lts-jdk11-cn .