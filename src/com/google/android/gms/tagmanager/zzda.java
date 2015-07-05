package com.google.android.gms.tagmanager;

import android.app.ActivityManager;
import android.app.ActivityManager.RunningAppProcessInfo;
import android.app.KeyguardManager;
import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.PowerManager;
import android.os.Process;
import android.text.TextUtils;
import com.google.android.gms.internal.zza;
import com.google.android.gms.internal.zzb;
import com.google.android.gms.internal.zzd.zza;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

class zzda
  extends zzaj
{
  private static final String ID = zza.zzba.toString();
  private static final String NAME = zzb.zzdB.toString();
  private static final String zzaAV = zzb.zzdh.toString();
  private static final String zzaAW = zzb.zzdp.toString();
  private static final String zzaAX = zzb.zzeV.toString();
  private final Context mContext;
  private Handler mHandler;
  private boolean zzaAY;
  private boolean zzaAZ;
  private final HandlerThread zzaBa;
  private final Set<String> zzaBb = new HashSet();
  private DataLayer zzaxx;
  
  public zzda(Context paramContext, DataLayer paramDataLayer)
  {
    super(ID, new String[] { zzaAV, NAME });
    mContext = paramContext;
    zzaxx = paramDataLayer;
    zzaBa = new HandlerThread("Google GTM SDK Timer", 10);
    zzaBa.start();
    mHandler = new Handler(zzaBa.getLooper());
  }
  
  public zzd.zza zzH(Map<String, zzd.zza> paramMap)
  {
    String str2 = zzde.zzg((zzd.zza)paramMap.get(NAME));
    String str1 = zzde.zzg((zzd.zza)paramMap.get(zzaAX));
    String str3 = zzde.zzg((zzd.zza)paramMap.get(zzaAV));
    paramMap = zzde.zzg((zzd.zza)paramMap.get(zzaAW));
    try
    {
      l1 = Long.parseLong(str3);
    }
    catch (NumberFormatException localNumberFormatException)
    {
      try
      {
        for (;;)
        {
          l2 = Long.parseLong(paramMap);
          if ((l1 > 0L) && (!TextUtils.isEmpty(str2)))
          {
            if (str1 != null)
            {
              paramMap = str1;
              if (!str1.isEmpty()) {}
            }
            else
            {
              paramMap = "0";
            }
            if (!zzaBb.contains(paramMap))
            {
              if (!"0".equals(paramMap)) {
                zzaBb.add(paramMap);
              }
              mHandler.postDelayed(new zza(str2, paramMap, l1, l2), l1);
            }
          }
          return zzde.zzuf();
          localNumberFormatException = localNumberFormatException;
          long l1 = 0L;
        }
      }
      catch (NumberFormatException paramMap)
      {
        for (;;)
        {
          long l2 = 0L;
        }
      }
    }
  }
  
  public boolean zzsD()
  {
    return false;
  }
  
  final class zza
    implements Runnable
  {
    private final String zzaBc;
    private final String zzaBd;
    private final long zzaBe;
    private final long zzaBf;
    private long zzaBg;
    private final long zzamf;
    
    zza(String paramString1, String paramString2, long paramLong1, long paramLong2)
    {
      zzaBc = paramString1;
      zzaBd = paramString2;
      zzamf = paramLong1;
      zzaBe = paramLong2;
      zzaBf = System.currentTimeMillis();
    }
    
    public final void run()
    {
      if ((zzaBe > 0L) && (zzaBg >= zzaBe))
      {
        if (!"0".equals(zzaBd)) {
          zzda.zza(zzda.this).remove(zzaBd);
        }
        return;
      }
      zzaBg += 1L;
      if (zzbu())
      {
        long l = System.currentTimeMillis();
        zzda.zzb(zzda.this).push(DataLayer.mapOf(new Object[] { "event", zzaBc, "gtm.timerInterval", String.valueOf(zzamf), "gtm.timerLimit", String.valueOf(zzaBe), "gtm.timerStartTime", String.valueOf(zzaBf), "gtm.timerCurrentTime", String.valueOf(l), "gtm.timerElapsedTime", String.valueOf(l - zzaBf), "gtm.timerEventNumber", String.valueOf(zzaBg), "gtm.triggers", zzaBd }));
      }
      zzda.zzc(zzda.this).postDelayed(this, zzamf);
    }
    
    protected final boolean zzbu()
    {
      if (zzda.zzd(zzda.this)) {
        return zzda.zze(zzda.this);
      }
      Object localObject = (ActivityManager)zzda.zzf(zzda.this).getSystemService("activity");
      KeyguardManager localKeyguardManager = (KeyguardManager)zzda.zzf(zzda.this).getSystemService("keyguard");
      PowerManager localPowerManager = (PowerManager)zzda.zzf(zzda.this).getSystemService("power");
      localObject = ((ActivityManager)localObject).getRunningAppProcesses().iterator();
      while (((Iterator)localObject).hasNext())
      {
        ActivityManager.RunningAppProcessInfo localRunningAppProcessInfo = (ActivityManager.RunningAppProcessInfo)((Iterator)localObject).next();
        if ((Process.myPid() == pid) && (importance == 100) && (!localKeyguardManager.inKeyguardRestrictedInputMode()) && (localPowerManager.isScreenOn())) {
          return true;
        }
      }
      return false;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.zzda
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */