package com.snapchat.android.ui;

import android.content.Context;
import android.graphics.Matrix;
import android.util.AttributeSet;
import android.view.View.MeasureSpec;

public class FitWidthTextureVideoView
  extends TextureVideoView
{
  public FitWidthTextureVideoView(Context paramContext)
  {
    super(paramContext);
  }
  
  public FitWidthTextureVideoView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public FitWidthTextureVideoView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  protected final Matrix a(int paramInt)
  {
    if ((e != 0) && (this.f != 0) && ((c != 0) || (d != 0)))
    {
      float f = paramInt / e;
      Matrix localMatrix = new Matrix();
      localMatrix.setTranslate(c * f, f * d);
      return localMatrix;
    }
    return null;
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    int j = getDefaultSize(a, paramInt1);
    int k = getDefaultSize(b, paramInt2);
    paramInt2 = j;
    int i = k;
    if (a > 0)
    {
      paramInt2 = j;
      i = k;
      if (b > 0)
      {
        paramInt1 = View.MeasureSpec.getSize(paramInt1);
        j = (int)(paramInt1 * b / a);
        Math.max(1, j);
        Matrix localMatrix = a(paramInt1);
        paramInt2 = paramInt1;
        i = j;
        if (localMatrix != null)
        {
          setTransform(localMatrix);
          i = j;
          paramInt2 = paramInt1;
        }
      }
    }
    setMeasuredDimension(Math.max(1, paramInt2), Math.max(1, i));
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.ui.FitWidthTextureVideoView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */