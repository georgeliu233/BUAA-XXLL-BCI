# BUAA-XXLL-BCI
北航信息理论课BCI小组展示的demo~
## 大家好，我们是BUAA信息理论课的BCI Team，这个EEG的demo十分适合初次涉及BCI的筒子们~比如说我们233

## 关于文件：
1.lstm中有几次测试的.m文件，其中首先运行datalstm下载dataset中数据集和测试集 **文件路径需要自行更改**使之生成mat文件对应训练和测试用元胞数组
2.用datatest进行运算**我们使用的CPU模式，电脑配置比较dalao可切换GPU运行**
3.dataset中有训练集original_data和测试集test，均为.csv文件，若使用需要自行处理，同时不要忘记备注来源论文的名称~
4.lstm2文件夹是双层的结构**建议16G内存及以上否则内存会有点吃不消**
5.具体lstm的结构与讲解可以参考dalao的blog：http://colah.github.io/posts/2015-08-Understanding-LSTMs/

## 数据集来源：（如需要公开时请继续引用下列论文）
[A Study on Mental State Classification using EEG-based Brain-Machine Interface](https://ieeexplore.ieee.org/abstract/document/8710576) - this work first proposes the technique and features. We used them to classify mental state. 

@inproceedings{bird2018study,  
  title={A study on mental state classification using eeg-based brain-machine interface},  
  author={Bird, Jordan J and Manso, Luis J and Ribeiro, Eduardo P and Ek{\'a}rt, Anik{\'o} and Faria, Diego R},  
  booktitle={2018 International Conference on Intelligent Systems (IS)},  
  pages={795--800},  
  year={2018},  
  organization={IEEE}  
}

[Mental Emotional Sentiment Classification with an EEG based Brain-Machine Interface](https://www.researchgate.net/profile/Jordan_Bird2/publication/329403546_Mental_Emotional_Sentiment_Classification_with_an_EEG-based_Brain-machine_Interface/links/5c2f74c092851c22a35975c5/Mental-Emotional-Sentiment-Classification-with-an-EEG-based-Brain-machine-Interface.pdf) - this work applies the technique to classification of emotional experiences

@inproceedings{bird2019mental,  
  title={Mental Emotional Sentiment Classification with an EEG-based Brain-machine Interface},  
  author={Bird, Jordan J and Ekart, Anik{\'o} and Buckingham, Christopher D and Faria, Diego R},  
  booktitle={Proceedings of the International Conference on Digital Image and Signal Processing (DISP’19)},  
  year={2019}  
}

[A Deep Evolutionary Approach to Bioinspired Classifier Optimisation for Brain-Machine Interaction](https://www.hindawi.com/journals/complexity/2019/4316548/abs/) - the technique is used alongside evolutionary hyperparameter optimisation of neural network topologies and compared to an LSTM 

@article{bird2019deep,  
  title={A Deep Evolutionary Approach to Bioinspired Classifier Optimisation for Brain-Machine Interaction},  
  author={Bird, Jordan J and Faria, Diego R and Manso, Luis J and Ek{\'a}rt, Anik{\'o} and Buckingham, Christopher D},  
  journal={Complexity},  
  volume={2019},  
  year={2019},  
  publisher={Hindawi}  
}

[Classification of EEG Signals Based on Image Representation of Statistical Features](https://link.springer.com/chapter/10.1007/978-3-030-29933-0_37) - this work introduced new features to the generator and then applied them in reforming the signals to images and using a CNN to classify them 

@inproceedings{ashford2019classification,  
  title={Classification of EEG Signals Based on Image Representation of Statistical Features},  
  author={Ashford, Jodie and Bird, Jordan J and Campelo, Felipe and Faria, Diego R},  
  booktitle={UK Workshop on Computational Intelligence},  
  pages={449--460},  
  year={2019},  
  organization={Springer}  
}  
