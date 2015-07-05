import android.os.Bundle;
import android.support.v4.view.AccessibilityDelegateCompat;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.AccessibilityNodeInfoImpl;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.CollectionInfoCompat;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.h;
import android.support.v7.widget.RecyclerView.l;
import android.support.v7.widget.RecyclerView.p;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;

public final class ai
  extends AccessibilityDelegateCompat
{
  final RecyclerView a;
  public final AccessibilityDelegateCompat b = new AccessibilityDelegateCompat()
  {
    public final void onInitializeAccessibilityNodeInfo(View paramAnonymousView, AccessibilityNodeInfoCompat paramAnonymousAccessibilityNodeInfoCompat)
    {
      super.onInitializeAccessibilityNodeInfo(paramAnonymousView, paramAnonymousAccessibilityNodeInfoCompat);
      if (a.getLayoutManager() != null) {
        a.getLayoutManager().a(paramAnonymousView, paramAnonymousAccessibilityNodeInfoCompat);
      }
    }
    
    public final boolean performAccessibilityAction(View paramAnonymousView, int paramAnonymousInt, Bundle paramAnonymousBundle)
    {
      boolean bool = false;
      if (super.performAccessibilityAction(paramAnonymousView, paramAnonymousInt, paramAnonymousBundle)) {
        bool = true;
      }
      while (a.getLayoutManager() == null) {
        return bool;
      }
      paramAnonymousView = a.getLayoutManager();
      paramAnonymousBundle = q.a;
      paramAnonymousView = q.m;
      return false;
    }
  };
  
  public ai(RecyclerView paramRecyclerView)
  {
    a = paramRecyclerView;
  }
  
  public final void onInitializeAccessibilityEvent(View paramView, AccessibilityEvent paramAccessibilityEvent)
  {
    super.onInitializeAccessibilityEvent(paramView, paramAccessibilityEvent);
    paramAccessibilityEvent.setClassName(RecyclerView.class.getName());
    if ((paramView instanceof RecyclerView))
    {
      paramView = (RecyclerView)paramView;
      if (paramView.getLayoutManager() != null) {
        paramView.getLayoutManager().a(paramAccessibilityEvent);
      }
    }
  }
  
  public final void onInitializeAccessibilityNodeInfo(View paramView, AccessibilityNodeInfoCompat paramAccessibilityNodeInfoCompat)
  {
    super.onInitializeAccessibilityNodeInfo(paramView, paramAccessibilityNodeInfoCompat);
    paramAccessibilityNodeInfoCompat.setClassName(RecyclerView.class.getName());
    if (a.getLayoutManager() != null)
    {
      paramView = a.getLayoutManager();
      RecyclerView.l locall = q.a;
      RecyclerView.p localp = q.m;
      paramAccessibilityNodeInfoCompat.setClassName(RecyclerView.class.getName());
      if ((ViewCompat.canScrollVertically(q, -1)) || (ViewCompat.canScrollHorizontally(q, -1)))
      {
        paramAccessibilityNodeInfoCompat.addAction(8192);
        paramAccessibilityNodeInfoCompat.setScrollable(true);
      }
      if ((ViewCompat.canScrollVertically(q, 1)) || (ViewCompat.canScrollHorizontally(q, 1)))
      {
        paramAccessibilityNodeInfoCompat.addAction(4096);
        paramAccessibilityNodeInfoCompat.setScrollable(true);
      }
      int i = paramView.a(locall, localp);
      int j = paramView.b(locall, localp);
      paramView = new AccessibilityNodeInfoCompat.CollectionInfoCompat(AccessibilityNodeInfoCompat.access$000().obtainCollectionInfo(i, j, false, 0));
      AccessibilityNodeInfoCompat.IMPL.setCollectionInfo(mInfo, mInfo);
    }
  }
  
  public final boolean performAccessibilityAction(View paramView, int paramInt, Bundle paramBundle)
  {
    boolean bool2 = false;
    boolean bool1;
    if (super.performAccessibilityAction(paramView, paramInt, paramBundle)) {
      bool1 = true;
    }
    int i;
    do
    {
      do
      {
        do
        {
          return bool1;
          bool1 = bool2;
        } while (a.getLayoutManager() == null);
        paramView = a.getLayoutManager();
        paramBundle = q.a;
        paramBundle = q.m;
        bool1 = bool2;
      } while (q == null);
      switch (paramInt)
      {
      default: 
        paramInt = 0;
        i = 0;
        if (i != 0) {
          break label114;
        }
        bool1 = bool2;
      }
    } while (paramInt == 0);
    label114:
    q.scrollBy(paramInt, i);
    return true;
    if (ViewCompat.canScrollVertically(q, -1)) {}
    for (paramInt = -(paramView.n() - paramView.p() - paramView.r());; paramInt = 0)
    {
      i = paramInt;
      int j;
      if (ViewCompat.canScrollHorizontally(q, -1))
      {
        j = -(paramView.m() - paramView.o() - paramView.q());
        i = paramInt;
        paramInt = j;
        break;
        if (!ViewCompat.canScrollVertically(q, 1)) {
          break label271;
        }
      }
      label271:
      for (paramInt = paramView.n() - paramView.p() - paramView.r();; paramInt = 0)
      {
        i = paramInt;
        if (ViewCompat.canScrollHorizontally(q, 1))
        {
          j = paramView.m();
          int k = paramView.o();
          int m = paramView.q();
          i = paramInt;
          paramInt = j - k - m;
          break;
        }
        paramInt = 0;
        break;
      }
    }
  }
}

/* Location:
 * Qualified Name:     ai
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */