import common
import edify_generator

def RemoveDeviceAssert(info):
  edify = info.script
  for i in xrange(len(edify.script)):
    if "ro.product" in edify.script[i]:
      edify.script[i] = ''
      return

def AddAssertions(info):
    edify = info.script
    for i in xrange(len(edify.script)):
        if " ||" in edify.script[i] and ("ro.product.device" in edify.script[i] or "ro.build.product" in edify.script[i]):
            edify.script[i] = edify.script[i].replace(" ||", ' || getprop("ro.build.product") == "ef51l" || getprop("ro.product.device") == "ef51l" || getprop("ro.build.product") == "ef51s" || getprop("ro.product.device") == "ef51s" || getprop("ro.build.product") == "ef51k" || getprop("ro.product.device") == "ef51k" || getprop("ro.build.product") == "a860" || getprop("ro.product.device") == "a860" ||')
            return


def AddArgsForFormatSystem(info):
  edify = info.script
  for i in xrange(len(edify.script)):
    if "format(" in edify.script[i] and "/dev/block/platform/msm_sdcc.1/by-name/system" in edify.script[i]:
      edify.script[i] = 'format("ext4", "EMMC", "/dev/block/platform/msm_sdcc.1/by-name/system", "0", "/system");'
      return

def WritePolicyConfig(info):
  try:
    file_contexts = info.input_zip.read("META/file_contexts")
    common.ZipWriteStr(info.output_zip, "file_contexts", file_contexts)
  except KeyError:
    print "warning: file_context missing from target;"

def InstallDolby(info):
    garyyiu2015 = info.input_zip.read("META/Dolby.zip")
    common.ZipWriteStr(info.output_zip, "Dolby/Dolby.zip", garyyiu2015)

def FlashDolby(info):
    info.script.AppendExtra(('ui_print("Flash Dolby Audio...");'))
    info.script.AppendExtra(('package_extract_dir("Dolby", "/tmp/Dolby");'))
    info.script.AppendExtra(('run_program("/sbin/busybox", "unzip", "/tmp/Dolby/Dolby.zip", "META-INF/com/google/android/*", "-d", "/tmp/Dolby");'))
    info.script.AppendExtra(('run_program("/sbin/busybox", "sh", "/tmp/Dolby/META-INF/com/google/android/update-binary", "dummy", "1", "/tmp/Dolby/Dolby.zip");'))

def FullOTA_InstallEnd(info):
    AddAssertions(info)
    WritePolicyConfig(info)


    InstallDolby(info)
    FlashDolby(info)
def IncrementalOTA_InstallEnd(info):
    AddAssertions(info)
