package com.snapchat.android.camera;

import android.content.Context;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.view.animation.AlphaAnimation;
import android.widget.RelativeLayout;
import apn;
import apn.1;

public class AutofocusCrosshair
  extends RelativeLayout
{
  public final apn a = new apn(this);
  public final int b = (int)getResources().getDimension(2131296264);
  
  public AutofocusCrosshair(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    paramContext = a;
    int i = b;
    paramAttributeSet = new AlphaAnimation(1.0F, 0.0F);
    paramAttributeSet.setDuration(600L);
    paramContext.addAnimation(apn.a(i));
    paramContext.addAnimation(apn.a());
    paramContext.addAnimation(paramAttributeSet);
    paramContext.setAnimationListener(new apn.1(paramContext));
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    super.onMeasure(paramInt1, paramInt2);
    setMeasuredDimension(b, b);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.camera.AutofocusCrosshair
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */