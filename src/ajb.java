import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

public abstract class ajb<T>
  implements ajf
{
  protected final axn a;
  private final alw b;
  @bxp
  private final Map<String, Set<ajf.a>> c = new ConcurrentHashMap();
  
  protected ajb(@chc alw paramalw, @chc axn paramaxn)
  {
    b = ((alw)co.a(paramalw));
    a = ((axn)co.a(paramaxn));
  }
  
  @cbr
  protected final void a(@chc String paramString, @chc ajf.a parama)
  {
    synchronized (c)
    {
      if (c.containsKey(paramString))
      {
        ((Set)c.get(paramString)).add(parama);
        return;
      }
      c.put(paramString, new HashSet());
      ((Set)c.get(paramString)).add(parama);
      parama = new aly.a();
      e = paramString;
      d = paramString;
      h = new String[] { "CAMERA" };
      paramString = parama.a();
      parama = new aiv(a, this);
      b.a(paramString, parama);
      return;
    }
  }
  
  @cbr
  public void a(@chc String paramString, boolean paramBoolean)
  {
    for (;;)
    {
      ajf.a locala;
      synchronized (c)
      {
        paramString = (Set)c.remove(paramString);
        if (paramString == null) {
          return;
        }
        paramString = paramString.iterator();
        if (!paramString.hasNext()) {
          break;
        }
        locala = (ajf.a)paramString.next();
        if (paramBoolean) {
          locala.a();
        }
      }
      locala.b();
    }
  }
}

/* Location:
 * Qualified Name:     ajb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */