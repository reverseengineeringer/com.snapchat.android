package com.google.android.gms.internal;

import android.app.PendingIntent;
import android.content.Context;

public class zztc
  implements zztd.zza
{
  private final zztd zzatI;
  private boolean zzatJ;
  
  public zztc(Context paramContext, int paramInt)
  {
    this(paramContext, paramInt, null);
  }
  
  public zztc(Context paramContext, int paramInt, String paramString)
  {
    this(paramContext, paramInt, paramString, null, true);
  }
  
  public zztc(Context paramContext, int paramInt, String paramString1, String paramString2, boolean paramBoolean)
  {
    if (paramContext != paramContext.getApplicationContext()) {}
    for (String str = paramContext.getClass().getName();; str = "OneTimePlayLogger")
    {
      zzatI = new zztd(paramContext, paramInt, paramString1, paramString2, this, paramBoolean, str);
      zzatJ = true;
      return;
    }
  }
  
  private void zzrD()
  {
    if (!zzatJ) {
      throw new IllegalStateException("Cannot reuse one-time logger after sending.");
    }
  }
  
  public void send()
  {
    zzrD();
    zzatI.start();
    zzatJ = false;
  }
  
  public void zza(String paramString, byte[] paramArrayOfByte, String... paramVarArgs)
  {
    zzrD();
    zzatI.zzb(paramString, paramArrayOfByte, paramVarArgs);
  }
  
  public void zzf(PendingIntent paramPendingIntent)
  {
    new StringBuilder("logger connection failed: ").append(paramPendingIntent);
  }
  
  public void zzrE()
  {
    zzatI.stop();
  }
  
  public void zzrF() {}
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zztc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */