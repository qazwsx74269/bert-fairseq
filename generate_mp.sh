CUDA_VISIBLE_DEVICES=0 python generate_multi_pointer.py  --max-tokens-generate 100  --bertpref  query,passage-1,passage-2,passage-3,passage-4,passage-5,target --data /nas/qsj/data-bin-v2/top-5-well-form  --tokenizer-dir /nas/qsj/bert-model/bert-base-uncased --path checkpoints/top-5-qa+nlg*3/checkpoint_best.pt --gen-subset valid-well-form  --task multi_tokens_task  --max-query-positions 40 --max-passage-positions 210   --train-batch 4 --max-tokens 5000 --generate-file generate-out/multi-style-valid-well-form-top-5-qa+nlg*3.pk | tee -a generate-out/multi-style-valid-well-form-top-5-qa+nlg*3.log
