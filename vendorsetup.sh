export SELINUX_IGNORE_NEVERALLOWS=true

rm -rf hardware/qcom-caf/sm8150/display

git clone  https://github.com/H3M3L/hardware_qcom-caf_sm8150_display --single-branch -b lineage-18.1-caf-sm8150 hardware/qcom-caf/sm8150/display
