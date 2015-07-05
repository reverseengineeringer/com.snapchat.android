package com.google.android.gms.internal;

import android.app.Activity;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.view.Window;

class zzhp$zzf
  extends zzhp.zzc
{
  public void zzb(Activity paramActivity, ViewTreeObserver.OnGlobalLayoutListener paramOnGlobalLayoutListener)
  {
    paramActivity = paramActivity.getWindow();
    if ((paramActivity != null) && (paramActivity.getDecorView() != null) && (paramActivity.getDecorView().getViewTreeObserver() != null)) {
      paramActivity.getDecorView().getViewTreeObserver().removeOnGlobalLayoutListener(paramOnGlobalLayoutListener);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzhp.zzf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */