package com.addlive.impl;

import android.os.Build;
import android.os.Build.VERSION;
import com.addlive.platform.DeviceSupportLevel;
import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;

public class DeviceCompatibilityTest
{
  private static final String[] AUDIO_ONLY_DEVICES = new String[0];
  private static final String[] SUPPORTED_DEVICES;
  private static String TAG = "DeviceCompatibilityTest";
  
  static
  {
    SUPPORTED_DEVICES = new String[] { "Nexus 4", "Nexus 5", "Nexus 7", "GT-N8000", "SM-P601", "GT-I93..", "GT-I95..", "SGH-M919", "GT-I91..", "GT-N7000", "SC-02C", "SHW-M250.", "SPH-D710BST", "GT-N71..", "htc_jewel", "EVO", "HTC 801e", "HTCONE", "HTC One", "HTC One 801e", "HTL22", "M7", "DROID RAZR HD", "XT1058" };
  }
  
  public static DeviceSupportLevel assessCompatibility()
  {
    if ((Build.VERSION.SDK_INT < 16) && (!isGalaxyS3())) {
      return DeviceSupportLevel.NOT_FUNCTIONAL;
    }
    if (isWhiteListed(SUPPORTED_DEVICES)) {
      return DeviceSupportLevel.FULLY_SUPPORTED;
    }
    if (!supportsNeon()) {
      return DeviceSupportLevel.NOT_FUNCTIONAL;
    }
    if (isWhiteListed(AUDIO_ONLY_DEVICES)) {
      return DeviceSupportLevel.AUDIO_ONLY;
    }
    return DeviceSupportLevel.NOT_SUPPORTED;
  }
  
  private static boolean checkForNeonSupport(BufferedReader paramBufferedReader)
  {
    String str;
    do
    {
      str = paramBufferedReader.readLine();
      if (str == null) {
        break;
      }
    } while ((!str.contains("Features")) || (!Arrays.asList(str.split(" ")).contains("neon")));
    Log.i(TAG, "Device supports neon extension");
    return true;
    Log.i(TAG, "Device does not support neon extension");
    return false;
  }
  
  private static boolean isGalaxyS3()
  {
    boolean bool = false;
    if ((Build.DEVICE.equals("m0")) || (Build.DEVICE.regionMatches(false, 0, "d2", 0, 2))) {
      bool = true;
    }
    return bool;
  }
  
  private static boolean isWhiteListed(String[] paramArrayOfString)
  {
    boolean bool2 = false;
    String str = Build.MODEL;
    int j = paramArrayOfString.length;
    int i = 0;
    for (;;)
    {
      boolean bool1 = bool2;
      if (i < j)
      {
        if (str.matches(paramArrayOfString[i])) {
          bool1 = true;
        }
      }
      else {
        return bool1;
      }
      i += 1;
    }
  }
  
  private static boolean supportsNeon()
  {
    try
    {
      BufferedReader localBufferedReader = new BufferedReader(new FileReader("/proc/cpuinfo"));
      try
      {
        boolean bool = checkForNeonSupport(localBufferedReader);
        return bool;
      }
      finally
      {
        localBufferedReader.close();
      }
      return false;
    }
    catch (IOException localIOException)
    {
      Log.e(TAG, "Could not read cpuinfo file, assuming neon isn't supported");
    }
  }
}

/* Location:
 * Qualified Name:     com.addlive.impl.DeviceCompatibilityTest
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */