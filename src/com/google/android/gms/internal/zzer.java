package com.google.android.gms.internal;

import android.content.Context;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ImageButton;

@zzgi
public class zzer
  extends FrameLayout
  implements View.OnClickListener
{
  private final ImageButton zzuJ;
  private final zzet zzuK;
  
  public zzer(Context paramContext, int paramInt, zzet paramzzet)
  {
    super(paramContext);
    zzuK = paramzzet;
    setOnClickListener(this);
    zzuJ = new ImageButton(paramContext);
    zzuJ.setImageResource(17301527);
    zzuJ.setBackgroundColor(0);
    zzuJ.setOnClickListener(this);
    zzuJ.setPadding(0, 0, 0, 0);
    zzuJ.setContentDescription("Interstitial close button");
    paramInt = zzbe.zzbD().zzb(paramContext, paramInt);
    addView(zzuJ, new FrameLayout.LayoutParams(paramInt, paramInt, 17));
  }
  
  public void onClick(View paramView)
  {
    if (zzuK != null) {
      zzuK.zzdd();
    }
  }
  
  public void zza(boolean paramBoolean1, boolean paramBoolean2)
  {
    if (paramBoolean2)
    {
      if (paramBoolean1)
      {
        zzuJ.setVisibility(4);
        return;
      }
      zzuJ.setVisibility(8);
      return;
    }
    zzuJ.setVisibility(0);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */