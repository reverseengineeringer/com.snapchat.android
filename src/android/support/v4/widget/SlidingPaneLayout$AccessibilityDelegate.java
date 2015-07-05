package android.support.v4.widget;

import android.graphics.Rect;
import android.support.v4.view.AccessibilityDelegateCompat;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.AccessibilityNodeInfoImpl;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;

final class SlidingPaneLayout$AccessibilityDelegate
  extends AccessibilityDelegateCompat
{
  private final Rect mTmpRect = new Rect();
  
  SlidingPaneLayout$AccessibilityDelegate(SlidingPaneLayout paramSlidingPaneLayout) {}
  
  private void copyNodeInfoNoChildren(AccessibilityNodeInfoCompat paramAccessibilityNodeInfoCompat1, AccessibilityNodeInfoCompat paramAccessibilityNodeInfoCompat2)
  {
    Rect localRect = mTmpRect;
    paramAccessibilityNodeInfoCompat2.getBoundsInParent(localRect);
    paramAccessibilityNodeInfoCompat1.setBoundsInParent(localRect);
    paramAccessibilityNodeInfoCompat2.getBoundsInScreen(localRect);
    paramAccessibilityNodeInfoCompat1.setBoundsInScreen(localRect);
    paramAccessibilityNodeInfoCompat1.setVisibleToUser(paramAccessibilityNodeInfoCompat2.isVisibleToUser());
    paramAccessibilityNodeInfoCompat1.setPackageName(paramAccessibilityNodeInfoCompat2.getPackageName());
    paramAccessibilityNodeInfoCompat1.setClassName(paramAccessibilityNodeInfoCompat2.getClassName());
    paramAccessibilityNodeInfoCompat1.setContentDescription(paramAccessibilityNodeInfoCompat2.getContentDescription());
    paramAccessibilityNodeInfoCompat1.setEnabled(paramAccessibilityNodeInfoCompat2.isEnabled());
    paramAccessibilityNodeInfoCompat1.setClickable(paramAccessibilityNodeInfoCompat2.isClickable());
    paramAccessibilityNodeInfoCompat1.setFocusable(paramAccessibilityNodeInfoCompat2.isFocusable());
    paramAccessibilityNodeInfoCompat1.setFocused(paramAccessibilityNodeInfoCompat2.isFocused());
    paramAccessibilityNodeInfoCompat1.setAccessibilityFocused(paramAccessibilityNodeInfoCompat2.isAccessibilityFocused());
    paramAccessibilityNodeInfoCompat1.setSelected(paramAccessibilityNodeInfoCompat2.isSelected());
    paramAccessibilityNodeInfoCompat1.setLongClickable(paramAccessibilityNodeInfoCompat2.isLongClickable());
    paramAccessibilityNodeInfoCompat1.addAction(paramAccessibilityNodeInfoCompat2.getActions());
    int i = AccessibilityNodeInfoCompat.IMPL.getMovementGranularities(mInfo);
    AccessibilityNodeInfoCompat.IMPL.setMovementGranularities(mInfo, i);
  }
  
  private boolean filter(View paramView)
  {
    return this$0.isDimmed(paramView);
  }
  
  public final void onInitializeAccessibilityEvent(View paramView, AccessibilityEvent paramAccessibilityEvent)
  {
    super.onInitializeAccessibilityEvent(paramView, paramAccessibilityEvent);
    paramAccessibilityEvent.setClassName(SlidingPaneLayout.class.getName());
  }
  
  public final void onInitializeAccessibilityNodeInfo(View paramView, AccessibilityNodeInfoCompat paramAccessibilityNodeInfoCompat)
  {
    AccessibilityNodeInfoCompat localAccessibilityNodeInfoCompat = AccessibilityNodeInfoCompat.obtain(paramAccessibilityNodeInfoCompat);
    super.onInitializeAccessibilityNodeInfo(paramView, localAccessibilityNodeInfoCompat);
    Rect localRect = mTmpRect;
    localAccessibilityNodeInfoCompat.getBoundsInParent(localRect);
    paramAccessibilityNodeInfoCompat.setBoundsInParent(localRect);
    localAccessibilityNodeInfoCompat.getBoundsInScreen(localRect);
    paramAccessibilityNodeInfoCompat.setBoundsInScreen(localRect);
    paramAccessibilityNodeInfoCompat.setVisibleToUser(localAccessibilityNodeInfoCompat.isVisibleToUser());
    paramAccessibilityNodeInfoCompat.setPackageName(localAccessibilityNodeInfoCompat.getPackageName());
    paramAccessibilityNodeInfoCompat.setClassName(localAccessibilityNodeInfoCompat.getClassName());
    paramAccessibilityNodeInfoCompat.setContentDescription(localAccessibilityNodeInfoCompat.getContentDescription());
    paramAccessibilityNodeInfoCompat.setEnabled(localAccessibilityNodeInfoCompat.isEnabled());
    paramAccessibilityNodeInfoCompat.setClickable(localAccessibilityNodeInfoCompat.isClickable());
    paramAccessibilityNodeInfoCompat.setFocusable(localAccessibilityNodeInfoCompat.isFocusable());
    paramAccessibilityNodeInfoCompat.setFocused(localAccessibilityNodeInfoCompat.isFocused());
    paramAccessibilityNodeInfoCompat.setAccessibilityFocused(localAccessibilityNodeInfoCompat.isAccessibilityFocused());
    paramAccessibilityNodeInfoCompat.setSelected(localAccessibilityNodeInfoCompat.isSelected());
    paramAccessibilityNodeInfoCompat.setLongClickable(localAccessibilityNodeInfoCompat.isLongClickable());
    paramAccessibilityNodeInfoCompat.addAction(localAccessibilityNodeInfoCompat.getActions());
    int i = AccessibilityNodeInfoCompat.IMPL.getMovementGranularities(mInfo);
    AccessibilityNodeInfoCompat.IMPL.setMovementGranularities(mInfo, i);
    localAccessibilityNodeInfoCompat.recycle();
    paramAccessibilityNodeInfoCompat.setClassName(SlidingPaneLayout.class.getName());
    paramAccessibilityNodeInfoCompat.setSource(paramView);
    paramView = ViewCompat.getParentForAccessibility(paramView);
    if ((paramView instanceof View)) {
      paramAccessibilityNodeInfoCompat.setParent((View)paramView);
    }
    int j = this$0.getChildCount();
    i = 0;
    while (i < j)
    {
      paramView = this$0.getChildAt(i);
      if ((!filter(paramView)) && (paramView.getVisibility() == 0))
      {
        ViewCompat.setImportantForAccessibility(paramView, 1);
        paramAccessibilityNodeInfoCompat.addChild(paramView);
      }
      i += 1;
    }
  }
  
  public final boolean onRequestSendAccessibilityEvent(ViewGroup paramViewGroup, View paramView, AccessibilityEvent paramAccessibilityEvent)
  {
    if (!filter(paramView)) {
      return super.onRequestSendAccessibilityEvent(paramViewGroup, paramView, paramAccessibilityEvent);
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     android.support.v4.widget.SlidingPaneLayout.AccessibilityDelegate
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */