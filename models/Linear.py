import torch
from torch import nn
import torch.nn.functional as F

class linearNet(nn.Module):
    def __init__(self):
        super(linearNet, self).__init__()
        self.fc1 = nn.Linear(28*28, 50)
        self.fc1_drop = nn.Dropout(0.2)
        self.fc2 = nn.Linear(50, 50)
        self.fc2_drop = nn.Dropout(0.2)
        self.fc3 = nn.Linear(50, 10)

    def forward(self, x):
        x = x.view(-1, 28*28)
        x = self.fc1(x)
        x = self.fc1_drop(x)
        x = self.fc2(x)
        x = self.fc2_drop(x)
        return F.log_softmax(self.fc3(x), dim=1)
        output = F.log_softmax(x, dim=1)
        return output