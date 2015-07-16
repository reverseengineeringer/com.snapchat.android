package com.snapchat.android.camera.ui.viewflipper;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.util.AttributeSet;
import android.view.View;
import aog;
import chd;
import com.snapchat.android.ui.VerticalSwipeLayout;
import xy;
import xy.a;
import xz;
import ya;

public class CameraViewFlipper
  extends VerticalSwipeLayout
{
  private final xy c;
  private final xz d;
  private int e;
  private boolean f = false;
  @chd
  private a g = null;
  
  public CameraViewFlipper(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, new xy(), new xz());
  }
  
  private CameraViewFlipper(Context paramContext, AttributeSet paramAttributeSet, xy paramxy, xz paramxz)
  {
    super(paramContext, paramAttributeSet);
    a(new aog(this));
    paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, new int[] { 16842964 });
    try
    {
      e = paramContext.getColor(0, 0);
      paramContext.recycle();
      c = paramxy;
      d = paramxz;
      return;
    }
    finally
    {
      paramContext.recycle();
    }
  }
  
  protected final void a(boolean paramBoolean)
  {
    if (paramBoolean) {
      super.a(paramBoolean);
    }
  }
  
  public boolean getInProfilePictureView()
  {
    return (f) && (getCurrentPanel() == 0);
  }
  
  protected void onScrollChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onScrollChanged(paramInt1, paramInt2, paramInt3, paramInt4);
    Object localObject = c;
    paramInt1 = paramInt2 / c;
    float f1 = b.a(paramInt1, paramInt2);
    float f2 = b.a(paramInt1 + 1, paramInt2);
    float f3 = a.a(paramInt1);
    setBackgroundColor(Color.argb((int)(255.0F * (a.a(paramInt1 + 1) * f2 + f1 * f3)), Color.red(e), Color.green(e), Color.blue(e)));
    localObject = findViewById(2131361940);
    if (localObject != null) {
      ((View)localObject).setAlpha(d.a(0, paramInt2));
    }
    localObject = findViewById(2131361941);
    if (localObject != null) {
      ((View)localObject).setAlpha(d.a(1, paramInt2));
    }
  }
  
  public void setBackgroundViewVisibility(int paramInt)
  {
    if (paramInt == 0) {}
    for (paramInt = Color.argb(Color.alpha(e), Color.red(e), Color.green(e), Color.blue(e));; paramInt = 0)
    {
      setBackgroundColor(paramInt);
      return;
    }
  }
  
  public void setCameraViewFlipperListener(@chd a parama)
  {
    g = parama;
  }
  
  public void setInProfilePictureView(boolean paramBoolean)
  {
    f = paramBoolean;
  }
  
  public static abstract interface a {}
}

/* Location:
 * Qualified Name:     com.snapchat.android.camera.ui.viewflipper.CameraViewFlipper
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */