import java.util.List;
import java.util.UUID;

public final class asz
{
  public static <T extends bhl> T a(@cgb bii.a parama, String paramString, List<String> paramList, bix parambix)
  {
    paramString = new bib().a(paramString).a(paramList).b(parambix).b(axi.a(paramString, (String)paramList.get(0)));
    parama = (bhl)b(parama);
    parama.a(paramString);
    return parama;
  }
  
  @r
  public static Class<? extends bii> a(@cgb bii.a parama)
  {
    switch (parama)
    {
    default: 
      return null;
    case ???: 
      return bir.class;
    case ???: 
      return bik.class;
    case ???: 
      return bit.class;
    case ???: 
      return bhf.class;
    case ???: 
      return bhs.class;
    case ???: 
      return bis.class;
    case ???: 
      return bhm.class;
    case ???: 
      return bhj.class;
    case ???: 
      return bhk.class;
    case ???: 
      return bhq.class;
    case ???: 
      return bjb.class;
    case ???: 
      return bip.class;
    case ???: 
      return biq.class;
    case ???: 
      return bha.class;
    }
    return bhb.class;
  }
  
  private static <T> T a(@cgb Class<T> paramClass)
  {
    try
    {
      paramClass = paramClass.newInstance();
      if ((paramClass instanceof bii)) {
        ((bii)paramClass).f(UUID.randomUUID().toString());
      }
      return paramClass;
    }
    catch (InstantiationException paramClass)
    {
      paramClass.printStackTrace();
      return null;
    }
    catch (IllegalAccessException paramClass)
    {
      for (;;)
      {
        paramClass.printStackTrace();
      }
    }
  }
  
  public static boolean a(@cgb bii parambii)
  {
    switch (parambii.j())
    {
    default: 
      return true;
    }
    return false;
  }
  
  public static <T extends bii> T b(@cgb bii.a parama)
  {
    Class localClass = a(parama);
    if (localClass != null) {
      return ((bii)a(localClass)).e(parama.toString());
    }
    return null;
  }
  
  public static boolean b(@cgb bii parambii)
  {
    switch (parambii.j())
    {
    default: 
      return false;
    }
    return true;
  }
}

/* Location:
 * Qualified Name:     asz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */