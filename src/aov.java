import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javax.validation.constraints.NotNull;

public final class aov
{
  public final bjh a;
  public boolean b = false;
  private final List<bjj> c;
  private final List<bjj> d = new ArrayList();
  
  public aov(@NotNull bjh parambjh, @NotNull List<bjj> paramList)
  {
    a = parambjh;
    c = paramList;
    b();
  }
  
  private void b()
  {
    Iterator localIterator = c.iterator();
    while (localIterator.hasNext())
    {
      bjj localbjj = (bjj)localIterator.next();
      if (aud.a(localbjj.b())) {
        d.add(localbjj);
      }
    }
  }
  
  public final List<bjj> a()
  {
    if (b) {
      return d;
    }
    return c;
  }
}

/* Location:
 * Qualified Name:     aov
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */