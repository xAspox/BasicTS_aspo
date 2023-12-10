#!/bin/bash
python experiments/train.py -c baselines/DLinear/ETTh1.py --gpus '0'
python experiments/train.py -c baselines/DLinear/ETTh2.py --gpus '0'
python experiments/train.py -c baselines/DLinear/ETTm1.py --gpus '0'
python experiments/train.py -c baselines/DLinear/ETTm2.py --gpus '0'
python experiments/train.py -c baselines/DLinear/Electricity.py --gpus '0'
python experiments/train.py -c baselines/DLinear/ExchangeRate.py --gpus '0'
python experiments/train.py -c baselines/DLinear/Weather.py --gpus '0'
python experiments/train.py -c baselines/DLinear/PEMS04.py --gpus '0'
python experiments/train.py -c baselines/DLinear/PEMS08.py --gpus '0'