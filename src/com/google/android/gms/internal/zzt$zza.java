package com.google.android.gms.internal;

import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import android.widget.ViewSwitcher;

@zzgi
public final class zzt$zza
  extends ViewSwitcher
{
  private final zzhs zzlL;
  
  public zzt$zza(Context paramContext)
  {
    super(paramContext);
    zzlL = new zzhs(paramContext);
  }
  
  public final boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    zzlL.zzc(paramMotionEvent);
    return false;
  }
  
  public final void removeAllViews()
  {
    int i = 0;
    while (i < getChildCount())
    {
      View localView = getChildAt(i);
      if ((localView != null) && ((localView instanceof zzic))) {
        ((zzic)localView).destroy();
      }
      i += 1;
    }
    super.removeAllViews();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzt.zza
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */