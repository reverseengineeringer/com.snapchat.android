package com.snapchat.android.ui;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.view.View;

public class ProfileCameraMaskView
  extends View
{
  private static final String b = ProfileCameraMaskView.class.getSimpleName();
  public Bitmap a;
  private final Paint c = new Paint(1);
  
  public ProfileCameraMaskView(Context paramContext)
  {
    super(paramContext);
  }
  
  public ProfileCameraMaskView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    if (a != null)
    {
      paramCanvas.save();
      paramCanvas.drawBitmap(a, 0.0F, 0.0F, c);
      paramCanvas.restore();
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.ui.ProfileCameraMaskView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */