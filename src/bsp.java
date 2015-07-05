import android.content.Context;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class bsp
{
  List a;
  private Context b;
  
  public bsp(Context paramContext)
  {
    b = paramContext;
    a = new ArrayList();
  }
  
  public final void a()
  {
    Object localObject = new ArrayList();
    Iterator localIterator = a.iterator();
    while (localIterator.hasNext()) {
      ((ArrayList)localObject).add(new Thread((bss)localIterator.next()));
    }
    localIterator = ((ArrayList)localObject).iterator();
    while (localIterator.hasNext()) {
      ((Thread)localIterator.next()).start();
    }
    localObject = ((ArrayList)localObject).iterator();
    while (((Iterator)localObject).hasNext()) {
      ((Thread)((Iterator)localObject).next()).join();
    }
  }
  
  public final void a(brk parambrk, bsj parambsj, String paramString, bqu parambqu)
  {
    try
    {
      if (parambrk.b() > 0)
      {
        brk localbrk = parambrk.a(b);
        parambsj = parambsj.a(localbrk, parambrk, paramString, b, parambqu, parambqu.i());
        parambrk = new bsr(localbrk, parambrk, parambqu, new bsl(paramString, b).a(), parambsj);
        a.add(parambrk);
      }
      return;
    }
    finally
    {
      parambrk = finally;
      throw parambrk;
    }
  }
}

/* Location:
 * Qualified Name:     bsp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */