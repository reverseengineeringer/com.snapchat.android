import android.widget.AbsListView;
import android.widget.AbsListView.OnScrollListener;

public final class ari
  implements AbsListView.OnScrollListener
{
  private final bbb a;
  private final String b;
  
  public ari(bbb parambbb, String paramString)
  {
    a = parambbb;
    b = paramString;
  }
  
  public final void onScroll(AbsListView paramAbsListView, int paramInt1, int paramInt2, int paramInt3) {}
  
  public final void onScrollStateChanged(AbsListView paramAbsListView, int paramInt)
  {
    if (paramInt == 0)
    {
      a.b(new String[] { b, "VERTICAL" });
      return;
    }
    a.mDeferPause = true;
  }
}

/* Location:
 * Qualified Name:     ari
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */