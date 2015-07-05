import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

public abstract class aif<T>
  implements aij
{
  protected final awp a;
  private final alb b;
  @bwo
  private final Map<String, Set<aij.a>> c = new ConcurrentHashMap();
  
  protected aif(@cgb alb paramalb, @cgb awp paramawp)
  {
    b = ((alb)ck.a(paramalb));
    a = ((awp)ck.a(paramawp));
  }
  
  @caq
  protected final void a(@cgb String paramString, @cgb aij.a parama)
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
      parama = new alc.a();
      e = paramString;
      d = paramString;
      h = new String[] { "CAMERA" };
      paramString = parama.a();
      parama = new ahz(a, this);
      b.a(paramString, parama);
      return;
    }
  }
  
  @caq
  public void a(@cgb String paramString, boolean paramBoolean)
  {
    for (;;)
    {
      aij.a locala;
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
        locala = (aij.a)paramString.next();
        if (paramBoolean) {
          locala.a();
        }
      }
      locala.b();
    }
  }
}

/* Location:
 * Qualified Name:     aif
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */