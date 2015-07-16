import android.support.v7.widget.RecyclerView.a;
import android.support.v7.widget.RecyclerView.b;
import android.widget.Filter;
import android.widget.Filterable;
import com.snapchat.android.app.feature.messaging.feed.ui.fragment.FeedAdapter;
import java.util.List;

public final class wc
  extends FeedAdapter
  implements Filterable, bge.a<vp>
{
  private final List<vp> e;
  private final wc.a f;
  private final ban g;
  private vy h;
  
  public wc(List<vp> paramList, wc.a parama, ban paramban)
  {
    super(paramList);
    e = paramList;
    f = parama;
    g = paramban;
  }
  
  public final void a(List<vp> paramList)
  {
    if (paramList == null) {}
    for (c = e;; c = paramList)
    {
      f.a(paramList);
      a.b();
      return;
    }
  }
  
  public final void a(vt paramvt, int paramInt)
  {
    paramvt.b(true);
    paramvt.a((vp)c.get(paramInt));
    if (d != null) {
      d.a(paramvt);
    }
  }
  
  public final Filter getFilter()
  {
    if (h == null) {
      h = new vy(c, g, this);
    }
    return h;
  }
  
  public static abstract interface a
  {
    public abstract void a(List<vp> paramList);
  }
}

/* Location:
 * Qualified Name:     wc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */