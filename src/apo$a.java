import java.util.Iterator;
import java.util.List;

public final class apo$a
  implements Runnable
{
  private final List<avx> b;
  
  apo$a(List<avx> paramList)
  {
    List localList;
    b = localList;
  }
  
  public final void run()
  {
    Iterator localIterator = b.iterator();
    while (localIterator.hasNext())
    {
      avx localavx = (avx)localIterator.next();
      a.a.a(a.d, localavx);
    }
  }
}

/* Location:
 * Qualified Name:     apo.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */