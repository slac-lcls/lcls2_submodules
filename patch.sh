sed -i '25s/^rogue.Version.exactVersion/#rogue.Version.exactVersion/' high-rate-encoder-dev/firmware//python//high_rate_encoder_dev/_Root.py
sed -i '313s/ raise ValueError(errMsg)/#raise ValueError(errMsg)/' cameralink-gateway/firmware//python/cameralink_gateway/_ClinkDevRoot.py 
sed -i '231s/deps[0].set(rawVal, write=write))/deps[0].set(rawVal, write=write)/' epix-100a-gen2/software/python/ePixFpga/_ePixFpga.py
sed -i '233s/raise ValueError(errMsg)/#raise ValueError(errMsg)/' lcls2-epix-hr-pcie/firmware/submodules/axi-pcie-core/python/axipcie/_AxiPcieCore.py

