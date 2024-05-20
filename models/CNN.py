import torch
from torch import nn
import torch.nn.functional as F

class cnnNet(nn.Module):
    def __init__(self):
        super(cnnNet, self).__init__()
        self.conv1 = nn.Conv2d(1, 6, 3, 1)
        self.dropout1 = nn.Dropout(0.25)
        self.fc1 = nn.Linear(1014, 10)

    def forward(self, x):
        x = self.conv1(x)
        x = F.relu(x)
        x = F.max_pool2d(x, 2)
        x = self.dropout1(x)
        x = torch.flatten(x, 1)
        x = self.fc1(x)
        output = F.log_softmax(x, dim=1)
        return output