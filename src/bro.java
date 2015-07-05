import android.app.ActivityManager;
import android.app.ActivityManager.RunningTaskInfo;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.Debug;
import android.os.Debug.MemoryInfo;
import android.os.Environment;
import android.os.StatFs;
import android.telephony.TelephonyManager;
import android.view.Display;
import android.view.WindowManager;
import java.io.File;
import java.math.BigInteger;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public final class bro
{
  private static bqt a = null;
  private static Context b = null;
  private static brd c = null;
  private static brr d = null;
  
  public static void a(Context paramContext)
  {
    b = paramContext;
  }
  
  public static void a(bqt parambqt)
  {
    a = parambqt;
  }
  
  public static void a(brd parambrd)
  {
    c = parambrd;
  }
  
  public static void a(brr parambrr)
  {
    d = parambrr;
  }
  
  public static final class a
    implements brn
  {
    private String a = null;
    
    public a()
    {
      if (cb) {
        str = bgetSystemService"activity"getRunningTasks1get0topActivity.flattenToShortString().replace("/", "");
      }
      a = str;
    }
    
    public final String a()
    {
      return "activity";
    }
  }
  
  public static final class b
    implements brn
  {
    private Integer a = null;
    
    public final String a()
    {
      return "app_version_code";
    }
  }
  
  public static final class c
    implements brn
  {
    public String a = null;
    
    public final String a()
    {
      return "app_version";
    }
  }
  
  public static final class d
    implements brn
  {
    public final String a()
    {
      return "arch";
    }
  }
  
  public static final class e
    implements brn
  {
    private Double a = null;
    
    public e()
    {
      double d2 = 1.0D;
      Intent localIntent = bro.b().getApplicationContext().registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
      int i = localIntent.getIntExtra("level", -1);
      double d3 = localIntent.getIntExtra("scale", -1);
      double d1 = d2;
      if (i >= 0)
      {
        d1 = d2;
        if (d3 > 0.0D) {
          d1 = i / d3;
        }
      }
      a = Double.valueOf(d1);
    }
    
    public final String a()
    {
      return "battery_level";
    }
  }
  
  public static final class f
    implements brn
  {
    public String a = null;
    
    public f()
    {
      try
      {
        String str1 = ((TelephonyManager)bro.b().getSystemService("phone")).getNetworkOperatorName();
        a = str1;
        return;
      }
      catch (Exception localException)
      {
        for (;;)
        {
          String str2 = Build.BRAND;
        }
      }
    }
    
    public final String a()
    {
      return "carrier";
    }
  }
  
  static class g
    implements brn
  {
    private JSONObject a = null;
    
    public g(int paramInt)
    {
      NetworkInfo localNetworkInfo;
      if (cc)
      {
        a = new JSONObject();
        localNetworkInfo = ((ConnectivityManager)bro.b().getSystemService("connectivity")).getNetworkInfo(paramInt);
        if (localNetworkInfo == null) {}
      }
      for (;;)
      {
        try
        {
          a.put("available", localNetworkInfo.isAvailable());
          a.put("connected", localNetworkInfo.isConnected());
          if (!localNetworkInfo.isConnected()) {
            a.put("connecting", localNetworkInfo.isConnectedOrConnecting());
          }
          a.put("failover", localNetworkInfo.isFailover());
          if (paramInt != 0) {
            break label153;
          }
          paramInt = 1;
          if (paramInt == 0) {
            break label152;
          }
          a.put("roaming", localNetworkInfo.isRoaming());
          return;
        }
        catch (JSONException localJSONException)
        {
          a = null;
          btd.c();
        }
        a = null;
        return;
        label152:
        return;
        label153:
        paramInt = 0;
      }
    }
    
    public String a()
    {
      return null;
    }
    
    public JSONObject c()
    {
      return a;
    }
  }
  
  public static final class h
    implements brn
  {
    private Float a = null;
    
    public final String a()
    {
      return "dpi";
    }
  }
  
  public static final class i
    implements brn
  {
    private String a = null;
    
    public i()
    {
      try
      {
        BigInteger.valueOf(-1L);
        StatFs localStatFs = new StatFs(Environment.getDataDirectory().getPath());
        a = BigInteger.valueOf(localStatFs.getAvailableBlocks()).multiply(BigInteger.valueOf(localStatFs.getBlockSize())).toString();
        return;
      }
      catch (ThreadDeath localThreadDeath)
      {
        throw localThreadDeath;
      }
      catch (Throwable localThrowable)
      {
        a = null;
      }
    }
    
    public final String a()
    {
      return "disk_space_free";
    }
  }
  
  public static final class j
    implements brn
  {
    private String a = null;
    
    public j()
    {
      try
      {
        BigInteger.valueOf(-1L);
        StatFs localStatFs = new StatFs(Environment.getDataDirectory().getPath());
        a = BigInteger.valueOf(localStatFs.getBlockCount()).multiply(BigInteger.valueOf(localStatFs.getBlockSize())).toString();
        return;
      }
      catch (ThreadDeath localThreadDeath)
      {
        throw localThreadDeath;
      }
      catch (Throwable localThrowable)
      {
        a = null;
      }
    }
    
    public final String a()
    {
      return "disk_space_total";
    }
  }
  
  public static final class k
    implements brn
  {
    private String a = null;
    
    public k()
    {
      if ((a == null) || (a.length() == 0)) {
        a = "en";
      }
    }
    
    public final String a()
    {
      return "locale";
    }
  }
  
  public static final class l
    implements brn
  {
    private JSONArray a = null;
    
    public l()
    {
      if (ca) {
        a = bro.d().a();
      }
    }
    
    public final String a()
    {
      return "logcat";
    }
  }
  
  public static final class m
    implements brn
  {
    private Long a = null;
    
    public final String a()
    {
      return "memory_total";
    }
  }
  
  public static final class n
    implements brn
  {
    private Integer a = null;
    
    public n()
    {
      Debug.MemoryInfo localMemoryInfo = new Debug.MemoryInfo();
      Debug.getMemoryInfo(localMemoryInfo);
      int i = dalvikPss;
      int j = nativePss;
      a = Integer.valueOf((otherPss + (i + j)) * 1024);
    }
    
    public final String a()
    {
      return "memory_usage";
    }
  }
  
  public static final class o
    extends bro.g
  {
    public o()
    {
      super();
    }
    
    public final String a()
    {
      return "mobile_network";
    }
  }
  
  public static final class p
    implements brn
  {
    public final String a()
    {
      return "model";
    }
  }
  
  public static final class q
    implements brn
  {
    public final String a()
    {
      return "name";
    }
  }
  
  public static final class r
    implements brn
  {
    private Integer a = null;
    
    public r()
    {
      int j = bgetResourcesgetConfigurationorientation;
      int i = j;
      Display localDisplay;
      if (j == 0)
      {
        localDisplay = ((WindowManager)bro.b().getSystemService("window")).getDefaultDisplay();
        if (localDisplay.getWidth() != localDisplay.getHeight()) {
          break label67;
        }
        i = 3;
      }
      for (;;)
      {
        a = Integer.valueOf(i);
        return;
        label67:
        if (localDisplay.getWidth() > localDisplay.getHeight()) {
          i = 2;
        } else {
          i = 1;
        }
      }
    }
    
    public final String a()
    {
      return "orientation";
    }
  }
  
  public static final class s
    implements brn
  {
    private String a = null;
    
    public s()
    {
      try
      {
        BigInteger.valueOf(-1L);
        StatFs localStatFs = new StatFs(Environment.getExternalStorageDirectory().getPath());
        a = BigInteger.valueOf(localStatFs.getAvailableBlocks()).multiply(BigInteger.valueOf(localStatFs.getBlockSize())).toString();
        return;
      }
      catch (ThreadDeath localThreadDeath)
      {
        throw localThreadDeath;
      }
      catch (Throwable localThrowable)
      {
        a = null;
      }
    }
    
    public final String a()
    {
      return "sd_space_free";
    }
  }
  
  public static final class t
    implements brn
  {
    private String a = null;
    
    public t()
    {
      try
      {
        BigInteger.valueOf(-1L);
        StatFs localStatFs = new StatFs(Environment.getExternalStorageDirectory().getPath());
        a = BigInteger.valueOf(localStatFs.getBlockCount()).multiply(BigInteger.valueOf(localStatFs.getBlockSize())).toString();
        return;
      }
      catch (ThreadDeath localThreadDeath)
      {
        throw localThreadDeath;
      }
      catch (Throwable localThrowable)
      {
        a = null;
      }
    }
    
    public final String a()
    {
      return "sd_space_total";
    }
  }
  
  public static final class u
    implements brn
  {
    public final String a()
    {
      return "system";
    }
  }
  
  public static final class v
    implements brn
  {
    public final String a()
    {
      return "system_version";
    }
  }
  
  public static final class w
    extends bro.g
  {
    public w()
    {
      super();
    }
    
    public final String a()
    {
      return "wifi";
    }
  }
  
  public static final class x
    implements brn
  {
    private Float a = null;
    
    public final String a()
    {
      return "xdpi";
    }
  }
  
  public static final class y
    implements brn
  {
    private Float a = null;
    
    public final String a()
    {
      return "ydpi";
    }
  }
}

/* Location:
 * Qualified Name:     bro
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */