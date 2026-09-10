  #!/bin/bash

rm -rf .repo/local_manifests/
rm -rf device/xiaomi
rm -rf kernel/xiaomi/

repo init -u https://github.com/Evolution-X/manifest -b cnb --git-lfs --depth=1
git clone https://github.com/yohanyuan741/local_manifests -b main .repo/local_manifests
/opt/crave/resync.sh
. build/envsetup.sh
lunch lineage_vayu-cp2a-user
m installclean
m evolution
