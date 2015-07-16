import android.content.Context;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class btq
{
  List a;
  private Context b;
  
  public btq(Context paramContext)
  {
    b = paramContext;
    a = new ArrayList();
  }
  
  public final void a()
  {
    Object localObject = new ArrayList();
    Iterator localIterator = a.iterator();
    while (localIterator.hasNext()) {
      ((ArrayList)localObject).add(new Thread((btt)localIterator.next()));
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
  
  public final void a(bsl parambsl, btk parambtk, String paramString, brv parambrv)
  {
    try
    {
      if (parambsl.b() > 0)
      {
        bsl localbsl = parambsl.a(b);
        parambtk = parambtk.a(localbsl, parambsl, paramString, b, parambrv, parambrv.i());
        parambsl = new bts(localbsl, parambsl, parambrv, new btm(paramString, b).a(), parambtk);
        a.add(parambsl);
      }
      return;
    }
    finally
    {
      parambsl = finally;
      throw parambsl;
    }
  }
}

/* Location:
 * Qualified Name:     btq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */