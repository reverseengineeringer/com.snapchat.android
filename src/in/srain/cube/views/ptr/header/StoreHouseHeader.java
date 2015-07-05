package in.srain.cube.views.ptr.header;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.PointF;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.animation.Transformation;
import bus;
import bux;
import buy;
import in.srain.cube.views.ptr.PtrFrameLayout;
import java.util.ArrayList;

public class StoreHouseHeader
  extends View
  implements bus
{
  public ArrayList<bux> a = new ArrayList();
  private int b = buy.a(1.0F);
  private float c = 1.0F;
  private int d = buy.a(40.0F);
  private float e = 0.7F;
  private int f = buy.a / 2;
  private float g = 0.0F;
  private int h = 0;
  private int i = 0;
  private int j = 0;
  private int k = 0;
  private float l = 0.4F;
  private float m = 1.0F;
  private float n = 0.4F;
  private int o = 1000;
  private int p = 1000;
  private int q = 400;
  private Transformation r = new Transformation();
  private boolean s = false;
  private a t = new a((byte)0);
  private int u = -1;
  
  public StoreHouseHeader(Context paramContext)
  {
    super(paramContext);
  }
  
  public StoreHouseHeader(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public StoreHouseHeader(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  private void a()
  {
    s = false;
    a.b(t);
  }
  
  private int getBottomOffset()
  {
    return getPaddingBottom() + buy.a(10.0F);
  }
  
  private int getTopOffset()
  {
    return getPaddingTop() + buy.a(10.0F);
  }
  
  private void setProgress(float paramFloat)
  {
    g = paramFloat;
  }
  
  public final void a(PtrFrameLayout paramPtrFrameLayout)
  {
    a();
    int i1 = 0;
    while (i1 < a.size())
    {
      ((bux)a.get(i1)).a(f);
      i1 += 1;
    }
  }
  
  public final void a(PtrFrameLayout paramPtrFrameLayout, boolean paramBoolean, byte paramByte, int paramInt1, int paramInt2, float paramFloat1, float paramFloat2)
  {
    setProgress(Math.min(1.0F, paramFloat2));
    invalidate();
  }
  
  public final void b(PtrFrameLayout paramPtrFrameLayout) {}
  
  public final void c(PtrFrameLayout paramPtrFrameLayout)
  {
    s = true;
    a.a(t);
    invalidate();
  }
  
  public final void d(PtrFrameLayout paramPtrFrameLayout)
  {
    a();
  }
  
  public int getLoadingAniDuration()
  {
    return o;
  }
  
  public float getScale()
  {
    return c;
  }
  
  public void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    float f2 = g;
    int i2 = paramCanvas.save();
    int i3 = a.size();
    int i1 = 0;
    if (i1 < i3)
    {
      paramCanvas.save();
      bux localbux = (bux)a.get(i1);
      float f1 = j;
      float f3 = a.x + f1;
      f1 = k;
      float f4 = a.y + f1;
      if (s)
      {
        localbux.getTransformation(getDrawingTime(), r);
        paramCanvas.translate(f3, f4);
      }
      label191:
      float f5;
      for (;;)
      {
        paramCanvas.drawLine(d.x, d.y, e.x, e.y, c);
        paramCanvas.restore();
        for (;;)
        {
          i1 += 1;
          break;
          if (f2 != 0.0F) {
            break label191;
          }
          localbux.a(f);
        }
        f1 = (1.0F - e) * i1 / i3;
        f5 = e;
        if ((f2 != 1.0F) && (f2 < 1.0F - (1.0F - f5 - f1))) {
          break label251;
        }
        paramCanvas.translate(f3, f4);
        localbux.a(l);
      }
      label251:
      if (f2 <= f1) {}
      for (f1 = 0.0F;; f1 = Math.min(1.0F, (f2 - f1) / e))
      {
        f5 = b;
        float f6 = -d;
        Matrix localMatrix = new Matrix();
        localMatrix.postRotate(360.0F * f1);
        localMatrix.postScale(f1, f1);
        localMatrix.postTranslate(f3 + f5 * (1.0F - f1), f4 + f6 * (1.0F - f1));
        localbux.a(f1 * l);
        paramCanvas.concat(localMatrix);
        break;
      }
    }
    if (s) {
      invalidate();
    }
    paramCanvas.restoreToCount(i2);
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    super.onMeasure(paramInt1, View.MeasureSpec.makeMeasureSpec(getTopOffset() + i + getBottomOffset(), 1073741824));
    j = ((getMeasuredWidth() - h) / 2);
    k = getTopOffset();
    d = getTopOffset();
  }
  
  public void setLoadingAniDuration(int paramInt)
  {
    o = paramInt;
    p = paramInt;
  }
  
  public void setScale(float paramFloat)
  {
    c = paramFloat;
  }
  
  final class a
    implements Runnable
  {
    private int b = 0;
    private int c = 0;
    private int d = 0;
    private int e = 0;
    private boolean f = true;
    
    private a() {}
    
    public final void run()
    {
      int j = b;
      int k = c;
      int i = 0;
      while (i < d)
      {
        int m = c * i + j % k;
        if (m <= b)
        {
          int n = a.size();
          bux localbux = (bux)a.get(m % n);
          localbux.setFillAfter(false);
          localbux.setFillEnabled(true);
          localbux.setFillBefore(false);
          localbux.setDuration(StoreHouseHeader.c(StoreHouseHeader.this));
          localbux.a(StoreHouseHeader.d(StoreHouseHeader.this), StoreHouseHeader.e(StoreHouseHeader.this));
        }
        i += 1;
      }
      b += 1;
      if (f) {
        postDelayed(this, e);
      }
    }
  }
}

/* Location:
 * Qualified Name:     in.srain.cube.views.ptr.header.StoreHouseHeader
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */