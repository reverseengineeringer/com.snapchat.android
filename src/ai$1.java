import android.os.Bundle;
import android.support.v4.view.AccessibilityDelegateCompat;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.h;
import android.view.View;

final class ai$1
  extends AccessibilityDelegateCompat
{
  ai$1(ai paramai) {}
  
  public final void onInitializeAccessibilityNodeInfo(View paramView, AccessibilityNodeInfoCompat paramAccessibilityNodeInfoCompat)
  {
    super.onInitializeAccessibilityNodeInfo(paramView, paramAccessibilityNodeInfoCompat);
    if (a.a.getLayoutManager() != null) {
      a.a.getLayoutManager().a(paramView, paramAccessibilityNodeInfoCompat);
    }
  }
  
  public final boolean performAccessibilityAction(View paramView, int paramInt, Bundle paramBundle)
  {
    boolean bool = false;
    if (super.performAccessibilityAction(paramView, paramInt, paramBundle)) {
      bool = true;
    }
    while (a.a.getLayoutManager() == null) {
      return bool;
    }
    paramView = a.a.getLayoutManager();
    paramBundle = q.a;
    paramView = q.m;
    return false;
  }
}

/* Location:
 * Qualified Name:     ai.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */