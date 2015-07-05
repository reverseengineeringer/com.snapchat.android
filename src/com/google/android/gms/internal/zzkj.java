package com.google.android.gms.internal;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable.Callback;
import android.graphics.drawable.Drawable.ConstantState;
import android.os.SystemClock;

public final class zzkj
  extends Drawable
  implements Drawable.Callback
{
  private int mFrom;
  private boolean zzOF = true;
  private int zzOM = 0;
  private long zzON;
  private int zzOO;
  private int zzOP = 255;
  private int zzOQ;
  private int zzOR = 0;
  private boolean zzOS;
  private zzb zzOT;
  private Drawable zzOU;
  private Drawable zzOV;
  private boolean zzOW;
  private boolean zzOX;
  private boolean zzOY;
  private int zzOZ;
  
  public zzkj(Drawable paramDrawable1, Drawable paramDrawable2)
  {
    this(null);
    Object localObject = paramDrawable1;
    if (paramDrawable1 == null) {
      localObject = zza.zziJ();
    }
    zzOU = ((Drawable)localObject);
    ((Drawable)localObject).setCallback(this);
    paramDrawable1 = zzOT;
    zzPd |= ((Drawable)localObject).getChangingConfigurations();
    paramDrawable1 = paramDrawable2;
    if (paramDrawable2 == null) {
      paramDrawable1 = zza.zziJ();
    }
    zzOV = paramDrawable1;
    paramDrawable1.setCallback(this);
    paramDrawable2 = zzOT;
    zzPd |= paramDrawable1.getChangingConfigurations();
  }
  
  zzkj(zzb paramzzb)
  {
    zzOT = new zzb(paramzzb);
  }
  
  public final boolean canConstantState()
  {
    if (!zzOW) {
      if ((zzOU.getConstantState() == null) || (zzOV.getConstantState() == null)) {
        break label44;
      }
    }
    label44:
    for (boolean bool = true;; bool = false)
    {
      zzOX = bool;
      zzOW = true;
      return zzOX;
    }
  }
  
  public final void draw(Canvas paramCanvas)
  {
    int j = 1;
    int i = 1;
    int k = 0;
    switch (zzOM)
    {
    }
    boolean bool;
    Drawable localDrawable1;
    Drawable localDrawable2;
    do
    {
      for (;;)
      {
        j = zzOR;
        bool = zzOF;
        localDrawable1 = zzOU;
        localDrawable2 = zzOV;
        if (i == 0) {
          break;
        }
        if ((!bool) || (j == 0)) {
          localDrawable1.draw(paramCanvas);
        }
        if (j == zzOP)
        {
          localDrawable2.setAlpha(zzOP);
          localDrawable2.draw(paramCanvas);
        }
        return;
        zzON = SystemClock.uptimeMillis();
        zzOM = 2;
        i = k;
      }
    } while (zzON < 0L);
    float f1 = (float)(SystemClock.uptimeMillis() - zzON) / zzOQ;
    if (f1 >= 1.0F) {}
    for (i = j;; i = 0)
    {
      if (i != 0) {
        zzOM = 0;
      }
      f1 = Math.min(f1, 1.0F);
      float f2 = mFrom;
      zzOR = ((int)(f1 * (zzOO - mFrom) + f2));
      break;
    }
    if (bool) {
      localDrawable1.setAlpha(zzOP - j);
    }
    localDrawable1.draw(paramCanvas);
    if (bool) {
      localDrawable1.setAlpha(zzOP);
    }
    if (j > 0)
    {
      localDrawable2.setAlpha(j);
      localDrawable2.draw(paramCanvas);
      localDrawable2.setAlpha(zzOP);
    }
    invalidateSelf();
  }
  
  public final int getChangingConfigurations()
  {
    return super.getChangingConfigurations() | zzOT.zzPc | zzOT.zzPd;
  }
  
  public final Drawable.ConstantState getConstantState()
  {
    if (canConstantState())
    {
      zzOT.zzPc = getChangingConfigurations();
      return zzOT;
    }
    return null;
  }
  
  public final int getIntrinsicHeight()
  {
    return Math.max(zzOU.getIntrinsicHeight(), zzOV.getIntrinsicHeight());
  }
  
  public final int getIntrinsicWidth()
  {
    return Math.max(zzOU.getIntrinsicWidth(), zzOV.getIntrinsicWidth());
  }
  
  public final int getOpacity()
  {
    if (!zzOY)
    {
      zzOZ = Drawable.resolveOpacity(zzOU.getOpacity(), zzOV.getOpacity());
      zzOY = true;
    }
    return zzOZ;
  }
  
  public final void invalidateDrawable(Drawable paramDrawable)
  {
    if (zzme.zzkd())
    {
      paramDrawable = getCallback();
      if (paramDrawable != null) {
        paramDrawable.invalidateDrawable(this);
      }
    }
  }
  
  public final Drawable mutate()
  {
    if ((!zzOS) && (super.mutate() == this))
    {
      if (!canConstantState()) {
        throw new IllegalStateException("One or more children of this LayerDrawable does not have constant state; this drawable cannot be mutated.");
      }
      zzOU.mutate();
      zzOV.mutate();
      zzOS = true;
    }
    return this;
  }
  
  protected final void onBoundsChange(Rect paramRect)
  {
    zzOU.setBounds(paramRect);
    zzOV.setBounds(paramRect);
  }
  
  public final void scheduleDrawable(Drawable paramDrawable, Runnable paramRunnable, long paramLong)
  {
    if (zzme.zzkd())
    {
      paramDrawable = getCallback();
      if (paramDrawable != null) {
        paramDrawable.scheduleDrawable(this, paramRunnable, paramLong);
      }
    }
  }
  
  public final void setAlpha(int paramInt)
  {
    if (zzOR == zzOP) {
      zzOR = paramInt;
    }
    zzOP = paramInt;
    invalidateSelf();
  }
  
  public final void setColorFilter(ColorFilter paramColorFilter)
  {
    zzOU.setColorFilter(paramColorFilter);
    zzOV.setColorFilter(paramColorFilter);
  }
  
  public final void startTransition(int paramInt)
  {
    mFrom = 0;
    zzOO = zzOP;
    zzOR = 0;
    zzOQ = paramInt;
    zzOM = 1;
    invalidateSelf();
  }
  
  public final void unscheduleDrawable(Drawable paramDrawable, Runnable paramRunnable)
  {
    if (zzme.zzkd())
    {
      paramDrawable = getCallback();
      if (paramDrawable != null) {
        paramDrawable.unscheduleDrawable(this, paramRunnable);
      }
    }
  }
  
  public final Drawable zziI()
  {
    return zzOV;
  }
  
  static final class zza
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
  
  static final class zzb
    extends Drawable.ConstantState
  {
    int zzPc;
    int zzPd;
    
    zzb(zzb paramzzb)
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
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzkj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */