package com.google.android.gms.internal;

import android.content.Context;
import android.net.Uri.Builder;
import android.os.Build.VERSION;
import android.os.Looper;
import android.text.TextUtils;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.LinkedList;

@zzgi
public class zzgh
  implements Thread.UncaughtExceptionHandler
{
  private Context mContext;
  private Thread.UncaughtExceptionHandler zzwb;
  private Thread.UncaughtExceptionHandler zzwc;
  private zzhy zzwd;
  
  public zzgh(Context paramContext, zzhy paramzzhy, Thread.UncaughtExceptionHandler paramUncaughtExceptionHandler1, Thread.UncaughtExceptionHandler paramUncaughtExceptionHandler2)
  {
    zzwb = paramUncaughtExceptionHandler1;
    zzwc = paramUncaughtExceptionHandler2;
    mContext = paramContext;
    zzwd = paramzzhy;
  }
  
  public static zzgh zza(Context paramContext, Thread paramThread, zzhy paramzzhy)
  {
    if ((paramContext == null) || (paramThread == null) || (paramzzhy == null)) {
      return null;
    }
    if (!zzn(paramContext)) {
      return null;
    }
    Thread.UncaughtExceptionHandler localUncaughtExceptionHandler = paramThread.getUncaughtExceptionHandler();
    paramContext = new zzgh(paramContext, paramzzhy, localUncaughtExceptionHandler, Thread.getDefaultUncaughtExceptionHandler());
    if ((localUncaughtExceptionHandler == null) || (!(localUncaughtExceptionHandler instanceof zzgh))) {
      try
      {
        paramThread.setUncaughtExceptionHandler(paramContext);
        return paramContext;
      }
      catch (SecurityException paramContext)
      {
        zzhx.zzc("Fail to set UncaughtExceptionHandler.", paramContext);
        return null;
      }
    }
    return (zzgh)localUncaughtExceptionHandler;
  }
  
  private Throwable zzd(Throwable paramThrowable)
  {
    if (((Boolean)zzca.zzqp.get()).booleanValue()) {
      return paramThrowable;
    }
    LinkedList localLinkedList = new LinkedList();
    while (paramThrowable != null)
    {
      localLinkedList.push(paramThrowable);
      paramThrowable = paramThrowable.getCause();
    }
    paramThrowable = null;
    Throwable localThrowable;
    if (!localLinkedList.isEmpty())
    {
      localThrowable = (Throwable)localLinkedList.pop();
      StackTraceElement[] arrayOfStackTraceElement = localThrowable.getStackTrace();
      ArrayList localArrayList = new ArrayList();
      localArrayList.add(new StackTraceElement(localThrowable.getClass().getName(), "<filtered>", "<filtered>", 1));
      int k = arrayOfStackTraceElement.length;
      int i = 0;
      int j = 0;
      if (i < k)
      {
        StackTraceElement localStackTraceElement = arrayOfStackTraceElement[i];
        if (zzO(localStackTraceElement.getClassName()))
        {
          localArrayList.add(localStackTraceElement);
          j = 1;
        }
        for (;;)
        {
          i += 1;
          break;
          if (zzP(localStackTraceElement.getClassName())) {
            localArrayList.add(localStackTraceElement);
          } else {
            localArrayList.add(new StackTraceElement("<filtered>", "<filtered>", "<filtered>", 1));
          }
        }
      }
      if (j == 0) {
        break label261;
      }
      if (paramThrowable == null)
      {
        paramThrowable = new Throwable(localThrowable.getMessage());
        label223:
        paramThrowable.setStackTrace((StackTraceElement[])localArrayList.toArray(new StackTraceElement[0]));
      }
    }
    label261:
    for (;;)
    {
      break;
      paramThrowable = new Throwable(localThrowable.getMessage(), paramThrowable);
      break label223;
      return paramThrowable;
    }
  }
  
  private static boolean zzn(Context paramContext)
  {
    return ((Boolean)zzca.zzqo.get()).booleanValue();
  }
  
  public void uncaughtException(Thread paramThread, Throwable paramThrowable)
  {
    if (zza(paramThrowable))
    {
      zzb(paramThrowable);
      if (Looper.getMainLooper().getThread() == paramThread) {}
    }
    do
    {
      return;
      if (zzwb != null)
      {
        zzwb.uncaughtException(paramThread, paramThrowable);
        return;
      }
    } while (zzwc == null);
    zzwc.uncaughtException(paramThread, paramThrowable);
  }
  
  protected boolean zzO(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      return false;
    }
    if (paramString.startsWith("com.google.android.gms.ads")) {
      return true;
    }
    if (paramString.startsWith("com.google.ads")) {
      return true;
    }
    try
    {
      boolean bool = Class.forName(paramString).isAnnotationPresent(zzgi.class);
      return bool;
    }
    catch (Exception localException)
    {
      zzhx.zza("Fail to check class type for class " + paramString, localException);
    }
    return false;
  }
  
  protected boolean zzP(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {}
    while ((!paramString.startsWith("android.")) && (!paramString.startsWith("java."))) {
      return false;
    }
    return true;
  }
  
  protected boolean zza(Throwable paramThrowable)
  {
    boolean bool = true;
    if (paramThrowable == null) {
      bool = false;
    }
    int j;
    int k;
    do
    {
      return bool;
      j = 0;
      k = 0;
      while (paramThrowable != null)
      {
        StackTraceElement[] arrayOfStackTraceElement = paramThrowable.getStackTrace();
        int m = arrayOfStackTraceElement.length;
        int i = 0;
        while (i < m)
        {
          StackTraceElement localStackTraceElement = arrayOfStackTraceElement[i];
          if (zzO(localStackTraceElement.getClassName())) {
            k = 1;
          }
          if (getClass().getName().equals(localStackTraceElement.getClassName())) {
            j = 1;
          }
          i += 1;
        }
        paramThrowable = paramThrowable.getCause();
      }
    } while ((k != 0) && (j == 0));
    return false;
  }
  
  public void zzb(Throwable paramThrowable)
  {
    if (!zzn(mContext)) {}
    do
    {
      return;
      paramThrowable = zzd(paramThrowable);
    } while (paramThrowable == null);
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(zzc(paramThrowable));
    zzab.zzaM().zza(mContext, zzwd.zzzH, localArrayList, zzab.zzaP().zzej());
  }
  
  protected String zzc(Throwable paramThrowable)
  {
    StringWriter localStringWriter = new StringWriter();
    paramThrowable.printStackTrace(new PrintWriter(localStringWriter));
    return new Uri.Builder().scheme("https").path("//pagead2.googlesyndication.com/pagead/gen_204").appendQueryParameter("id", "gmob-apps-report-exception").appendQueryParameter("os", Build.VERSION.RELEASE).appendQueryParameter("api", String.valueOf(Build.VERSION.SDK_INT)).appendQueryParameter("device", zzab.zzaM().zzev()).appendQueryParameter("js", zzwd.zzzH).appendQueryParameter("appid", mContext.getApplicationContext().getPackageName()).appendQueryParameter("stacktrace", localStringWriter.toString()).appendQueryParameter("eids", TextUtils.join(",", zzca.zzcb())).toString();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzgh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */