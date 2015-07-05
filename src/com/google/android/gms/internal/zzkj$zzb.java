package com.google.android.gms.internal;

import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable.ConstantState;

final class zzkj$zzb
  extends Drawable.ConstantState
{
  int zzPc;
  int zzPd;
  
  zzkj$zzb(zzb paramzzb)
  {
    if (paramzzb != null)
    {
      zzPc = zzPc;
      zzPd = zzPd;
    }
  }
  
  public final int getChangingConfigurations()
  {
    return zzPc;
  }
  
  public final Drawable newDrawable()
  {
    return new zzkj(this);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzkj.zzb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */