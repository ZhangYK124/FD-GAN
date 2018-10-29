python test.py --display-port 6006 --display-id 1 \
    --stage 2 -d market1501 \
    --pose-aug gauss -b 48 -j 4 --niter 25 --niter-decay 25 --lr 0.0001 --save-step 10 --eval-step 5 \
    --lambda-recon 100.0 --lambda-veri 10.0 --lambda-sp 10.0 --smooth-label \
    --netE-pretrain ./model/stageIII/best_net_E.pth --netG-pretrain ./model/stageIII/best_net_G.pth \
    --netDi-pretrain ./model/stageIII/best_net_Di.pth --netDp-pretrain ./model/stageIII/best_net_Dp.pth
