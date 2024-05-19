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
| Model Type | cmd |
| -------- | ------- |
| Linear | `python main.py --model-type "Linear" --save-model` |
| CNN | `python main.py --model-type "CNN" --save-model` |
