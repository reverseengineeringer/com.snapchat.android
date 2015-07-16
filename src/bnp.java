import java.util.LinkedHashSet;
import java.util.Set;

public final class bnp
{
  private final Set<bnf> a = new LinkedHashSet();
  
  public final void a(bnf parambnf)
  {
    try
    {
      a.add(parambnf);
      return;
    }
    finally
    {
      parambnf = finally;
      throw parambnf;
    }
  }
  
  public final void b(bnf parambnf)
  {
    try
    {
      a.remove(parambnf);
      return;
    }
    finally
    {
      parambnf = finally;
      throw parambnf;
    }
  }
  
  public final boolean c(bnf parambnf)
  {
    try
    {
      boolean bool = a.contains(parambnf);
      return bool;
    }
    finally
    {
      parambnf = finally;
      throw parambnf;
    }
  }
}

/* Location:
 * Qualified Name:     bnp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */