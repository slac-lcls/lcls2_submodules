sed -i '25s/^rogue.Version.exactVersion/#rogue.Version.exactVersion/' high-rate-encoder-dev/firmware//python//high_rate_encoder_dev/_Root.py
sed -i '313s/ raise ValueError(errMsg)/#raise ValueError(errMsg)/' cameralink-gateway/firmware//python/cameralink_gateway/_ClinkDevRoot.py 
# Patch lcls2-pgp-pcie-apps minVersion
sed -i "s/^rogue.Version.minVersion('6.4.0')/#rogue.Version.minVersion('6.4.0')/" \
          lcls2-pgp-pcie-apps/firmware/python/lcls2_pgp_pcie_apps/_DevRoot.py
