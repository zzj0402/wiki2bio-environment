# wiki2bio-environment
Docker environment for https://github.com/tyliupku/wiki2bio

## Run

```bash
docker run -it --runtime=nvidia --device /dev/nvidia0:/dev/nvidia0 --device /dev/nvidiactl:/dev/nvidiactl --device /dev/nvidia-uvm:/dev/nvidia-uvm --device /dev/nvidia-modeset:/dev/nvidia-modeset --device /dev/nvidia-uvm-tools:/dev/nvidia-uvm-tools zzj0402/wiki2bio-environment bash
```

## Preprocess

In ~/wiki2bio run `python preprocess.py`

## Training

`python Main.py | tee /root/log/training.log`
