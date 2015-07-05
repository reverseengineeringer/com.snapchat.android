package com.snapchat.android.ui;

import android.view.View;
import android.view.animation.Animation;
import android.view.animation.Transformation;

final class ColorPickerView$a
  extends Animation
{
  private final int b;
  private final int c;
  private final View d;
  
  public ColorPickerView$a(ColorPickerView paramColorPickerView, int paramInt1, int paramInt2, View paramView)
  {
    b = paramInt1;
    c = (paramInt2 - paramInt1);
    d = paramView;
  }
  
  protected final void applyTransformation(float paramFloat, Transformation paramTransformation)
  {
    paramTransformation = d.getLayoutParams();
    if (paramTransformation == null) {
      return;
    }
    width = ((int)(b + c * paramFloat));
    d.setLayoutParams(paramTransformation);
  }
  
  public final boolean willChangeBounds()
  {
    return true;
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.ui.ColorPickerView.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */