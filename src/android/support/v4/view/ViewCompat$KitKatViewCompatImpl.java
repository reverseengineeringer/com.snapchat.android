package android.support.v4.view;

import android.view.View;

class ViewCompat$KitKatViewCompatImpl
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

/* Location:
 * Qualified Name:     android.support.v4.view.ViewCompat.KitKatViewCompatImpl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */