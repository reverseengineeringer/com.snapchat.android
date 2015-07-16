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

public final class bsp
{
  private static bru a = null;
  private static Context b = null;
  private static bse c = null;
  private static bss d = null;
  
  public static void a(Context paramContext)
  {
    b = paramContext;
  }
  
  public static void a(bru parambru)
  {
    a = parambru;
  }
  
  public static void a(bse parambse)
  {
    c = parambse;
  }
  
  public static void a(bss parambss)
  {
    d = parambss;
  }
  
  public static final class a
    implements bso
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
    implements bso
  {
    private Integer a = null;
    
    public final String a()
    {
      return "app_version_code";
    }
  }
  
  public static final class c
    implements bso
  {
    public String a = null;
    
    public final String a()
    {
      return "app_version";
    }
  }
  
  public static final class d
    implements bso
  {
    public final String a()
    {
      return "arch";
    }
  }
  
  public static final class e
    implements bso
  {
    private Double a = null;
    
    public e()
    {
      double d2 = 1.0D;
      Intent localIntent = bsp.b().getApplicationContext().registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
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
    implements bso
  {
    public String a = null;
    
    public f()
    {
      try
      {
        String str1 = ((TelephonyManager)bsp.b().getSystemService("phone")).getNetworkOperatorName();
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
    implements bso
  {
    private JSONObject a = null;
    
    public g(int paramInt)
    {
      NetworkInfo localNetworkInfo;
      if (cc)
      {
        a = new JSONObject();
        localNetworkInfo = ((ConnectivityManager)bsp.b().getSystemService("connectivity")).getNetworkInfo(paramInt);
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
          bue.c();
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
    implements bso
  {
    private Float a = null;
    
    public final String a()
    {
      return "dpi";
    }
  }
  
  public static final class i
    implements bso
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
    implements bso
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
    implements bso
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
    implements bso
  {
    private JSONArray a = null;
    
    public l()
    {
      if (ca) {
        a = bsp.d().a();
      }
    }
    
    public final String a()
    {
      return "logcat";
    }
  }
  
  public static final class m
    implements bso
  {
    private Long a = null;
    
    public final String a()
    {
      return "memory_total";
    }
  }
  
  public static final class n
    implements bso
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
    extends bsp.g
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
    implements bso
  {
    public final String a()
    {
      return "model";
    }
  }
  
  public static final class q
    implements bso
  {
    public final String a()
    {
      return "name";
    }
  }
  
  public static final class r
    implements bso
  {
    private Integer a = null;
    
    public r()
    {
      int j = bgetResourcesgetConfigurationorientation;
      int i = j;
      Display localDisplay;
      if (j == 0)
      {
        localDisplay = ((WindowManager)bsp.b().getSystemService("window")).getDefaultDisplay();
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
    implements bso
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
    implements bso
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
    implements bso
  {
    public final String a()
    {
      return "system";
    }
  }
  
  public static final class v
    implements bso
  {
    public final String a()
    {
      return "system_version";
    }
  }
  
  public static final class w
    extends bsp.g
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
    implements bso
  {
    private Float a = null;
    
    public final String a()
    {
      return "xdpi";
    }
  }
  
  public static final class y
    implements bso
  {
    private Float a = null;
    
    public final String a()
    {
      return "ydpi";
    }
  }
}

/* Location:
 * Qualified Name:     bsp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */