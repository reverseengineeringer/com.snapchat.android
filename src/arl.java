import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.j;
import java.util.Iterator;
import java.util.List;

public final class arl
  extends RecyclerView.j
{
  private final List<RecyclerView.j> a;
  
  public arl(List<RecyclerView.j> paramList)
  {
    a = paramList;
  }
  
  public final void a(RecyclerView paramRecyclerView, int paramInt)
  {
    Iterator localIterator = a.iterator();
    while (localIterator.hasNext()) {
      ((RecyclerView.j)localIterator.next()).a(paramRecyclerView, paramInt);
    }
  }
  
  public final void a(RecyclerView paramRecyclerView, int paramInt1, int paramInt2)
  {
    Iterator localIterator = a.iterator();
    while (localIterator.hasNext()) {
      ((RecyclerView.j)localIterator.next()).a(paramRecyclerView, paramInt1, paramInt2);
    }
  }
}

/* Location:
 * Qualified Name:     arl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */