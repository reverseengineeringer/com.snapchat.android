package android.support.v4.view;

import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.support.v4.view.accessibility.AccessibilityNodeProviderCompat;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import java.lang.annotation.Annotation;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.WeakHashMap;
import l;

public final class ViewCompat
{
  public static final int ACCESSIBILITY_LIVE_REGION_ASSERTIVE = 2;
  public static final int ACCESSIBILITY_LIVE_REGION_NONE = 0;
  public static final int ACCESSIBILITY_LIVE_REGION_POLITE = 1;
  private static final long FAKE_FRAME_TIME = 10L;
  static final ViewCompatImpl IMPL = new BaseViewCompatImpl();
  public static final int IMPORTANT_FOR_ACCESSIBILITY_AUTO = 0;
  public static final int IMPORTANT_FOR_ACCESSIBILITY_NO = 2;
  public static final int IMPORTANT_FOR_ACCESSIBILITY_NO_HIDE_DESCENDANTS = 4;
  public static final int IMPORTANT_FOR_ACCESSIBILITY_YES = 1;
  public static final int LAYER_TYPE_HARDWARE = 2;
  public static final int LAYER_TYPE_NONE = 0;
  public static final int LAYER_TYPE_SOFTWARE = 1;
  public static final int LAYOUT_DIRECTION_INHERIT = 2;
  public static final int LAYOUT_DIRECTION_LOCALE = 3;
  public static final int LAYOUT_DIRECTION_LTR = 0;
  public static final int LAYOUT_DIRECTION_RTL = 1;
  public static final int MEASURED_HEIGHT_STATE_SHIFT = 16;
  public static final int MEASURED_SIZE_MASK = 16777215;
  public static final int MEASURED_STATE_MASK = -16777216;
  public static final int MEASURED_STATE_TOO_SMALL = 16777216;
  public static final int OVER_SCROLL_ALWAYS = 0;
  public static final int OVER_SCROLL_IF_CONTENT_SCROLLS = 1;
  public static final int OVER_SCROLL_NEVER = 2;
  private static final String TAG = "ViewCompat";
  
  static
  {
    int i = Build.VERSION.SDK_INT;
    if (i >= 21)
    {
      IMPL = new Api21ViewCompatImpl();
      return;
    }
    if (i >= 19)
    {
      IMPL = new KitKatViewCompatImpl();
      return;
    }
    if (i >= 17)
    {
      IMPL = new JbMr1ViewCompatImpl();
      return;
    }
    if (i >= 16)
    {
      IMPL = new JBViewCompatImpl();
      return;
    }
    if (i >= 14)
    {
      IMPL = new ICSViewCompatImpl();
      return;
    }
    if (i >= 11)
    {
      IMPL = new HCViewCompatImpl();
      return;
    }
    if (i >= 9)
    {
      IMPL = new GBViewCompatImpl();
      return;
    }
    if (i >= 7)
    {
      IMPL = new EclairMr1ViewCompatImpl();
      return;
    }
  }
  
  public static ViewPropertyAnimatorCompat animate(View paramView)
  {
    return IMPL.animate(paramView);
  }
  
  public static boolean canScrollHorizontally(View paramView, int paramInt)
  {
    return IMPL.canScrollHorizontally(paramView, paramInt);
  }
  
  public static boolean canScrollVertically(View paramView, int paramInt)
  {
    return IMPL.canScrollVertically(paramView, paramInt);
  }
  
  private static void dispatchFinishTemporaryDetach(View paramView)
  {
    IMPL.dispatchFinishTemporaryDetach(paramView);
  }
  
  private static void dispatchStartTemporaryDetach(View paramView)
  {
    IMPL.dispatchStartTemporaryDetach(paramView);
  }
  
  private static int getAccessibilityLiveRegion(View paramView)
  {
    return IMPL.getAccessibilityLiveRegion(paramView);
  }
  
  private static AccessibilityNodeProviderCompat getAccessibilityNodeProvider(View paramView)
  {
    return IMPL.getAccessibilityNodeProvider(paramView);
  }
  
  public static float getAlpha(View paramView)
  {
    return IMPL.getAlpha(paramView);
  }
  
  private static float getElevation(View paramView)
  {
    return IMPL.getElevation(paramView);
  }
  
  public static boolean getFitsSystemWindows(View paramView)
  {
    return IMPL.getFitsSystemWindows(paramView);
  }
  
  public static int getImportantForAccessibility(View paramView)
  {
    return IMPL.getImportantForAccessibility(paramView);
  }
  
  private static int getLabelFor(View paramView)
  {
    return IMPL.getLabelFor(paramView);
  }
  
  public static int getLayerType(View paramView)
  {
    return IMPL.getLayerType(paramView);
  }
  
  public static int getLayoutDirection(View paramView)
  {
    return IMPL.getLayoutDirection(paramView);
  }
  
  private static int getMeasuredHeightAndState(View paramView)
  {
    return IMPL.getMeasuredHeightAndState(paramView);
  }
  
  private static int getMeasuredState(View paramView)
  {
    return IMPL.getMeasuredState(paramView);
  }
  
  private static int getMeasuredWidthAndState(View paramView)
  {
    return IMPL.getMeasuredWidthAndState(paramView);
  }
  
  public static int getMinimumHeight(View paramView)
  {
    return IMPL.getMinimumHeight(paramView);
  }
  
  public static int getMinimumWidth(View paramView)
  {
    return IMPL.getMinimumWidth(paramView);
  }
  
  public static int getOverScrollMode(View paramView)
  {
    return IMPL.getOverScrollMode(paramView);
  }
  
  private static int getPaddingEnd(View paramView)
  {
    return IMPL.getPaddingEnd(paramView);
  }
  
  private static int getPaddingStart(View paramView)
  {
    return IMPL.getPaddingStart(paramView);
  }
  
  public static ViewParent getParentForAccessibility(View paramView)
  {
    return IMPL.getParentForAccessibility(paramView);
  }
  
  private static float getPivotX(View paramView)
  {
    return IMPL.getPivotX(paramView);
  }
  
  private static float getPivotY(View paramView)
  {
    return IMPL.getPivotY(paramView);
  }
  
  private static float getRotation(View paramView)
  {
    return IMPL.getRotation(paramView);
  }
  
  private static float getRotationX(View paramView)
  {
    return IMPL.getRotationX(paramView);
  }
  
  private static float getRotationY(View paramView)
  {
    return IMPL.getRotationY(paramView);
  }
  
  public static float getScaleX(View paramView)
  {
    return IMPL.getScaleX(paramView);
  }
  
  private static float getScaleY(View paramView)
  {
    return IMPL.getScaleY(paramView);
  }
  
  private static String getTransitionName(View paramView)
  {
    return IMPL.getTransitionName(paramView);
  }
  
  public static float getTranslationX(View paramView)
  {
    return IMPL.getTranslationX(paramView);
  }
  
  public static float getTranslationY(View paramView)
  {
    return IMPL.getTranslationY(paramView);
  }
  
  private static float getTranslationZ(View paramView)
  {
    return IMPL.getTranslationZ(paramView);
  }
  
  private static int getWindowSystemUiVisibility(View paramView)
  {
    return IMPL.getWindowSystemUiVisibility(paramView);
  }
  
  private static float getX(View paramView)
  {
    return IMPL.getX(paramView);
  }
  
  private static float getY(View paramView)
  {
    return IMPL.getY(paramView);
  }
  
  public static boolean hasAccessibilityDelegate(View paramView)
  {
    return IMPL.hasAccessibilityDelegate(paramView);
  }
  
  public static boolean hasTransientState(View paramView)
  {
    return IMPL.hasTransientState(paramView);
  }
  
  public static boolean isOpaque(View paramView)
  {
    return IMPL.isOpaque(paramView);
  }
  
  private static void jumpDrawablesToCurrentState(View paramView)
  {
    IMPL.jumpDrawablesToCurrentState(paramView);
  }
  
  public static void onInitializeAccessibilityEvent(View paramView, AccessibilityEvent paramAccessibilityEvent)
  {
    IMPL.onInitializeAccessibilityEvent(paramView, paramAccessibilityEvent);
  }
  
  public static void onInitializeAccessibilityNodeInfo(View paramView, AccessibilityNodeInfoCompat paramAccessibilityNodeInfoCompat)
  {
    IMPL.onInitializeAccessibilityNodeInfo(paramView, paramAccessibilityNodeInfoCompat);
  }
  
  private static void onPopulateAccessibilityEvent(View paramView, AccessibilityEvent paramAccessibilityEvent)
  {
    IMPL.onPopulateAccessibilityEvent(paramView, paramAccessibilityEvent);
  }
  
  public static boolean performAccessibilityAction(View paramView, int paramInt, Bundle paramBundle)
  {
    return IMPL.performAccessibilityAction(paramView, paramInt, paramBundle);
  }
  
  public static void postInvalidateOnAnimation(View paramView)
  {
    IMPL.postInvalidateOnAnimation(paramView);
  }
  
  public static void postInvalidateOnAnimation(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    IMPL.postInvalidateOnAnimation(paramView, paramInt1, paramInt2, paramInt3, paramInt4);
  }
  
  public static void postOnAnimation(View paramView, Runnable paramRunnable)
  {
    IMPL.postOnAnimation(paramView, paramRunnable);
  }
  
  public static void postOnAnimationDelayed(View paramView, Runnable paramRunnable, long paramLong)
  {
    IMPL.postOnAnimationDelayed(paramView, paramRunnable, paramLong);
  }
  
  private static void requestApplyInsets(View paramView)
  {
    IMPL.requestApplyInsets(paramView);
  }
  
  private static int resolveSizeAndState(int paramInt1, int paramInt2, int paramInt3)
  {
    return IMPL.resolveSizeAndState(paramInt1, paramInt2, paramInt3);
  }
  
  public static void setAccessibilityDelegate(View paramView, AccessibilityDelegateCompat paramAccessibilityDelegateCompat)
  {
    IMPL.setAccessibilityDelegate(paramView, paramAccessibilityDelegateCompat);
  }
  
  private static void setAccessibilityLiveRegion(View paramView, int paramInt)
  {
    IMPL.setAccessibilityLiveRegion(paramView, paramInt);
  }
  
  public static void setAlpha(View paramView, float paramFloat)
  {
    IMPL.setAlpha(paramView, paramFloat);
  }
  
  public static void setChildrenDrawingOrderEnabled$4d3af60(ViewGroup paramViewGroup)
  {
    IMPL.setChildrenDrawingOrderEnabled$4d3af60(paramViewGroup);
  }
  
  public static void setElevation(View paramView, float paramFloat)
  {
    IMPL.setElevation(paramView, paramFloat);
  }
  
  private static void setHasTransientState(View paramView, boolean paramBoolean)
  {
    IMPL.setHasTransientState(paramView, paramBoolean);
  }
  
  public static void setImportantForAccessibility(View paramView, int paramInt)
  {
    IMPL.setImportantForAccessibility(paramView, paramInt);
  }
  
  private static void setLabelFor(View paramView, int paramInt)
  {
    IMPL.setLabelFor(paramView, paramInt);
  }
  
  public static void setLayerPaint(View paramView, Paint paramPaint)
  {
    IMPL.setLayerPaint(paramView, paramPaint);
  }
  
  public static void setLayerType(View paramView, int paramInt, Paint paramPaint)
  {
    IMPL.setLayerType(paramView, paramInt, paramPaint);
  }
  
  private static void setLayoutDirection(View paramView, int paramInt)
  {
    IMPL.setLayoutDirection(paramView, paramInt);
  }
  
  private static void setOnApplyWindowInsetsListener(View paramView, OnApplyWindowInsetsListener paramOnApplyWindowInsetsListener)
  {
    IMPL.setOnApplyWindowInsetsListener(paramView, paramOnApplyWindowInsetsListener);
  }
  
  public static void setOverScrollMode$5359dc9a(View paramView)
  {
    IMPL.setOverScrollMode$5359dc9a(paramView);
  }
  
  private static void setPaddingRelative(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    IMPL.setPaddingRelative(paramView, paramInt1, paramInt2, paramInt3, paramInt4);
  }
  
  private static void setPivotX(View paramView, float paramFloat)
  {
    IMPL.setPivotX(paramView, paramFloat);
  }
  
  private static void setPivotY(View paramView, float paramFloat)
  {
    IMPL.setPivotX(paramView, paramFloat);
  }
  
  private static void setRotation(View paramView, float paramFloat)
  {
    IMPL.setRotation(paramView, paramFloat);
  }
  
  private static void setRotationX(View paramView, float paramFloat)
  {
    IMPL.setRotationX(paramView, paramFloat);
  }
  
  private static void setRotationY(View paramView, float paramFloat)
  {
    IMPL.setRotationY(paramView, paramFloat);
  }
  
  public static void setScaleX(View paramView, float paramFloat)
  {
    IMPL.setScaleX(paramView, paramFloat);
  }
  
  public static void setScaleY(View paramView, float paramFloat)
  {
    IMPL.setScaleY(paramView, paramFloat);
  }
  
  private static void setTransitionName(View paramView, String paramString)
  {
    IMPL.setTransitionName(paramView, paramString);
  }
  
  public static void setTranslationX(View paramView, float paramFloat)
  {
    IMPL.setTranslationX(paramView, paramFloat);
  }
  
  public static void setTranslationY(View paramView, float paramFloat)
  {
    IMPL.setTranslationY(paramView, paramFloat);
  }
  
  private static void setTranslationZ(View paramView, float paramFloat)
  {
    IMPL.setTranslationZ(paramView, paramFloat);
  }
  
  private static void setX(View paramView, float paramFloat)
  {
    IMPL.setX(paramView, paramFloat);
  }
  
  private static void setY(View paramView, float paramFloat)
  {
    IMPL.setY(paramView, paramFloat);
  }
  
  @Retention(RetentionPolicy.SOURCE)
  @l
  static @interface AccessibilityLiveRegion {}
  
  static final class Api21ViewCompatImpl
    extends ViewCompat.KitKatViewCompatImpl
  {
    public final float getElevation(View paramView)
    {
      return ViewCompatApi21.getElevation(paramView);
    }
    
    public final String getTransitionName(View paramView)
    {
      return ViewCompatApi21.getTransitionName(paramView);
    }
    
    public final float getTranslationZ(View paramView)
    {
      return ViewCompatApi21.getTranslationZ(paramView);
    }
    
    public final void requestApplyInsets(View paramView)
    {
      ViewCompatApi21.requestApplyInsets(paramView);
    }
    
    public final void setElevation(View paramView, float paramFloat)
    {
      ViewCompatApi21.setElevation(paramView, paramFloat);
    }
    
    public final void setOnApplyWindowInsetsListener(View paramView, OnApplyWindowInsetsListener paramOnApplyWindowInsetsListener)
    {
      ViewCompatApi21.setOnApplyWindowInsetsListener(paramView, paramOnApplyWindowInsetsListener);
    }
    
    public final void setTransitionName(View paramView, String paramString)
    {
      ViewCompatApi21.setTransitionName(paramView, paramString);
    }
    
    public final void setTranslationZ(View paramView, float paramFloat)
    {
      ViewCompatApi21.setTranslationZ(paramView, paramFloat);
    }
  }
  
  static class BaseViewCompatImpl
    implements ViewCompat.ViewCompatImpl
  {
    private Method mDispatchFinishTemporaryDetach;
    private Method mDispatchStartTemporaryDetach;
    private boolean mTempDetachBound;
    WeakHashMap<View, ViewPropertyAnimatorCompat> mViewPropertyAnimatorCompatMap = null;
    
    private void bindTempDetach()
    {
      try
      {
        mDispatchStartTemporaryDetach = View.class.getDeclaredMethod("dispatchStartTemporaryDetach", new Class[0]);
        mDispatchFinishTemporaryDetach = View.class.getDeclaredMethod("dispatchFinishTemporaryDetach", new Class[0]);
        mTempDetachBound = true;
        return;
      }
      catch (NoSuchMethodException localNoSuchMethodException)
      {
        for (;;) {}
      }
    }
    
    public ViewPropertyAnimatorCompat animate(View paramView)
    {
      return new ViewPropertyAnimatorCompat(paramView);
    }
    
    public boolean canScrollHorizontally(View paramView, int paramInt)
    {
      return false;
    }
    
    public boolean canScrollVertically(View paramView, int paramInt)
    {
      return false;
    }
    
    public final void dispatchFinishTemporaryDetach(View paramView)
    {
      if (!mTempDetachBound) {
        bindTempDetach();
      }
      if (mDispatchFinishTemporaryDetach != null) {}
      try
      {
        mDispatchFinishTemporaryDetach.invoke(paramView, new Object[0]);
        return;
      }
      catch (Exception paramView) {}
      paramView.onFinishTemporaryDetach();
      return;
    }
    
    public final void dispatchStartTemporaryDetach(View paramView)
    {
      if (!mTempDetachBound) {
        bindTempDetach();
      }
      if (mDispatchStartTemporaryDetach != null) {}
      try
      {
        mDispatchStartTemporaryDetach.invoke(paramView, new Object[0]);
        return;
      }
      catch (Exception paramView) {}
      paramView.onStartTemporaryDetach();
      return;
    }
    
    public int getAccessibilityLiveRegion(View paramView)
    {
      return 0;
    }
    
    public AccessibilityNodeProviderCompat getAccessibilityNodeProvider(View paramView)
    {
      return null;
    }
    
    public float getAlpha(View paramView)
    {
      return 1.0F;
    }
    
    public float getElevation(View paramView)
    {
      return 0.0F;
    }
    
    public boolean getFitsSystemWindows(View paramView)
    {
      return false;
    }
    
    long getFrameTime()
    {
      return 10L;
    }
    
    public int getImportantForAccessibility(View paramView)
    {
      return 0;
    }
    
    public int getLabelFor(View paramView)
    {
      return 0;
    }
    
    public int getLayerType(View paramView)
    {
      return 0;
    }
    
    public int getLayoutDirection(View paramView)
    {
      return 0;
    }
    
    public int getMeasuredHeightAndState(View paramView)
    {
      return paramView.getMeasuredHeight();
    }
    
    public int getMeasuredState(View paramView)
    {
      return 0;
    }
    
    public int getMeasuredWidthAndState(View paramView)
    {
      return paramView.getMeasuredWidth();
    }
    
    public int getMinimumHeight(View paramView)
    {
      return 0;
    }
    
    public int getMinimumWidth(View paramView)
    {
      return 0;
    }
    
    public int getOverScrollMode(View paramView)
    {
      return 2;
    }
    
    public int getPaddingEnd(View paramView)
    {
      return paramView.getPaddingRight();
    }
    
    public int getPaddingStart(View paramView)
    {
      return paramView.getPaddingLeft();
    }
    
    public ViewParent getParentForAccessibility(View paramView)
    {
      return paramView.getParent();
    }
    
    public float getPivotX(View paramView)
    {
      return 0.0F;
    }
    
    public float getPivotY(View paramView)
    {
      return 0.0F;
    }
    
    public float getRotation(View paramView)
    {
      return 0.0F;
    }
    
    public float getRotationX(View paramView)
    {
      return 0.0F;
    }
    
    public float getRotationY(View paramView)
    {
      return 0.0F;
    }
    
    public float getScaleX(View paramView)
    {
      return 0.0F;
    }
    
    public float getScaleY(View paramView)
    {
      return 0.0F;
    }
    
    public String getTransitionName(View paramView)
    {
      return null;
    }
    
    public float getTranslationX(View paramView)
    {
      return 0.0F;
    }
    
    public float getTranslationY(View paramView)
    {
      return 0.0F;
    }
    
    public float getTranslationZ(View paramView)
    {
      return 0.0F;
    }
    
    public int getWindowSystemUiVisibility(View paramView)
    {
      return 0;
    }
    
    public float getX(View paramView)
    {
      return 0.0F;
    }
    
    public float getY(View paramView)
    {
      return 0.0F;
    }
    
    public boolean hasAccessibilityDelegate(View paramView)
    {
      return false;
    }
    
    public boolean hasTransientState(View paramView)
    {
      return false;
    }
    
    public boolean isOpaque(View paramView)
    {
      boolean bool2 = false;
      paramView = paramView.getBackground();
      boolean bool1 = bool2;
      if (paramView != null)
      {
        bool1 = bool2;
        if (paramView.getOpacity() == -1) {
          bool1 = true;
        }
      }
      return bool1;
    }
    
    public void jumpDrawablesToCurrentState(View paramView) {}
    
    public void onInitializeAccessibilityEvent(View paramView, AccessibilityEvent paramAccessibilityEvent) {}
    
    public void onInitializeAccessibilityNodeInfo(View paramView, AccessibilityNodeInfoCompat paramAccessibilityNodeInfoCompat) {}
    
    public void onPopulateAccessibilityEvent(View paramView, AccessibilityEvent paramAccessibilityEvent) {}
    
    public boolean performAccessibilityAction(View paramView, int paramInt, Bundle paramBundle)
    {
      return false;
    }
    
    public void postInvalidateOnAnimation(View paramView)
    {
      paramView.invalidate();
    }
    
    public void postInvalidateOnAnimation(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
    {
      paramView.invalidate(paramInt1, paramInt2, paramInt3, paramInt4);
    }
    
    public void postOnAnimation(View paramView, Runnable paramRunnable)
    {
      paramView.postDelayed(paramRunnable, getFrameTime());
    }
    
    public void postOnAnimationDelayed(View paramView, Runnable paramRunnable, long paramLong)
    {
      paramView.postDelayed(paramRunnable, getFrameTime() + paramLong);
    }
    
    public void requestApplyInsets(View paramView) {}
    
    public int resolveSizeAndState(int paramInt1, int paramInt2, int paramInt3)
    {
      return View.resolveSize(paramInt1, paramInt2);
    }
    
    public void setAccessibilityDelegate(View paramView, AccessibilityDelegateCompat paramAccessibilityDelegateCompat) {}
    
    public void setAccessibilityLiveRegion(View paramView, int paramInt) {}
    
    public void setAlpha(View paramView, float paramFloat) {}
    
    public void setChildrenDrawingOrderEnabled$4d3af60(ViewGroup paramViewGroup) {}
    
    public void setElevation(View paramView, float paramFloat) {}
    
    public void setHasTransientState(View paramView, boolean paramBoolean) {}
    
    public void setImportantForAccessibility(View paramView, int paramInt) {}
    
    public void setLabelFor(View paramView, int paramInt) {}
    
    public void setLayerPaint(View paramView, Paint paramPaint) {}
    
    public void setLayerType(View paramView, int paramInt, Paint paramPaint) {}
    
    public void setLayoutDirection(View paramView, int paramInt) {}
    
    public void setOnApplyWindowInsetsListener(View paramView, OnApplyWindowInsetsListener paramOnApplyWindowInsetsListener) {}
    
    public void setOverScrollMode$5359dc9a(View paramView) {}
    
    public void setPaddingRelative(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
    {
      paramView.setPadding(paramInt1, paramInt2, paramInt3, paramInt4);
    }
    
    public void setPivotX(View paramView, float paramFloat) {}
    
    public void setPivotY(View paramView, float paramFloat) {}
    
    public void setRotation(View paramView, float paramFloat) {}
    
    public void setRotationX(View paramView, float paramFloat) {}
    
    public void setRotationY(View paramView, float paramFloat) {}
    
    public void setScaleX(View paramView, float paramFloat) {}
    
    public void setScaleY(View paramView, float paramFloat) {}
    
    public void setTransitionName(View paramView, String paramString) {}
    
    public void setTranslationX(View paramView, float paramFloat) {}
    
    public void setTranslationY(View paramView, float paramFloat) {}
    
    public void setTranslationZ(View paramView, float paramFloat) {}
    
    public void setX(View paramView, float paramFloat) {}
    
    public void setY(View paramView, float paramFloat) {}
  }
  
  static class EclairMr1ViewCompatImpl
    extends ViewCompat.BaseViewCompatImpl
  {
    public final boolean isOpaque(View paramView)
    {
      return ViewCompatEclairMr1.isOpaque(paramView);
    }
    
    public final void setChildrenDrawingOrderEnabled$4d3af60(ViewGroup paramViewGroup)
    {
      ViewCompatEclairMr1.setChildrenDrawingOrderEnabled$4d3af60(paramViewGroup);
    }
  }
  
  static class GBViewCompatImpl
    extends ViewCompat.EclairMr1ViewCompatImpl
  {
    public final int getOverScrollMode(View paramView)
    {
      return ViewCompatGingerbread.getOverScrollMode(paramView);
    }
    
    public final void setOverScrollMode$5359dc9a(View paramView)
    {
      ViewCompatGingerbread.setOverScrollMode$5359dc9a(paramView);
    }
  }
  
  static class HCViewCompatImpl
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
  
  static class ICSViewCompatImpl
    extends ViewCompat.HCViewCompatImpl
  {
    static boolean accessibilityDelegateCheckFailed = false;
    static Field mAccessibilityDelegateField;
    
    public final ViewPropertyAnimatorCompat animate(View paramView)
    {
      if (mViewPropertyAnimatorCompatMap == null) {
        mViewPropertyAnimatorCompatMap = new WeakHashMap();
      }
      ViewPropertyAnimatorCompat localViewPropertyAnimatorCompat2 = (ViewPropertyAnimatorCompat)mViewPropertyAnimatorCompatMap.get(paramView);
      ViewPropertyAnimatorCompat localViewPropertyAnimatorCompat1 = localViewPropertyAnimatorCompat2;
      if (localViewPropertyAnimatorCompat2 == null)
      {
        localViewPropertyAnimatorCompat1 = new ViewPropertyAnimatorCompat(paramView);
        mViewPropertyAnimatorCompatMap.put(paramView, localViewPropertyAnimatorCompat1);
      }
      return localViewPropertyAnimatorCompat1;
    }
    
    public final boolean canScrollHorizontally(View paramView, int paramInt)
    {
      return ViewCompatICS.canScrollHorizontally(paramView, paramInt);
    }
    
    public final boolean canScrollVertically(View paramView, int paramInt)
    {
      return ViewCompatICS.canScrollVertically(paramView, paramInt);
    }
    
    public final boolean hasAccessibilityDelegate(View paramView)
    {
      if (accessibilityDelegateCheckFailed) {}
      for (;;)
      {
        return false;
        if (mAccessibilityDelegateField == null) {}
        try
        {
          Field localField = View.class.getDeclaredField("mAccessibilityDelegate");
          mAccessibilityDelegateField = localField;
          localField.setAccessible(true);
        }
        catch (Throwable paramView)
        {
          try
          {
            paramView = mAccessibilityDelegateField.get(paramView);
            if (paramView == null) {
              continue;
            }
            return true;
          }
          catch (Throwable paramView)
          {
            accessibilityDelegateCheckFailed = true;
          }
          paramView = paramView;
          accessibilityDelegateCheckFailed = true;
          return false;
        }
      }
      return false;
    }
    
    public final void onInitializeAccessibilityEvent(View paramView, AccessibilityEvent paramAccessibilityEvent)
    {
      ViewCompatICS.onInitializeAccessibilityEvent(paramView, paramAccessibilityEvent);
    }
    
    public final void onInitializeAccessibilityNodeInfo(View paramView, AccessibilityNodeInfoCompat paramAccessibilityNodeInfoCompat)
    {
      ViewCompatICS.onInitializeAccessibilityNodeInfo(paramView, mInfo);
    }
    
    public final void onPopulateAccessibilityEvent(View paramView, AccessibilityEvent paramAccessibilityEvent)
    {
      ViewCompatICS.onPopulateAccessibilityEvent(paramView, paramAccessibilityEvent);
    }
    
    public final void setAccessibilityDelegate(View paramView, AccessibilityDelegateCompat paramAccessibilityDelegateCompat)
    {
      ViewCompatICS.setAccessibilityDelegate(paramView, paramAccessibilityDelegateCompat.getBridge());
    }
  }
  
  @Retention(RetentionPolicy.SOURCE)
  @l
  static @interface ImportantForAccessibility {}
  
  static class JBViewCompatImpl
    extends ViewCompat.ICSViewCompatImpl
  {
    public final AccessibilityNodeProviderCompat getAccessibilityNodeProvider(View paramView)
    {
      paramView = ViewCompatJB.getAccessibilityNodeProvider(paramView);
      if (paramView != null) {
        return new AccessibilityNodeProviderCompat(paramView);
      }
      return null;
    }
    
    public final boolean getFitsSystemWindows(View paramView)
    {
      return ViewCompatJB.getFitsSystemWindows(paramView);
    }
    
    public final int getImportantForAccessibility(View paramView)
    {
      return ViewCompatJB.getImportantForAccessibility(paramView);
    }
    
    public final int getMinimumHeight(View paramView)
    {
      return ViewCompatJB.getMinimumHeight(paramView);
    }
    
    public final int getMinimumWidth(View paramView)
    {
      return ViewCompatJB.getMinimumWidth(paramView);
    }
    
    public final ViewParent getParentForAccessibility(View paramView)
    {
      return ViewCompatJB.getParentForAccessibility(paramView);
    }
    
    public final boolean hasTransientState(View paramView)
    {
      return ViewCompatJB.hasTransientState(paramView);
    }
    
    public final boolean performAccessibilityAction(View paramView, int paramInt, Bundle paramBundle)
    {
      return ViewCompatJB.performAccessibilityAction(paramView, paramInt, paramBundle);
    }
    
    public final void postInvalidateOnAnimation(View paramView)
    {
      ViewCompatJB.postInvalidateOnAnimation(paramView);
    }
    
    public final void postInvalidateOnAnimation(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
    {
      ViewCompatJB.postInvalidateOnAnimation(paramView, paramInt1, paramInt2, paramInt3, paramInt4);
    }
    
    public final void postOnAnimation(View paramView, Runnable paramRunnable)
    {
      ViewCompatJB.postOnAnimation(paramView, paramRunnable);
    }
    
    public final void postOnAnimationDelayed(View paramView, Runnable paramRunnable, long paramLong)
    {
      ViewCompatJB.postOnAnimationDelayed(paramView, paramRunnable, paramLong);
    }
    
    public void requestApplyInsets(View paramView)
    {
      ViewCompatJB.requestApplyInsets(paramView);
    }
    
    public final void setHasTransientState(View paramView, boolean paramBoolean)
    {
      ViewCompatJB.setHasTransientState(paramView, paramBoolean);
    }
    
    public void setImportantForAccessibility(View paramView, int paramInt)
    {
      int i = paramInt;
      if (paramInt == 4) {
        i = 2;
      }
      ViewCompatJB.setImportantForAccessibility(paramView, i);
    }
  }
  
  static class JbMr1ViewCompatImpl
    extends ViewCompat.JBViewCompatImpl
  {
    public final int getLabelFor(View paramView)
    {
      return ViewCompatJellybeanMr1.getLabelFor(paramView);
    }
    
    public final int getLayoutDirection(View paramView)
    {
      return ViewCompatJellybeanMr1.getLayoutDirection(paramView);
    }
    
    public final int getPaddingEnd(View paramView)
    {
      return ViewCompatJellybeanMr1.getPaddingEnd(paramView);
    }
    
    public final int getPaddingStart(View paramView)
    {
      return ViewCompatJellybeanMr1.getPaddingStart(paramView);
    }
    
    public final int getWindowSystemUiVisibility(View paramView)
    {
      return ViewCompatJellybeanMr1.getWindowSystemUiVisibility(paramView);
    }
    
    public final void setLabelFor(View paramView, int paramInt)
    {
      ViewCompatJellybeanMr1.setLabelFor(paramView, paramInt);
    }
    
    public final void setLayerPaint(View paramView, Paint paramPaint)
    {
      ViewCompatJellybeanMr1.setLayerPaint(paramView, paramPaint);
    }
    
    public final void setLayoutDirection(View paramView, int paramInt)
    {
      ViewCompatJellybeanMr1.setLayoutDirection(paramView, paramInt);
    }
    
    public final void setPaddingRelative(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
    {
      ViewCompatJellybeanMr1.setPaddingRelative(paramView, paramInt1, paramInt2, paramInt3, paramInt4);
    }
  }
  
  static class KitKatViewCompatImpl
    extends ViewCompat.JbMr1ViewCompatImpl
  {
    public final int getAccessibilityLiveRegion(View paramView)
    {
      return ViewCompatKitKat.getAccessibilityLiveRegion(paramView);
    }
    
    public final void setAccessibilityLiveRegion(View paramView, int paramInt)
    {
      ViewCompatKitKat.setAccessibilityLiveRegion(paramView, paramInt);
    }
    
    public final void setImportantForAccessibility(View paramView, int paramInt)
    {
      ViewCompatJB.setImportantForAccessibility(paramView, paramInt);
    }
  }
  
  @Retention(RetentionPolicy.SOURCE)
  @l
  static @interface LayerType {}
  
  @Retention(RetentionPolicy.SOURCE)
  @l
  static @interface LayoutDirectionMode {}
  
  @Retention(RetentionPolicy.SOURCE)
  @l
  static @interface OverScroll {}
  
  @Retention(RetentionPolicy.SOURCE)
  @l
  static @interface ResolvedLayoutDirectionMode {}
  
  static abstract interface ViewCompatImpl
  {
    public abstract ViewPropertyAnimatorCompat animate(View paramView);
    
    public abstract boolean canScrollHorizontally(View paramView, int paramInt);
    
    public abstract boolean canScrollVertically(View paramView, int paramInt);
    
    public abstract void dispatchFinishTemporaryDetach(View paramView);
    
    public abstract void dispatchStartTemporaryDetach(View paramView);
    
    public abstract int getAccessibilityLiveRegion(View paramView);
    
    public abstract AccessibilityNodeProviderCompat getAccessibilityNodeProvider(View paramView);
    
    public abstract float getAlpha(View paramView);
    
    public abstract float getElevation(View paramView);
    
    public abstract boolean getFitsSystemWindows(View paramView);
    
    public abstract int getImportantForAccessibility(View paramView);
    
    public abstract int getLabelFor(View paramView);
    
    public abstract int getLayerType(View paramView);
    
    public abstract int getLayoutDirection(View paramView);
    
    public abstract int getMeasuredHeightAndState(View paramView);
    
    public abstract int getMeasuredState(View paramView);
    
    public abstract int getMeasuredWidthAndState(View paramView);
    
    public abstract int getMinimumHeight(View paramView);
    
    public abstract int getMinimumWidth(View paramView);
    
    public abstract int getOverScrollMode(View paramView);
    
    public abstract int getPaddingEnd(View paramView);
    
    public abstract int getPaddingStart(View paramView);
    
    public abstract ViewParent getParentForAccessibility(View paramView);
    
    public abstract float getPivotX(View paramView);
    
    public abstract float getPivotY(View paramView);
    
    public abstract float getRotation(View paramView);
    
    public abstract float getRotationX(View paramView);
    
    public abstract float getRotationY(View paramView);
    
    public abstract float getScaleX(View paramView);
    
    public abstract float getScaleY(View paramView);
    
    public abstract String getTransitionName(View paramView);
    
    public abstract float getTranslationX(View paramView);
    
    public abstract float getTranslationY(View paramView);
    
    public abstract float getTranslationZ(View paramView);
    
    public abstract int getWindowSystemUiVisibility(View paramView);
    
    public abstract float getX(View paramView);
    
    public abstract float getY(View paramView);
    
    public abstract boolean hasAccessibilityDelegate(View paramView);
    
    public abstract boolean hasTransientState(View paramView);
    
    public abstract boolean isOpaque(View paramView);
    
    public abstract void jumpDrawablesToCurrentState(View paramView);
    
    public abstract void onInitializeAccessibilityEvent(View paramView, AccessibilityEvent paramAccessibilityEvent);
    
    public abstract void onInitializeAccessibilityNodeInfo(View paramView, AccessibilityNodeInfoCompat paramAccessibilityNodeInfoCompat);
    
    public abstract void onPopulateAccessibilityEvent(View paramView, AccessibilityEvent paramAccessibilityEvent);
    
    public abstract boolean performAccessibilityAction(View paramView, int paramInt, Bundle paramBundle);
    
    public abstract void postInvalidateOnAnimation(View paramView);
    
    public abstract void postInvalidateOnAnimation(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4);
    
    public abstract void postOnAnimation(View paramView, Runnable paramRunnable);
    
    public abstract void postOnAnimationDelayed(View paramView, Runnable paramRunnable, long paramLong);
    
    public abstract void requestApplyInsets(View paramView);
    
    public abstract int resolveSizeAndState(int paramInt1, int paramInt2, int paramInt3);
    
    public abstract void setAccessibilityDelegate(View paramView, AccessibilityDelegateCompat paramAccessibilityDelegateCompat);
    
    public abstract void setAccessibilityLiveRegion(View paramView, int paramInt);
    
    public abstract void setAlpha(View paramView, float paramFloat);
    
    public abstract void setChildrenDrawingOrderEnabled$4d3af60(ViewGroup paramViewGroup);
    
    public abstract void setElevation(View paramView, float paramFloat);
    
    public abstract void setHasTransientState(View paramView, boolean paramBoolean);
    
    public abstract void setImportantForAccessibility(View paramView, int paramInt);
    
    public abstract void setLabelFor(View paramView, int paramInt);
    
    public abstract void setLayerPaint(View paramView, Paint paramPaint);
    
    public abstract void setLayerType(View paramView, int paramInt, Paint paramPaint);
    
    public abstract void setLayoutDirection(View paramView, int paramInt);
    
    public abstract void setOnApplyWindowInsetsListener(View paramView, OnApplyWindowInsetsListener paramOnApplyWindowInsetsListener);
    
    public abstract void setOverScrollMode$5359dc9a(View paramView);
    
    public abstract void setPaddingRelative(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4);
    
    public abstract void setPivotX(View paramView, float paramFloat);
    
    public abstract void setPivotY(View paramView, float paramFloat);
    
    public abstract void setRotation(View paramView, float paramFloat);
    
    public abstract void setRotationX(View paramView, float paramFloat);
    
    public abstract void setRotationY(View paramView, float paramFloat);
    
    public abstract void setScaleX(View paramView, float paramFloat);
    
    public abstract void setScaleY(View paramView, float paramFloat);
    
    public abstract void setTransitionName(View paramView, String paramString);
    
    public abstract void setTranslationX(View paramView, float paramFloat);
    
    public abstract void setTranslationY(View paramView, float paramFloat);
    
    public abstract void setTranslationZ(View paramView, float paramFloat);
    
    public abstract void setX(View paramView, float paramFloat);
    
    public abstract void setY(View paramView, float paramFloat);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.ViewCompat
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */