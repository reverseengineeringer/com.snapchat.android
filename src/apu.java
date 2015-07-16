import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javax.validation.constraints.NotNull;

public final class apu
{
  public final bki a;
  public boolean b = false;
  private final List<bkk> c;
  private final List<bkk> d = new ArrayList();
  
  public apu(@NotNull bki parambki, @NotNull List<bkk> paramList)
  {
    a = parambki;
    c = paramList;
    b();
  }
  
  private void b()
  {
    Iterator localIterator = c.iterator();
    while (localIterator.hasNext())
    {
      bkk localbkk = (bkk)localIterator.next();
      if (avb.a(localbkk.b())) {
        d.add(localbkk);
      }
    }
  }
  
  public final List<bkk> a()
  {
    if (b) {
      return d;
    }
    return c;
  }
}

/* Location:
 * Qualified Name:     apu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */