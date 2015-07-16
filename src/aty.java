import java.util.List;
import java.util.UUID;

public final class aty
{
  private static final String TAG = "ConversationMessageUtils";
  
  public static <T extends bil> T a(@chc bji.a parama, String paramString, List<String> paramList, bjy parambjy)
  {
    paramString = new bjb().a(paramString).a(paramList).b(parambjy).b(ayg.a(paramString, (String)paramList.get(0)));
    parama = (bil)b(parama);
    parama.a(paramString);
    return parama;
  }
  
  @r
  public static Class<? extends bji> a(@chc bji.a parama)
  {
    switch (parama)
    {
    default: 
      return null;
    case ???: 
      return bjr.class;
    case ???: 
      return bjk.class;
    case ???: 
      return bju.class;
    case ???: 
      return bif.class;
    case ???: 
      return bjt.class;
    case ???: 
      return bis.class;
    case ???: 
      return bjs.class;
    case ???: 
      return bim.class;
    case ???: 
      return bij.class;
    case ???: 
      return bik.class;
    case ???: 
      return biq.class;
    case ???: 
      return bkc.class;
    case ???: 
      return bjp.class;
    case ???: 
      return bjq.class;
    case ???: 
      return bia.class;
    }
    return bib.class;
  }
  
  private static <T> T a(@chc Class<T> paramClass)
  {
    try
    {
      paramClass = paramClass.newInstance();
      if ((paramClass instanceof bji)) {
        ((bji)paramClass).f(UUID.randomUUID().toString());
      }
      return paramClass;
    }
    catch (IllegalAccessException paramClass)
    {
      return null;
    }
    catch (InstantiationException paramClass)
    {
      for (;;) {}
    }
  }
  
  public static boolean a(@chc bji parambji)
  {
    switch (parambji.j())
    {
    default: 
      return true;
    }
    return false;
  }
  
  public static <T extends bji> T b(@chc bji.a parama)
  {
    Class localClass = a(parama);
    if (localClass != null) {
      return ((bji)a(localClass)).e(parama.toString());
    }
    return null;
  }
  
  public static boolean b(@chc bji parambji)
  {
    switch (parambji.j())
    {
    default: 
      return false;
    }
    return true;
  }
}

/* Location:
 * Qualified Name:     aty
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */