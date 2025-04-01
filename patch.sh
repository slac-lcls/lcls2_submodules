sed -i '25s/^rogue.Version.exactVersion/#rogue.Version.exactVersion/' high-rate-encoder-dev/firmware//python//high_rate_encoder_dev/_Root.py
sed '313s/ raise ValueError(errMsg)/#raise ValueError(errMsg)/' cameralink-gateway/firmware//python/cameralink_gateway/_ClinkDevRoot.py > version1.py 
