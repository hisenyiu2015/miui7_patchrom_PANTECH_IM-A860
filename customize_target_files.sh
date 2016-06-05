#/bin/bash

cp -f other/file_contexts out/target_files/META/
cp -f other/Dolby.zip out/target_files/META/
rm -rf out/target_files/SYSTEM/lib/libjni_latinime.so
rm -rf out/target_files/SYSTEM/lib/libjni_pinyinime.so