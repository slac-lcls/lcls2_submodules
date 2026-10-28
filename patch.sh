cd lcls2-udp-pcie-apps
git apply --ignore-whitespace ../pr_patches/lcls2_udp_pcie_apps.diff
cd ..
cd lcls2-pgp-pcie-apps
git apply --ignore-whitespace ../pr_patches/lcls2_pgp_pcie_apps.diff
cd ..
cd lcls2-epix-hr-pcie
git apply --ignore-whitespace ../pr_patches/lcls2_epix_hr_pcie.diff
cd ..
cd cameralink-gateway
git apply --ignore-whitespace ../pr_patches/cameralink_gateway.diff
cd ..

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

# ePixUHR3x2 has a bigger set of changes (Python 3.10, rogue 6.15 with Float16 support)
# -- Apply it has a patch file

cd epixuhr-3x2-readout-testing
git apply --ignore-whitespace ../rogue_patches/epixuhr3x2_v5.1.0.patch
