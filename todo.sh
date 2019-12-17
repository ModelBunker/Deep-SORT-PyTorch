docker build -t deepsort .

docker volume create --opt type=none \
                     --opt o=bind \
                     --opt device=. \
                     dpsrt-vol

docker run --gpus all -it \
           -p 5001:6006 \
           --name deepsort_cnt \
           -v dpsrt-vol:/home/PyTorch-YOLOv3/:rw \
           deepsort
cd Object-Tracking/deep_sort_pytorch

python demo_yolo3_deepsort.py /home/frank/modelbunker/models/Object-Tracking/deep_sort_pytorch/images/bab.avi

