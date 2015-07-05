package com.google.android.gms.common.internal;

import android.content.Context;
import android.util.Log;
import com.google.android.gms.internal.zztc;

public final class zzp
{
  private final String zzQq;
  
  public zzp(String paramString)
  {
    zzQq = ((String)zzx.zzl(paramString));
  }
  
  public final void zza(Context paramContext, String paramString1, String paramString2, Throwable paramThrowable)
  {
    StackTraceElement[] arrayOfStackTraceElement = paramThrowable.getStackTrace();
    StringBuilder localStringBuilder = new StringBuilder();
    int i = 0;
    while ((i < arrayOfStackTraceElement.length) && (i < 2))
    {
      localStringBuilder.append(arrayOfStackTraceElement[i].toString());
      localStringBuilder.append("\n");
      i += 1;
    }
    paramContext = new zztc(paramContext, 10);
    paramContext.zza("GMS_WTF", null, new String[] { "GMS_WTF", localStringBuilder.toString() });
    paramContext.send();
    if (zzaK(7)) {
      Log.wtf(paramString1, paramString2, paramThrowable);
    }
  }
  
  public final void zza(String paramString1, String paramString2, Throwable paramThrowable)
  {
    zzaK(4);
  }
  
  public final boolean zzaK(int paramInt)
  {
    return Log.isLoggable(zzQq, paramInt);
  }
  
  public final void zzb(String paramString1, String paramString2, Throwable paramThrowable)
  {
    zzaK(5);
  }
  
  public final void zzc(String paramString1, String paramString2, Throwable paramThrowable)
  {
    zzaK(6);
  }
  
  public final void zzq(String paramString1, String paramString2)
  {
    zzaK(3);
  }
  
  public final void zzr(String paramString1, String paramString2)
  {
    zzaK(5);
  }
  
  public final void zzs(String paramString1, String paramString2)
  {
    zzaK(6);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.internal.zzp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */