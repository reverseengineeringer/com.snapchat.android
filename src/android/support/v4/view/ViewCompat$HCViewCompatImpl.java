package android.support.v4.view;

import android.graphics.Paint;
import android.view.View;

class ViewCompat$HCViewCompatImpl
  extends ViewCompat.GBViewCompatImpl
{
  public final float getAlpha(View paramView)
  {
    return ViewCompatHC.getAlpha(paramView);
  }
  
  final long getFrameTime()
  {
    return ViewCompatHC.getFrameTime();
  }
  
  public final int getLayerType(View paramView)
  {
    return ViewCompatHC.getLayerType(paramView);
  }
  
  public final int getMeasuredHeightAndState(View paramView)
  {
    return ViewCompatHC.getMeasuredHeightAndState(paramView);
  }
  
  public final int getMeasuredState(View paramView)
  {
    return ViewCompatHC.getMeasuredState(paramView);
  }
  
  public final int getMeasuredWidthAndState(View paramView)
  {
    return ViewCompatHC.getMeasuredWidthAndState(paramView);
  }
  
  public final float getPivotX(View paramView)
  {
    return ViewCompatHC.getPivotX(paramView);
  }
  
  public final float getPivotY(View paramView)
  {
    return ViewCompatHC.getPivotY(paramView);
  }
  
  public final float getRotation(View paramView)
  {
    return ViewCompatHC.getRotation(paramView);
  }
  
  public final float getRotationX(View paramView)
  {
    return ViewCompatHC.getRotationX(paramView);
  }
  
  public final float getRotationY(View paramView)
  {
    return ViewCompatHC.getRotationY(paramView);
  }
  
  public final float getScaleX(View paramView)
  {
    return ViewCompatHC.getScaleX(paramView);
  }
  
  public final float getScaleY(View paramView)
  {
    return ViewCompatHC.getScaleY(paramView);
  }
  
  public final float getTranslationX(View paramView)
  {
    return ViewCompatHC.getTranslationX(paramView);
  }
  
  public final float getTranslationY(View paramView)
  {
    return ViewCompatHC.getTranslationY(paramView);
  }
  
  public final float getX(View paramView)
  {
    return ViewCompatHC.getX(paramView);
  }
  
  public final float getY(View paramView)
  {
    return ViewCompatHC.getY(paramView);
  }
  
  public final void jumpDrawablesToCurrentState(View paramView)
  {
    ViewCompatHC.jumpDrawablesToCurrentState(paramView);
  }
  
  public final int resolveSizeAndState(int paramInt1, int paramInt2, int paramInt3)
  {
    return ViewCompatHC.resolveSizeAndState(paramInt1, paramInt2, paramInt3);
  }
  
  public final void setAlpha(View paramView, float paramFloat)
  {
    ViewCompatHC.setAlpha(paramView, paramFloat);
  }
  
  public void setLayerPaint(View paramView, Paint paramPaint)
  {
    ViewCompatHC.setLayerType(paramView, ViewCompatHC.getLayerType(paramView), paramPaint);
    paramView.invalidate();
  }
  
  public final void setLayerType(View paramView, int paramInt, Paint paramPaint)
  {
    ViewCompatHC.setLayerType(paramView, paramInt, paramPaint);
  }
  
  public final void setPivotX(View paramView, float paramFloat)
  {
    ViewCompatHC.setPivotX(paramView, paramFloat);
  }
  
  public final void setPivotY(View paramView, float paramFloat)
  {
    ViewCompatHC.setPivotY(paramView, paramFloat);
  }
  
  public final void setRotation(View paramView, float paramFloat)
  {
    ViewCompatHC.setRotation(paramView, paramFloat);
  }
  
  public final void setRotationX(View paramView, float paramFloat)
  {
    ViewCompatHC.setRotationX(paramView, paramFloat);
  }
  
  public final void setRotationY(View paramView, float paramFloat)
  {
    ViewCompatHC.setRotationY(paramView, paramFloat);
  }
  
  public final void setScaleX(View paramView, float paramFloat)
  {
    ViewCompatHC.setScaleX(paramView, paramFloat);
  }
  
  public final void setScaleY(View paramView, float paramFloat)
  {
    ViewCompatHC.setScaleY(paramView, paramFloat);
  }
  
  public final void setTranslationX(View paramView, float paramFloat)
  {
    ViewCompatHC.setTranslationX(paramView, paramFloat);
  }
  
  public final void setTranslationY(View paramView, float paramFloat)
  {
    ViewCompatHC.setTranslationY(paramView, paramFloat);
  }
  
  public final void setX(View paramView, float paramFloat)
  {
    ViewCompatHC.setX(paramView, paramFloat);
  }
  
  public final void setY(View paramView, float paramFloat)
  {
    ViewCompatHC.setY(paramView, paramFloat);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.ViewCompat.HCViewCompatImpl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */