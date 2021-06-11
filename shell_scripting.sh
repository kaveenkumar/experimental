stage=0

if [ $stage -le 0 ]; then
  echo "$0: starting stage 0"
  # pass args to python script
  python3 foo.py \
          ./db/data \
          ./db/music.wav \
          $var
fi
