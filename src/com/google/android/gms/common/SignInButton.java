package com.google.android.gms.common;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.FrameLayout;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.common.internal.zzad;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.dynamic.zzg.zza;

public final class SignInButton
  extends FrameLayout
  implements View.OnClickListener
{
  public static final int COLOR_DARK = 0;
  public static final int COLOR_LIGHT = 1;
  public static final int SIZE_ICON_ONLY = 2;
  public static final int SIZE_STANDARD = 0;
  public static final int SIZE_WIDE = 1;
  private int mColor;
  private int mSize;
  private View zzLI;
  private View.OnClickListener zzLJ = null;
  
  public SignInButton(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public SignInButton(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public SignInButton(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    setStyle(0, 0);
  }
  
  private void zzN(Context paramContext)
  {
    if (zzLI != null) {
      removeView(zzLI);
    }
    try
    {
      zzLI = zzac.zzb(paramContext, mSize, mColor);
      addView(zzLI);
      zzLI.setEnabled(isEnabled());
      zzLI.setOnClickListener(this);
      return;
    }
    catch (zzg.zza localzza)
    {
      for (;;)
      {
        zzLI = zza(paramContext, mSize, mColor);
      }
    }
  }
  
  private static Button zza(Context paramContext, int paramInt1, int paramInt2)
  {
    zzad localzzad = new zzad(paramContext);
    localzzad.zza(paramContext.getResources(), paramInt1, paramInt2);
    return localzzad;
  }
  
  public final void onClick(View paramView)
  {
    if ((zzLJ != null) && (paramView == zzLI)) {
      zzLJ.onClick(this);
    }
  }
  
  public final void setColorScheme(int paramInt)
  {
    setStyle(mSize, paramInt);
  }
  
  public final void setEnabled(boolean paramBoolean)
  {
    super.setEnabled(paramBoolean);
    zzLI.setEnabled(paramBoolean);
  }
  
  public final void setOnClickListener(View.OnClickListener paramOnClickListener)
  {
    zzLJ = paramOnClickListener;
    if (zzLI != null) {
      zzLI.setOnClickListener(this);
    }
  }
  
  public final void setSize(int paramInt)
  {
    setStyle(paramInt, mColor);
  }
  
  public final void setStyle(int paramInt1, int paramInt2)
  {
    if ((paramInt1 >= 0) && (paramInt1 < 3))
    {
      bool = true;
      zzx.zza(bool, "Unknown button size %d", new Object[] { Integer.valueOf(paramInt1) });
      if ((paramInt2 < 0) || (paramInt2 >= 2)) {
        break label80;
      }
    }
    label80:
    for (boolean bool = true;; bool = false)
    {
      zzx.zza(bool, "Unknown color scheme %s", new Object[] { Integer.valueOf(paramInt2) });
      mSize = paramInt1;
      mColor = paramInt2;
      zzN(getContext());
      return;
      bool = false;
      break;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.SignInButton
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */