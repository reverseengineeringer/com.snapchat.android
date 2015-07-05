import com.snapchat.android.ui.SwipeViewState;
import com.snapchat.android.ui.swipefilters.FilterPageType;

public final class api
{
  public final arv a;
  public final SwipeViewState b;
  
  public api(arv paramarv, SwipeViewState paramSwipeViewState)
  {
    a = paramarv;
    b = paramSwipeViewState;
  }
  
  public final int a(int paramInt, boolean paramBoolean)
  {
    int m = a.b();
    if (m > 0)
    {
      int j;
      FilterPageType localFilterPageType;
      int i;
      if (paramBoolean)
      {
        j = 1;
        localFilterPageType = null;
        if (!b.m) {
          break label119;
        }
        localFilterPageType = a.b(b.a);
        i = paramInt;
      }
      for (;;)
      {
        int k = (i + m + j) % m;
        if ((a.b(k) == localFilterPageType) || (!a.a(k).f()))
        {
          i = k;
          if (k != paramInt) {}
        }
        else
        {
          return k;
          j = -1;
          break;
          label119:
          i = paramInt;
        }
      }
    }
    return paramInt;
  }
  
  public final boolean a(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      b.b = b.a;
      b.d = b.c;
    }
    label133:
    label136:
    for (;;)
    {
      return false;
      int i = b.a;
      int j = b.c;
      b.a = b.b;
      b.c = b.d;
      b.l = b.m;
      if (i != b.a)
      {
        i = 1;
        if (j == b.c) {
          break label133;
        }
      }
      for (j = 1;; j = 0)
      {
        if ((i == 0) && (j == 0)) {
          break label136;
        }
        return true;
        i = 0;
        break;
      }
    }
  }
}

/* Location:
 * Qualified Name:     api
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */