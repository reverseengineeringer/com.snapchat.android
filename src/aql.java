import android.widget.AbsListView;
import android.widget.AbsListView.OnScrollListener;

public final class aql
  implements AbsListView.OnScrollListener
{
  private final baa a;
  private final String b;
  
  public aql(baa parambaa, String paramString)
  {
    a = parambaa;
    b = paramString;
  }
  
  public final void onScroll(AbsListView paramAbsListView, int paramInt1, int paramInt2, int paramInt3) {}
  
  public final void onScrollStateChanged(AbsListView paramAbsListView, int paramInt)
  {
    if (paramInt == 0)
    {
      a.a(b, true);
      return;
    }
    a.mDeferPause = true;
  }
}

/* Location:
 * Qualified Name:     aql
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */