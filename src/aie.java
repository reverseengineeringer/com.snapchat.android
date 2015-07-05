import com.snapchat.android.Timber;
import java.util.ArrayList;
import java.util.List;

public final class aie
  extends aia
{
  public List<aiv> d = new ArrayList();
  public cgs e = new cgs();
  
  @caq
  public final List<aiv> c()
  {
    if (e.b(2).c(cgs.c()))
    {
      Timber.c("InMemoryGeofilterProvider", "Filters are expired(" + e + ")", new Object[0]);
      return new ArrayList();
    }
    return new ArrayList(d);
  }
  
  @caq
  public final void d()
  {
    d.clear();
  }
}

/* Location:
 * Qualified Name:     aie
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */