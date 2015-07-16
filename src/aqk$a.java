import java.util.Iterator;

final class aqk$a
  implements bn
{
  private aqk$a(aqk paramaqk) {}
  
  public final void a()
  {
    if ((a.d) && (a.a.b()) && (a.b.b()))
    {
      Iterator localIterator = a.c.iterator();
      while (localIterator.hasNext()) {
        ((aqk.b)localIterator.next()).a();
      }
    }
  }
  
  public final void a(bj parambj)
  {
    if (a.d)
    {
      parambj = a.c.iterator();
      while (parambj.hasNext()) {
        ((aqk.b)parambj.next()).a(a);
      }
    }
  }
}

/* Location:
 * Qualified Name:     aqk.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */