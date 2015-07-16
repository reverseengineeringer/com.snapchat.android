import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;

public final class bqy
  implements bqz
{
  public final int a(RecyclerView paramRecyclerView)
  {
    paramRecyclerView = paramRecyclerView.getLayoutManager();
    if ((paramRecyclerView instanceof LinearLayoutManager)) {
      return i;
    }
    throw new IllegalStateException("StickyListHeadersDecoration can only be used with a LinearLayoutManager.");
  }
}

/* Location:
 * Qualified Name:     bqy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */