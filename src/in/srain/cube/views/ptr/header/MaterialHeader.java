package in.srain.cube.views.ptr.header;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.view.animation.Transformation;
import bus;
import buu;
import buw;
import buw.c;
import in.srain.cube.views.ptr.PtrFrameLayout;

public class MaterialHeader
  extends View
  implements bus
{
  private buw a;
  private float b = 1.0F;
  private PtrFrameLayout c;
  private Animation d = new Animation()
  {
    public final void applyTransformation(float paramAnonymousFloat, Transformation paramAnonymousTransformation)
    {
      MaterialHeader.a(MaterialHeader.this, 1.0F - paramAnonymousFloat);
      MaterialHeader.b(MaterialHeader.this).setAlpha((int)(255.0F * MaterialHeader.a(MaterialHeader.this)));
      invalidate();
    }
  };
  
  public MaterialHeader(Context paramContext)
  {
    super(paramContext);
    a();
  }
  
  public MaterialHeader(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a();
  }
  
  public MaterialHeader(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    a();
  }
  
  private void a()
  {
    a = new buw(getContext(), this);
    buw localbuw = a;
    b = -1;
    a.v = -1;
    a.setCallback(this);
  }
  
  public final void a(PtrFrameLayout paramPtrFrameLayout)
  {
    b = 1.0F;
    a.stop();
  }
  
  public final void a(PtrFrameLayout paramPtrFrameLayout, boolean paramBoolean, byte paramByte, int paramInt1, int paramInt2, float paramFloat1, float paramFloat2)
  {
    paramFloat1 = Math.min(1.0F, paramFloat2);
    if (paramByte == 2)
    {
      a.setAlpha((int)(255.0F * paramFloat1));
      a.a.a(true);
      paramPtrFrameLayout = a;
      paramFloat2 = Math.min(0.8F, paramFloat1 * 0.8F);
      a.a(0.0F);
      a.b(paramFloat2);
      paramPtrFrameLayout = a;
      paramFloat2 = Math.min(1.0F, paramFloat1);
      a.d(paramFloat2);
      a.a.c((paramFloat1 * 2.0F + (-0.25F + 0.4F * paramFloat1)) * 0.5F);
      invalidate();
    }
  }
  
  public final void b(PtrFrameLayout paramPtrFrameLayout) {}
  
  public final void c(PtrFrameLayout paramPtrFrameLayout)
  {
    a.setAlpha(255);
    a.start();
  }
  
  public final void d(PtrFrameLayout paramPtrFrameLayout)
  {
    a.stop();
  }
  
  public void invalidateDrawable(Drawable paramDrawable)
  {
    if (paramDrawable == a)
    {
      invalidate();
      return;
    }
    super.invalidateDrawable(paramDrawable);
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    int i = paramCanvas.save();
    Rect localRect = a.getBounds();
    paramCanvas.translate(getPaddingLeft() + (getMeasuredWidth() - a.getIntrinsicWidth()) / 2, getPaddingTop());
    paramCanvas.scale(b, b, localRect.exactCenterX(), localRect.exactCenterY());
    a.draw(paramCanvas);
    paramCanvas.restoreToCount(i);
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    paramInt1 = a.getIntrinsicHeight();
    a.setBounds(0, 0, paramInt1, paramInt1);
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    super.onMeasure(paramInt1, View.MeasureSpec.makeMeasureSpec(a.getIntrinsicHeight() + getPaddingTop() + getPaddingBottom(), 1073741824));
  }
  
  public void setColorSchemeColors(int[] paramArrayOfInt)
  {
    buw localbuw = a;
    a.a(paramArrayOfInt);
    a.k = 0;
    invalidate();
  }
  
  public void setPtrFrameLayout(PtrFrameLayout paramPtrFrameLayout)
  {
    final buu local2 = new buu()
    {
      public final void run()
      {
        startAnimation(MaterialHeader.c(MaterialHeader.this));
      }
    };
    d.setDuration(200L);
    d.setAnimationListener(new Animation.AnimationListener()
    {
      public final void onAnimationEnd(Animation paramAnonymousAnimation)
      {
        local2.a();
      }
      
      public final void onAnimationRepeat(Animation paramAnonymousAnimation) {}
      
      public final void onAnimationStart(Animation paramAnonymousAnimation) {}
    });
    c = paramPtrFrameLayout;
    c.setRefreshCompleteHook(local2);
  }
}

/* Location:
 * Qualified Name:     in.srain.cube.views.ptr.header.MaterialHeader
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */