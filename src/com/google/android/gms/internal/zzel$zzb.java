package com.google.android.gms.internal;

import android.content.Context;
import android.view.MotionEvent;
import android.widget.RelativeLayout;

@zzgi
final class zzel$zzb
  extends RelativeLayout
{
  zzhs zzlL;
  
  public zzel$zzb(Context paramContext, String paramString)
  {
    super(paramContext);
    zzlL = new zzhs(paramContext, paramString);
  }
  
  public final boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    zzlL.zzc(paramMotionEvent);
    return false;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzel.zzb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */