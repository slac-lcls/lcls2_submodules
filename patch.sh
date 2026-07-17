sed -i '25s/^rogue.Version.exactVersion/#rogue.Version.exactVersion/' high-rate-encoder-dev/firmware/python/high_rate_encoder_dev/_Root.py
sed -i '313s/ raise ValueError(errMsg)/#raise ValueError(errMsg)/' cameralink-gateway/firmware/python/cameralink_gateway/_ClinkDevRoot.py 

sed -i "s/write=write))/write=write)/" epix-100a-gen2/software/python/ePixFpga/_ePixFpga.py
sed -i '233s/raise ValueError(errMsg)/#raise ValueError(errMsg)/' lcls2-epix-hr-pcie/firmware/submodules/axi-pcie-core/python/axipcie/_AxiPcieCore.py
# Patch lcls2-pgp-pcie-apps and cameralink-gateway minVersion
sed -i "s/^rogue.Version.minVersion('6.4.0')/#rogue.Version.minVersion('6.4.0')/" \
          lcls2-pgp-pcie-apps/firmware/python/lcls2_pgp_pcie_apps/_DevRoot.py
sed -i "s/^rogue.Version.minVersion('6.4.0')/#rogue.Version.minVersion('6.4.0')/" \
          cameralink-gateway/firmware/python/cameralink_gateway/_ClinkDevRoot.py
sed -i "s/ZmqServer(root=self, addr='127.0.0.1', port=10000)/ZmqServer(root=self, addr='127.0.0.1', port=0)/" \
	  l2si-drp/firmware/python/l2si_drp/_Root.py
sed -i "s/^rogue.Version.minVersion('6.6.2')/rogue.Version.minVersion('6.1.3')/" \
          epixuhr-3x2-readout-testing/firmware/python/epixuhr_3x2_readout_testing/_Root.py
sed -i "s/^rogue.Version.minVersion('6.6.2')/rogue.Version.minVersion('6.1.3')/" \
          epixuhr-3x2-readout-testing/firmware/python/epixuhr_3x2_readout_testing/Uhr3x2ReadoutSystem/_Uhr3x2ReadoutSystem.py

# Further ePixUHR3x2 -- Python 3.10 incompatibilties
sed -Ei 's/^(def get_carrier_name\(serial_number: int\)) -> .*$/\1:/'                           \
    epixuhr-3x2-readout-testing/firmware/python/epixuhr_3x2_readout_testing/carrier_hwdb.py
sed -Ei 's/^(def get_carrier_id\(serial_number: int\)) -> .*$/\1:/'                             \
    epixuhr-3x2-readout-testing/firmware/python/epixuhr_3x2_readout_testing/carrier_hwdb.py
sed -Ei 's/^(def get_carrier_doc_url\(serial_number: int\)) -> .*$/\1:/'                        \
    epixuhr-3x2-readout-testing/firmware/python/epixuhr_3x2_readout_testing/carrier_hwdb.py

sed -Ei 's/^(def get_readout_name\(serial_number: int\)) -> .*$/\1:/'                           \
        epixuhr-3x2-readout-testing/firmware/python/epixuhr_3x2_readout_testing/readout_hwdb.py
sed -Ei 's/^(def get_readout_id\(serial_number: int\)) -> .*$/\1:/'                             \
        epixuhr-3x2-readout-testing/firmware/python/epixuhr_3x2_readout_testing/readout_hwdb.py
sed -Ei 's/^(def get_readout_doc_url\(serial_number: int\)) -> .*$/\1:/'                        \
        epixuhr-3x2-readout-testing/firmware/python/epixuhr_3x2_readout_testing/readout_hwdb.py
