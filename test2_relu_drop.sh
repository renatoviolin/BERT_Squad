export BERT_BASE_DIR=/home/renato/BERT_Squad/uncased_L-12_H-768_A-12
export SQUAD_DIR=/home/renato/BERT_Squad/squad
export OUTPUT_DIR_V2=/home/renato/BERT_Squad/output_v2

python run_squad_relu_dropout.py \
  --vocab_file=$BERT_BASE_DIR/vocab.txt \
  --bert_config_file=$BERT_BASE_DIR/bert_config.json \
  --init_checkpoint=$OUTPUT_DIR_V2/model.ckpt-10859 \
  --do_train=False \
  --train_file=$SQUAD_DIR/train-v2.0.json \
  --do_predict=True \
  --predict_file=$SQUAD_DIR/train-v2.0.json \
  --train_batch_size=12 \
  --learning_rate=3e-5 \
  --num_train_epochs=1.0 \
  --max_seq_length=384 \
  --doc_stride=128 \
  --output_dir=$OUTPUT_DIR_V2