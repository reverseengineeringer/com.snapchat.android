import java.util.HashMap;
import java.util.Map;
import java.util.Set;

public final class aln
{
  public final Object a = new Object();
  public final Map<String, Set<alb.a>> b = new HashMap();
  
  public final Set<alb.a> a(alc paramalc)
  {
    synchronized (a)
    {
      paramalc = (Set)b.remove(paramalc.a());
      return paramalc;
    }
  }
}

/* Location:
 * Qualified Name:     aln
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */