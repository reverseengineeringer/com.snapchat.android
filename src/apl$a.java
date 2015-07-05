import java.util.Iterator;

final class apl$a
  implements bn
{
  private apl$a(apl paramapl) {}
  
  public final void a()
  {
    if ((a.d) && (a.a.b()) && (a.b.b()))
    {
      Iterator localIterator = a.c.iterator();
      while (localIterator.hasNext()) {
        ((apl.b)localIterator.next()).a();
      }
    }
  }
  
  public final void a(bj parambj)
  {
    if (a.d)
    {
      parambj = a.c.iterator();
      while (parambj.hasNext()) {
        ((apl.b)parambj.next()).a(a);
      }
    }
  }
}

/* Location:
 * Qualified Name:     apl.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */