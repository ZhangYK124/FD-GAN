![Python 3](https://img.shields.io/badge/python-3-green.svg) ![Pytorch 0.3](https://img.shields.io/badge/pytorch-0.3-blue.svg)
# FD-GAN: Pose-guided Feature Distilling GAN for Robust Person Re-identification

Download the pretrained model and then generate images.
```
bash ./demo.sh
```

<p align="center"><img src='framework.jpg' width="600px"></p>

[[Paper]](https://arxiv.org/abs/1810.02936)

[Yixiao Ge](mailto:yxge@link.cuhk.edu.hk)\*, [Zhuowan Li](mailto:zli110@jhu.edu)\*, [Haiyu Zhao](mailto:zhaohaiyu@sensetime.com), [Guojun Yin](mailto:gjyin@mail.ustc.edu.cn), [Shuai Yi](mailto:yishuai@sensetime.com), [Xiaogang Wang](mailto:xgwang@ee.cuhk.edu.hk), and [Hongsheng Li](mailto:hsli@ee.cuhk.edu.hk)  
Neural Information Processing Systems (**NIPS**), 2018 (* equal contribution)

Pytorch implementation for our NIPS 2018 work. With the proposed siamese structure, we are able to learn **identity-related** and **pose-unrelated** representations.

## Prerequisites
- Python 3
- [Pytorch](https://pytorch.org/) (We run the code under version 0.3.1, maybe lower versions also work.)

## Getting Started

### Installation
- Install dependencies (e.g., [visdom](https://github.com/facebookresearch/visdom) and [dominate](https://github.com/Knio/dominate)). You can install all the dependencies by:
```
pip install scipy, pillow, torchvision, sklearn, h5py, dominate, visdom
```
- Clone this repo:
```
git clone https://github.com/yxgeee/FD-GAN
cd FD-GAN/
```

### Datasets
We conduct experiments on [Market1501](https://drive.google.com/open?id=1LS5_bMqv-37F14FVuziK63gz0wPyb0Hh), [DukeMTMC](https://drive.google.com/open?id=1Ujtm-Cq7lpyslBkG-rSBjkP1KVntrgSL), [CUHK03](https://drive.google.com/open?id=1R7oCwyMHYIxpRVsYm7-2REmFopP9TSXL) datasets. We need pose landmarks for each dataset during training, so we generate the pose files by [Realtime Multi-Person Pose Estimation](https://github.com/tensorboy/pytorch_Realtime_Multi-Person_Pose_Estimation). And the raw datasets have been preprocessed by the code in [open-reid](https://github.com/Cysu/open-reid). 
Download the prepared datasets following below steps:
- Create directories for datasets:
```
mkdir datasets
cd datasets/
```
- Download these datasets through the links above, and `unzip` them in the same root path.

## Usage
As mentioned in the original [paper](https://arxiv.org/abs/1810.02936), there are three stages for training our proposed framework.

### Stage III: Global finetuning
```
bash ./demo.sh
```
- [Market1501_stageIII_model](https://drive.google.com/open?id=1w8xqopW0icA3VIxZyelI9k-Fb8rRCME7)
- [DukeMTMC_stageIII_model](https://drive.google.com/open?id=1axBHUcI7JmPbw8Y_mSpMKWIY9FUfFKMI)
- [CUHK03_stageIII_model](https://drive.google.com/open?id=1q6HkDlDUIV9YNUwAggy-HI9zYQjt7Ihk)

And **test** `best_net_E.pth` by the same way as mentioned in [Stage I](#stageI).

## Citation
Please cite our paper if you find the code useful for your research.
```
@inproceedings{ge2018fdgan,
  title={FD-GAN: Pose-guided Feature Distilling GAN for Robust Person Re-identification},
  author={Ge, Yixiao and Li, Zhuowan and Zhao, Haiyu and Yin, Guojun and Wang, Xiaogang and Li, Hongsheng},
  booktitle={Advances in Neural Information Processing Systems},
  year={2018}
}
```

## Acknowledgements
Our code is inspired by [pytorch-CycleGAN-and-pix2pix](https://github.com/junyanz/pytorch-CycleGAN-and-pix2pix) and [open-reid](https://github.com/Cysu/open-reid).
