# Basic MNIST Example

## Prerequisites and System Requirements
---
#### initialize the environment
- If using `conda`
    ```bash
    conda create -n zpsai_mnist python=3.9
    ```

- If using `venv`
    ```bash
    python -m venv ./mnist_venv
    ```

#### Activate environment
| | cmd |
| -------- | ------- |
| conda  | `conda activate zpsai_mnist` |
| venv on Windows | `mnist_venv\Scripts\activate.bat` |
| venv on MacOS | `source mnist_venv/bin/activate` |

#### Install required package
```bash
pip install -r requirements.txt
```

## Run
---
```bash
python main.py --model-type <Model Type> --batch-size <batch_size> --epochs <epochs> --lr <lr> --save-model
```
| Model Type |
| -------- |
| Linear |
| CNN |

Example:
```bash
python main.py --model-type <Model Type> --batch-size 64 --epochs 16 --lr 1 --save-model
```