import android.support.v7.widget.RecyclerView.a;
import android.support.v7.widget.RecyclerView.b;
import android.widget.Filter;
import android.widget.Filterable;
import com.snapchat.android.app.feature.messaging.feed.ui.fragment.FeedAdapter;
import java.util.List;

public final class vg
  extends FeedAdapter
  implements Filterable, bfe.a<ut>
{
  private final List<ut> d;
  private final vg.a e;
  private final azo f;
  private vc g;
  
  public vg(List<ut> paramList, vg.a parama, azo paramazo)
  {
    super(paramList);
    d = paramList;
    e = parama;
    f = paramazo;
  }
  
  public final void a(List<ut> paramList)
  {
    if (paramList == null) {}
    for (c = d;; c = paramList)
    {
      e.a(paramList);
      a.b();
      return;
    }
  }
  
  public final void a(ux paramux, int paramInt)
  {
    paramux.b(true);
    paramux.a((ut)c.get(paramInt));
  }
  
  public final Filter getFilter()
  {
    if (g == null) {
      g = new vc(c, f, this);
    }
    return g;
  }
  
  public static abstract interface a
  {
    public abstract void a(List<ut> paramList);
  }
}

/* Location:
 * Qualified Name:     vg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */