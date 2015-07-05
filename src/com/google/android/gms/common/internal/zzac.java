package com.google.android.gms.common.internal;

import android.content.Context;
import android.os.IBinder;
import android.view.View;
import com.google.android.gms.dynamic.zzd;
import com.google.android.gms.dynamic.zze;
import com.google.android.gms.dynamic.zzg;
import com.google.android.gms.dynamic.zzg.zza;

public final class zzac
  extends zzg<zzu>
{
  private static final zzac zzQu = new zzac();
  
  private zzac()
  {
    super("com.google.android.gms.common.ui.SignInButtonCreatorImpl");
  }
  
  public static View zzb(Context paramContext, int paramInt1, int paramInt2)
  {
    return zzQu.zzc(paramContext, paramInt1, paramInt2);
  }
  
  private View zzc(Context paramContext, int paramInt1, int paramInt2)
  {
    try
    {
      zzd localzzd = zze.zzn(paramContext);
      paramContext = (View)zze.zzf(((zzu)zzS(paramContext)).zza(localzzd, paramInt1, paramInt2));
      return paramContext;
    }
    catch (Exception paramContext)
    {
      throw new zzg.zza("Could not get button with size " + paramInt1 + " and color " + paramInt2, paramContext);
    }
  }
  
  public final zzu zzX(IBinder paramIBinder)
  {
    return zzu.zza.zzW(paramIBinder);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.internal.zzac
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */