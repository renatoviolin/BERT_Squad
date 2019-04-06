rm output_v2/*
./train2_linear_drop.sh
python evaluate-v2.0.py squad_min/dev-v2.0-min.json output_v2/predictions.json > eval/linear_dropout

rm output_v2/*
nohup ./train2_relu_drop.sh
python evaluate-v2.0.py squad_min/dev-v2.0-min.json output_v2/predictions.json > eval/relu_dropout

rm output_v2/*
nohup ./train2_tanh_drop.sh
python evaluate-v2.0.py squad_min/dev-v2.0-min.json output_v2/predictions.json > eval/tanh_dropout

rm output_v2/*
nohup ./train2_tanh_nodrop.sh
python evaluate-v2.0.py squad_min/dev-v2.0-min.json output_v2/predictions.json > eval/tanh_nodropout

rm output_v2/*
nohup ./train2_relu_nodrop.sh
python evaluate-v2.0.py squad_min/dev-v2.0-min.json output_v2/predictions.json > eval/relu_nodropout
