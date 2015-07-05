import java.util.LinkedHashSet;
import java.util.Set;

public final class bmo
{
  private final Set<bme> a = new LinkedHashSet();
  
  public final void a(bme parambme)
  {
    try
    {
      a.add(parambme);
      return;
    }
    finally
    {
      parambme = finally;
      throw parambme;
    }
  }
  
  public final void b(bme parambme)
  {
    try
    {
      a.remove(parambme);
      return;
    }
    finally
    {
      parambme = finally;
      throw parambme;
    }
  }
  
  public final boolean c(bme parambme)
  {
    try
    {
      boolean bool = a.contains(parambme);
      return bool;
    }
    finally
    {
      parambme = finally;
      throw parambme;
    }
  }
}

/* Location:
 * Qualified Name:     bmo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */