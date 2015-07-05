package com.google.android.gms.internal;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Process;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import com.google.android.gms.analytics.zzan;
import com.google.android.gms.common.internal.zzx;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.FutureTask;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

public final class zzra
{
  private static volatile zzra zzarZ;
  private final Context mContext;
  private final List<zzrb> zzasa;
  private final zzqw zzasb;
  private final ScheduledExecutorService zzasc;
  private volatile zzrf zzasd;
  
  zzra(Context paramContext)
  {
    paramContext = paramContext.getApplicationContext();
    zzx.zzl(paramContext);
    mContext = paramContext;
    zzasc = Executors.newSingleThreadScheduledExecutor(new zza(null));
    zzasa = new CopyOnWriteArrayList();
    zzasb = new zzqw();
  }
  
  private void zza(zzqx paramzzqx)
  {
    zzx.zzbe("deliver should be called from worker thread");
    zzx.zzb(paramzzqx.zzqS(), "Measurement must be submitted");
    Object localObject = paramzzqx.zzqR();
    if (((List)localObject).isEmpty()) {}
    for (;;)
    {
      return;
      HashSet localHashSet = new HashSet();
      localObject = ((List)localObject).iterator();
      while (((Iterator)localObject).hasNext())
      {
        zzrc localzzrc = (zzrc)((Iterator)localObject).next();
        Uri localUri = localzzrc.zzqP();
        if (!localHashSet.contains(localUri))
        {
          localHashSet.add(localUri);
          localzzrc.zza(paramzzqx);
        }
      }
    }
  }
  
  public static zzra zzaf(Context paramContext)
  {
    zzx.zzl(paramContext);
    if (zzarZ == null) {}
    try
    {
      if (zzarZ == null) {
        zzarZ = new zzra(paramContext);
      }
      return zzarZ;
    }
    finally {}
  }
  
  public final Context getContext()
  {
    return mContext;
  }
  
  public final <V> Future<V> zza(Callable<V> paramCallable)
  {
    zzx.zzl(paramCallable);
    if ((Thread.currentThread() instanceof zzb))
    {
      paramCallable = new FutureTask(paramCallable);
      paramCallable.run();
      return paramCallable;
    }
    return zzasc.submit(paramCallable);
  }
  
  public final zzrf zzqU()
  {
    if (zzasd == null) {}
    for (;;)
    {
      zzrf localzzrf;
      PackageManager localPackageManager;
      String str2;
      Object localObject5;
      Object localObject3;
      PackageInfo localPackageInfo;
      Object localObject4;
      String str1;
      try
      {
        if (zzasd == null)
        {
          localzzrf = new zzrf();
          localPackageManager = mContext.getPackageManager();
          str2 = mContext.getPackageName();
          localzzrf.setAppId(str2);
          localzzrf.setAppInstallerId(localPackageManager.getInstallerPackageName(str2));
          localObject5 = null;
          localObject3 = str2;
        }
      }
      finally {}
      try
      {
        localPackageInfo = localPackageManager.getPackageInfo(mContext.getPackageName(), 0);
        localObject4 = localObject5;
        str1 = str2;
        if (localPackageInfo != null)
        {
          localObject3 = str2;
          localObject4 = localPackageManager.getApplicationLabel(applicationInfo);
          str1 = str2;
          localObject3 = str2;
          if (!TextUtils.isEmpty((CharSequence)localObject4))
          {
            localObject3 = str2;
            str1 = ((CharSequence)localObject4).toString();
          }
          localObject3 = str1;
          localObject4 = versionName;
        }
      }
      catch (PackageManager.NameNotFoundException localNameNotFoundException)
      {
        localObject4 = localObject5;
        Object localObject2 = localObject3;
      }
    }
    localzzrf.setAppName(str1);
    localzzrf.setAppVersion((String)localObject4);
    zzasd = localzzrf;
    return zzasd;
  }
  
  public final zzrg zzqV()
  {
    DisplayMetrics localDisplayMetrics = mContext.getResources().getDisplayMetrics();
    zzrg localzzrg = new zzrg();
    localzzrg.setLanguage(zzan.zza(Locale.getDefault()));
    localzzrg.zzgp(widthPixels);
    localzzrg.zzgq(heightPixels);
    return localzzrg;
  }
  
  static class zza
    implements ThreadFactory
  {
    private static final AtomicInteger zzasg = new AtomicInteger();
    
    public Thread newThread(Runnable paramRunnable)
    {
      return new zzra.zzb(paramRunnable, "measurement-" + zzasg.incrementAndGet());
    }
  }
  
  static class zzb
    extends Thread
  {
    zzb(Runnable paramRunnable, String paramString)
    {
      super(paramString);
    }
    
    public void run()
    {
      Process.setThreadPriority(10);
      super.run();
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzra
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */