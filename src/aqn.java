import android.widget.AbsListView;
import android.widget.AbsListView.OnScrollListener;
import java.util.Iterator;
import java.util.List;

public final class aqn
  implements AbsListView.OnScrollListener
{
  private final List<AbsListView.OnScrollListener> a;
  
  public aqn(List<AbsListView.OnScrollListener> paramList)
  {
    a = paramList;
  }
  
  public final void onScroll(AbsListView paramAbsListView, int paramInt1, int paramInt2, int paramInt3)
  {
    synchronized (a)
    {
      Iterator localIterator = a.iterator();
      if (localIterator.hasNext()) {
        ((AbsListView.OnScrollListener)localIterator.next()).onScroll(paramAbsListView, paramInt1, paramInt2, paramInt3);
      }
    }
  }
  
  public final void onScrollStateChanged(AbsListView paramAbsListView, int paramInt)
  {
    synchronized (a)
    {
      Iterator localIterator = a.iterator();
      if (localIterator.hasNext()) {
        ((AbsListView.OnScrollListener)localIterator.next()).onScrollStateChanged(paramAbsListView, paramInt);
      }
    }
  }
}

/* Location:
 * Qualified Name:     aqn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */