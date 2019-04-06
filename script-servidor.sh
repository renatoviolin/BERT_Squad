# Install
sudo pip install bert-tensorflow
sudo systemctl disable jupyter
sudo pip install gpustat

# Download dataset
wget -O bert_model.zip -c https://storage.googleapis.com/bert_models/2018_10_18/uncased_L-12_H-768_A-12.zip
unzip bert_model.zip
rm bert_model.zip
wget -P squad/ -c https://rajpurkar.github.io/SQuAD-explorer/dataset/train-v2.0.json
wget -P squad/ -c https://rajpurkar.github.io/SQuAD-explorer/dataset/dev-v2.0.json
wget -P squad/ -c https://rajpurkar.github.io/SQuAD-explorer/dataset/train-v1.1.json
wget -P squad/ -c https://rajpurkar.github.io/SQuAD-explorer/dataset/dev-v1.1.json
wget -c https://github.com/allenai/bi-att-flow/blob/master/squad/evaluate-v1.1.py
wget -O evaluate-v2.0.py https://worksheets.codalab.org/rest/bundles/0x6b567e1cf2e041ec80d7098f031c5c9e/contents/blob/

mkdir eval_dev
mkdir eval_train
# Download repositorio
# git clone https://github.com/renatoviolin/BERT_Squad

# nohup jupyter lab --config=/home/jupyter/.jupyter/jupyter_notebook_config.py &
# python evaluate-v2.0.py squad/dev-v2.0.json output_v2/predictions.json

