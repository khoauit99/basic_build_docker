import numpy as np 
import pandas as pd 


class demo:
    def __init__(self , name):
        self.name = name

    def inmyself(self): 
        with open("./data.txt" , "r") as f:
            khoa = f.read()
        khoa = khoa+" "+self.name

        return khoa

if __name__ == "__main__":
    nhi = demo("nhi")
    print(nhi.inmyself())