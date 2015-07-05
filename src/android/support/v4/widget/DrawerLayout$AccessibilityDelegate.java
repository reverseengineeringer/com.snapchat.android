package android.support.v4.widget;

import android.graphics.Rect;
import android.support.v4.view.AccessibilityDelegateCompat;
import android.support.v4.view.GravityCompat;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import java.util.List;

final class DrawerLayout$AccessibilityDelegate
  extends AccessibilityDelegateCompat
{
  private final Rect mTmpRect = new Rect();
  
  DrawerLayout$AccessibilityDelegate(DrawerLayout paramDrawerLayout) {}
  
  private static void addChildrenForAccessibility(AccessibilityNodeInfoCompat paramAccessibilityNodeInfoCompat, ViewGroup paramViewGroup)
  {
    int j = paramViewGroup.getChildCount();
    int i = 0;
    while (i < j)
    {
      View localView = paramViewGroup.getChildAt(i);
      if (DrawerLayout.access$400(localView)) {
        paramAccessibilityNodeInfoCompat.addChild(localView);
      }
      i += 1;
    }
  }
  
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
  }
  
  public final boolean dispatchPopulateAccessibilityEvent(View paramView, AccessibilityEvent paramAccessibilityEvent)
  {
    if (paramAccessibilityEvent.getEventType() == 32)
    {
      paramAccessibilityEvent = paramAccessibilityEvent.getText();
      paramView = DrawerLayout.access$300(this$0);
      int i;
      if (paramView != null)
      {
        i = this$0.getDrawerViewAbsoluteGravity(paramView);
        paramView = this$0;
        i = GravityCompat.getAbsoluteGravity(i, ViewCompat.getLayoutDirection(paramView));
        if (i != 3) {
          break label73;
        }
        paramView = mTitleLeft;
      }
      for (;;)
      {
        if (paramView != null) {
          paramAccessibilityEvent.add(paramView);
        }
        return true;
        label73:
        if (i == 5) {
          paramView = mTitleRight;
        } else {
          paramView = null;
        }
      }
    }
    return super.dispatchPopulateAccessibilityEvent(paramView, paramAccessibilityEvent);
  }
  
  public final void onInitializeAccessibilityEvent(View paramView, AccessibilityEvent paramAccessibilityEvent)
  {
    super.onInitializeAccessibilityEvent(paramView, paramAccessibilityEvent);
    paramAccessibilityEvent.setClassName(DrawerLayout.class.getName());
  }
  
  public final void onInitializeAccessibilityNodeInfo(View paramView, AccessibilityNodeInfoCompat paramAccessibilityNodeInfoCompat)
  {
    if (DrawerLayout.access$200()) {
      super.onInitializeAccessibilityNodeInfo(paramView, paramAccessibilityNodeInfoCompat);
    }
    for (;;)
    {
      paramAccessibilityNodeInfoCompat.setClassName(DrawerLayout.class.getName());
      return;
      Object localObject1 = AccessibilityNodeInfoCompat.obtain(paramAccessibilityNodeInfoCompat);
      super.onInitializeAccessibilityNodeInfo(paramView, (AccessibilityNodeInfoCompat)localObject1);
      paramAccessibilityNodeInfoCompat.setSource(paramView);
      Object localObject2 = ViewCompat.getParentForAccessibility(paramView);
      if ((localObject2 instanceof View)) {
        paramAccessibilityNodeInfoCompat.setParent((View)localObject2);
      }
      localObject2 = mTmpRect;
      ((AccessibilityNodeInfoCompat)localObject1).getBoundsInParent((Rect)localObject2);
      paramAccessibilityNodeInfoCompat.setBoundsInParent((Rect)localObject2);
      ((AccessibilityNodeInfoCompat)localObject1).getBoundsInScreen((Rect)localObject2);
      paramAccessibilityNodeInfoCompat.setBoundsInScreen((Rect)localObject2);
      paramAccessibilityNodeInfoCompat.setVisibleToUser(((AccessibilityNodeInfoCompat)localObject1).isVisibleToUser());
      paramAccessibilityNodeInfoCompat.setPackageName(((AccessibilityNodeInfoCompat)localObject1).getPackageName());
      paramAccessibilityNodeInfoCompat.setClassName(((AccessibilityNodeInfoCompat)localObject1).getClassName());
      paramAccessibilityNodeInfoCompat.setContentDescription(((AccessibilityNodeInfoCompat)localObject1).getContentDescription());
      paramAccessibilityNodeInfoCompat.setEnabled(((AccessibilityNodeInfoCompat)localObject1).isEnabled());
      paramAccessibilityNodeInfoCompat.setClickable(((AccessibilityNodeInfoCompat)localObject1).isClickable());
      paramAccessibilityNodeInfoCompat.setFocusable(((AccessibilityNodeInfoCompat)localObject1).isFocusable());
      paramAccessibilityNodeInfoCompat.setFocused(((AccessibilityNodeInfoCompat)localObject1).isFocused());
      paramAccessibilityNodeInfoCompat.setAccessibilityFocused(((AccessibilityNodeInfoCompat)localObject1).isAccessibilityFocused());
      paramAccessibilityNodeInfoCompat.setSelected(((AccessibilityNodeInfoCompat)localObject1).isSelected());
      paramAccessibilityNodeInfoCompat.setLongClickable(((AccessibilityNodeInfoCompat)localObject1).isLongClickable());
      paramAccessibilityNodeInfoCompat.addAction(((AccessibilityNodeInfoCompat)localObject1).getActions());
      ((AccessibilityNodeInfoCompat)localObject1).recycle();
      paramView = (ViewGroup)paramView;
      int j = paramView.getChildCount();
      int i = 0;
      while (i < j)
      {
        localObject1 = paramView.getChildAt(i);
        if (DrawerLayout.access$400((View)localObject1)) {
          paramAccessibilityNodeInfoCompat.addChild((View)localObject1);
        }
        i += 1;
      }
    }
  }
  
  public final boolean onRequestSendAccessibilityEvent(ViewGroup paramViewGroup, View paramView, AccessibilityEvent paramAccessibilityEvent)
  {
    if ((DrawerLayout.access$200()) || (DrawerLayout.access$400(paramView))) {
      return super.onRequestSendAccessibilityEvent(paramViewGroup, paramView, paramAccessibilityEvent);
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     android.support.v4.widget.DrawerLayout.AccessibilityDelegate
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */