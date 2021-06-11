if [ $stage -le 0 ]; then
  echo "$0: startig stage 0"
  # pass args to python script
  python3 mix_noise_to_audio.py \
          ./db/recordings \
          ./db/skdy_silence.wav \y
          ./db/noise \
          $snr
fi
