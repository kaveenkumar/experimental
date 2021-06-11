if [ $stage -le 0 ]; then
  echo "$0: startig stage 0"
  # pass args to python script
  python3 foo.py \
          ./db/data \
          ./db/music.wav \
          $val
fi
