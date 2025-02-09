# Readme

This repository is a fork from the BasicTS framework (https://github.com/GestaltCogTeam/BasicTS) proposed in the work *Exploring Progress in Multivariate Time Series Forecasting: Comprehensive Benchmarking and Heterogeneity Analysis* (https://arxiv.org/abs/2310.06119)


Besides some utility edits, two new architectures have been added: 
- STDMAE + DCRNN 
- STDMAE + D2STGNN

This was done as part of my martes's thesis *Prediction of traffic flow levels with Graph Neural Networks*

# 💿 Set up 


A Linux environment is recommended (e.g., Ubuntu or CentOS).
We recommend using [Anaconda](https://www.anaconda.com/) to create a virtual Python environment.

```bash
# Install Python
conda create -n BasicTS python=3.11
conda activate BasicTS
# Install PyTorch
pip install torch==2.3.1 torchvision==0.18.1 torchaudio==2.3.1 --index-url https://download.pytorch.org/whl/cu121
# Install other dependencies
pip install -r requirements.txt
```
In case of problems, refer to the original_requirements.txt file 

You can download the `all_data.zip` file from [Google Drive](https://drive.google.com/drive/folders/14EJVODCU48fGK0FkyeVom_9lETh80Yjp?usp=sharing) or [Baidu Netdisk](https://pan.baidu.com/s/1shA2scuMdZHlx6pj35Dl7A?pwd=s2xe). Unzip the files to the `datasets/` directory:

```bash
cd /path/to/BasicTS # not BasicTS/basicts
unzip /path/to/all_data.zip -d datasets/
```

In order to use the STD-MAE pretraining technique, some extra libraries are required: 

```bash
pip install positional_encodings==6.0.1
pip install timm==0.6.7
```

Download the weights of the two autoencoders from the official repository: 

```bash
# Download
wget https://raw.githubusercontent.com/Jimmy-7664/STD-MAE/main/mask_save/SMAE_PEMS03_864.pt
wget https://raw.githubusercontent.com/Jimmy-7664/STD-MAE/main/mask_save/TMAE_PEMS03_864.pt

# Positioning
mv /SMAE_PEMS03_864.pt /BasicTS/baselines/STDMAE/mask_save/
mv /TMAE_PEMS03_864.pt /BasicTS/baselines/STDMAE/mask_save/
```

# Run the demo 
One the environment is set up, you can run the web app with

```bash
python3 demo/web_app.py
```



