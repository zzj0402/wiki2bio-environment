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

## Testing

### Model File Loads

Move files from loads directory to result timestamp home directory:

```bash
mv ~/wiki2bio/results/res/1580331814053/loads/69/* ../../
```

### Run test.py

```bash
python test.py | tee /root/log/test.log
```
