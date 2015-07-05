package com.google.android.gms.internal;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable.ConstantState;

final class zzkj$zza
  extends Drawable
{
  private static final zza zzPa = new zza();
  private static final zza zzPb = new zza(null);
  
  public final void draw(Canvas paramCanvas) {}
  
  public final Drawable.ConstantState getConstantState()
  {
    return zzPb;
  }
  
  public final int getOpacity()
  {
    return -2;
  }
  
  public final void setAlpha(int paramInt) {}
  
  public final void setColorFilter(ColorFilter paramColorFilter) {}
  
  static final class zza
    extends Drawable.ConstantState
  {
    public final int getChangingConfigurations()
    {
      return 0;
    }
    
    public final Drawable newDrawable()
    {
      return zzkj.zza.zziJ();
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzkj.zza
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */