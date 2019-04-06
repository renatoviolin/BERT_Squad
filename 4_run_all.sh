rm output_v2/*
./4_train2_relu_drop.sh
python evaluate-v2.0.py squad_min/dev-v2.0-min.json output_v2/predictions.json > eval_dev/relu_dropout
./4_test2_relu_drop.sh
python evaluate-v2.0.py squad_min/train-v2.0-min.json output_v2/predictions.json > eval_train/relu_dropout

rm output_v2/*
./4_train2_relu_nodrop.sh
python evaluate-v2.0.py squad_min/dev-v2.0-min.json output_v2/predictions.json > eval_dev/relu_nodropout
./4_test2_relu_nodrop.sh
python evaluate-v2.0.py squad_min/train-v2.0-min.json output_v2/predictions.json > eval_train/relu_nodropout
