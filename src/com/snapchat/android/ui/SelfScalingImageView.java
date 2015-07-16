package com.snapchat.android.ui;

import android.content.Context;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewParent;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import awf;
import chd;

public class SelfScalingImageView
  extends ImageView
{
  private int a = 17;
  
  public SelfScalingImageView(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public SelfScalingImageView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public SelfScalingImageView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  private void a()
  {
    int j = -2;
    Object localObject = getParentViewGroup();
    if (localObject == null) {}
    Drawable localDrawable;
    do
    {
      return;
      localDrawable = getDrawable();
    } while ((localDrawable == null) || (getScaleType() == null));
    int i = localDrawable.getIntrinsicWidth();
    int k = localDrawable.getIntrinsicHeight();
    int m = ((View)localObject).getWidth();
    int n = ((View)localObject).getHeight();
    localObject = getScaleType();
    switch (1.a[localObject.ordinal()])
    {
    default: 
      throw new RuntimeException("ScaleType " + ((ImageView.ScaleType)localObject).name() + " is not supported.");
    case 1: 
      localObject = new a(m, n);
    }
    for (;;)
    {
      i = a;
      k = b;
      localObject = getLayoutParams();
      if (localObject != null) {
        break;
      }
      throw new IllegalStateException("You need to add this to a View first.");
      float f2 = i / k;
      float f3 = m;
      float f1 = n;
      f2 /= f3 / f1;
      if (f2 > 1.0F)
      {
        localObject = new a(m, (int)(f1 / f2));
      }
      else
      {
        localObject = new a((int)(f2 * m), n);
        continue;
        f2 = i / k;
        f3 = m;
        f1 = n;
        f2 /= f3 / f1;
        if (f2 > 1.0F) {
          localObject = new a((int)(f2 * m), n);
        } else {
          localObject = new a(m, (int)(f1 / f2));
        }
      }
    }
    if (i == 0)
    {
      i = -2;
      width = i;
      if (k != 0) {
        break label359;
      }
    }
    label359:
    for (i = j;; i = k)
    {
      height = i;
      setLayoutParams((ViewGroup.LayoutParams)localObject);
      return;
      break;
    }
  }
  
  private void b()
  {
    Object localObject1 = getParentViewGroup();
    if (localObject1 == null) {}
    Object localObject2;
    do
    {
      return;
      localObject2 = getDrawable();
    } while (localObject2 == null);
    if (getScaleType() == ImageView.ScaleType.CENTER_CROP)
    {
      int i = ((Drawable)localObject2).getIntrinsicWidth();
      int j = ((Drawable)localObject2).getIntrinsicHeight();
      int k = ((View)localObject1).getWidth();
      int m = ((View)localObject1).getHeight();
      int n = a;
      if (i / j / (k / m) > 1.0F)
      {
        localObject1 = new a((int)(i * m / j), m);
        localObject2 = new Rect();
        if (!awf.e(n)) {
          break label197;
        }
        left = (a - k);
        label130:
        if (!awf.c(n)) {
          break label220;
        }
        top = (b - m);
      }
      for (;;)
      {
        setPadding(left, top, right, bottom);
        return;
        localObject1 = new a(k, (int)(j * k / i));
        break;
        label197:
        if (!awf.f(n)) {
          break label130;
        }
        right = (a - k);
        break label130;
        label220:
        if (awf.d(n)) {
          bottom = (b - m);
        }
      }
    }
    setPadding(0, 0, 0, 0);
  }
  
  @chd
  private ViewGroup getParentViewGroup()
  {
    ViewParent localViewParent = getParent();
    if ((localViewParent instanceof ViewGroup)) {
      return (ViewGroup)localViewParent;
    }
    return null;
  }
  
  public void setGravity(int paramInt)
  {
    a = paramInt;
    b();
    a();
  }
  
  public void setScaleType(ImageView.ScaleType paramScaleType)
  {
    super.setScaleType(paramScaleType);
    b();
    a();
  }
  
  public static final class a
  {
    final int a;
    final int b;
    
    a(int paramInt1, int paramInt2)
    {
      a = paramInt1;
      b = paramInt2;
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.ui.SelfScalingImageView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */