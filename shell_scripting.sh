if [ $stage -le 0 ]; then
  echo "$0: mixing noise to clean audio"
  # args passed to the mix_noise_to_audio.py script: folder of clean audio, file of formfactor noise, folder of noise, snr value
  python3 mix_noise_to_audio.py \
          ./db/recordings \
          ./db/skdy_silence.wav \y
          ./db/noise \
          $snr
fi
