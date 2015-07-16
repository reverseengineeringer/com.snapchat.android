import android.os.Build;
import android.os.Build.VERSION;
import com.addlive.platform.ADL;
import com.addlive.platform.DeviceSupportLevel;

@awj
public final class att
{
  public static final boolean HAS_SURFACE_TEXTURE_RECORDING;
  public static final boolean IS_GALAXY_S6;
  public static final boolean IS_NEXUS_4;
  public static final boolean SUPPORTS_HEADS_UP_NOTIFICATION;
  public static final boolean SUPPORTS_MEDIA_INFO_VIDEO_RENDERING_START;
  public static final boolean SUPPORTS_NOTIFICATION_PRIORITY;
  public static final boolean SUPPORTS_TRANSPARENT_STATUS_BAR;
  public static final boolean SUPPORTS_UNEQUAL_SIZE_BITMAP_REUSE;
  public static final boolean SUPPORTS_VIDEO_PLAYBACK_FROM_INTERNAL_STORAGE;
  public static final boolean SUPPORTS_VIDEO_STABILIZATION;
  
  static
  {
    boolean bool2 = true;
    if (Build.VERSION.SDK_INT >= 16)
    {
      bool1 = true;
      HAS_SURFACE_TEXTURE_RECORDING = bool1;
      if (Build.VERSION.SDK_INT < 16) {
        break label172;
      }
      bool1 = true;
      label26:
      SUPPORTS_NOTIFICATION_PRIORITY = bool1;
      if (Build.VERSION.SDK_INT < 15) {
        break label177;
      }
      bool1 = true;
      label40:
      SUPPORTS_VIDEO_STABILIZATION = bool1;
      if (Build.VERSION.SDK_INT < 21) {
        break label182;
      }
      bool1 = true;
      label54:
      SUPPORTS_HEADS_UP_NOTIFICATION = bool1;
      if (Build.VERSION.SDK_INT < 19) {
        break label187;
      }
      bool1 = true;
      label68:
      SUPPORTS_UNEQUAL_SIZE_BITMAP_REUSE = bool1;
      if (Build.VERSION.SDK_INT < 19) {
        break label192;
      }
      bool1 = true;
      label82:
      SUPPORTS_TRANSPARENT_STATUS_BAR = bool1;
      if (Build.VERSION.SDK_INT < 17) {
        break label197;
      }
      bool1 = true;
      label96:
      SUPPORTS_MEDIA_INFO_VIDEO_RENDERING_START = bool1;
      if (Build.VERSION.SDK_INT < 16) {
        break label202;
      }
      bool1 = true;
      label110:
      SUPPORTS_VIDEO_PLAYBACK_FROM_INTERNAL_STORAGE = bool1;
      IS_NEXUS_4 = Build.MODEL.equals("Nexus 4");
      if (Build.DEVICE.indexOf("zero") != 0) {
        break label207;
      }
      bool1 = bool2;
      if (Build.MODEL.indexOf("SM-G920") < 0) {
        if (Build.MODEL.indexOf("SM-G925") < 0) {
          break label207;
        }
      }
    }
    label172:
    label177:
    label182:
    label187:
    label192:
    label197:
    label202:
    label207:
    for (boolean bool1 = bool2;; bool1 = false)
    {
      IS_GALAXY_S6 = bool1;
      return;
      bool1 = false;
      break;
      bool1 = false;
      break label26;
      bool1 = false;
      break label40;
      bool1 = false;
      break label54;
      bool1 = false;
      break label68;
      bool1 = false;
      break label82;
      bool1 = false;
      break label96;
      bool1 = false;
      break label110;
    }
  }
  
  public static boolean a()
  {
    boolean bool = true;
    String str = Build.DEVICE;
    int i = -1;
    switch (str.hashCode())
    {
    }
    for (;;)
    {
      switch (i)
      {
      default: 
        bool = false;
      }
      return bool;
      if (str.equals("m4"))
      {
        i = 0;
        continue;
        if (str.equals("htc_m8")) {
          i = 1;
        }
      }
    }
  }
  
  public static boolean b()
  {
    return ADL.assesDeviceCompatibility() != DeviceSupportLevel.NOT_FUNCTIONAL;
  }
}

/* Location:
 * Qualified Name:     att
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */