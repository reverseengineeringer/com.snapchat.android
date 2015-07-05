package com.google.android.gms.internal;

import android.app.Activity;
import android.content.Context;
import android.view.ViewGroup.LayoutParams;
import android.view.Window;
import android.widget.FrameLayout;
import android.widget.PopupWindow;

@zzgi
public class zzge
  extends zzgd
{
  private Object zzvT = new Object();
  private PopupWindow zzvU;
  private boolean zzvV = false;
  
  zzge(Context paramContext, zzhe.zza paramzza, zzic paramzzic, zzgc.zza paramzza1)
  {
    super(paramContext, paramzza, paramzzic, paramzza1);
  }
  
  private void zzdH()
  {
    synchronized (zzvT)
    {
      zzvV = true;
      if (((mContext instanceof Activity)) && (((Activity)mContext).isDestroyed())) {
        zzvU = null;
      }
      if (zzvU != null)
      {
        if (zzvU.isShowing()) {
          zzvU.dismiss();
        }
        zzvU = null;
      }
      return;
    }
  }
  
  public void onStop()
  {
    zzdH();
    super.onStop();
  }
  
  protected void zzdG()
  {
    if ((mContext instanceof Activity)) {}
    Object localObject2;
    for (Window localWindow = ((Activity)mContext).getWindow();; localObject2 = null)
    {
      if ((localWindow == null) || (localWindow.getDecorView() == null)) {}
      while (((Activity)mContext).isDestroyed()) {
        return;
      }
      FrameLayout localFrameLayout = new FrameLayout(mContext);
      localFrameLayout.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
      localFrameLayout.addView(zzmu.getWebView(), -1, -1);
      synchronized (zzvT)
      {
        if (zzvV) {
          return;
        }
      }
      zzvU = new PopupWindow(localFrameLayout, 1, 1, false);
      zzvU.setOutsideTouchable(true);
      zzvU.setClippingEnabled(false);
      zzhx.zzY("Displaying the 1x1 popup off the screen.");
      try
      {
        zzvU.showAtLocation(((Window)localObject1).getDecorView(), 0, -1, -1);
        return;
      }
      catch (Exception localException)
      {
        for (;;)
        {
          zzvU = null;
        }
      }
    }
  }
  
  protected void zzh(zzhe paramzzhe)
  {
    zzdH();
    super.zzh(paramzzhe);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzge
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */