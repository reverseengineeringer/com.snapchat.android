import android.graphics.Typeface;
import java.util.HashMap;
import java.util.Map;

public final class ajh
  extends ajb<Typeface>
{
  private Map<String, Typeface> b;
  
  public ajh()
  {
    this(axo.FONT_CACHE, alw.a(), new HashMap());
  }
  
  private ajh(axn paramaxn, alw paramalw, Map<String, Typeface> paramMap)
  {
    super(paramalw, paramaxn);
    b = paramMap;
  }
  
  private boolean b(@chc String paramString)
  {
    Object localObject = a.b(paramString);
    if (localObject == null)
    {
      a.c(paramString);
      return false;
    }
    try
    {
      localObject = Typeface.createFromFile((String)localObject);
      b.put(paramString, localObject);
      return true;
    }
    catch (RuntimeException localRuntimeException)
    {
      new StringBuilder("Can not load font ").append(localRuntimeException);
      a.c(paramString);
      b.remove(paramString);
    }
    return false;
  }
  
  public final void a(@chc String paramString, boolean paramBoolean)
  {
    boolean bool = paramBoolean;
    if (paramBoolean) {
      bool = b(paramString);
    }
    super.a(paramString, bool);
  }
  
  @cbr
  public final void b(@chc String paramString, @chc ajf.a parama)
  {
    if ((b.containsKey(paramString)) && (b.get(paramString) != null))
    {
      parama.a();
      return;
    }
    if ((a.d(paramString)) && (a.b(paramString) != null))
    {
      if (a.b(paramString) == null)
      {
        a.c(paramString);
        a(paramString, parama);
        return;
      }
      if (b(paramString))
      {
        parama.a();
        return;
      }
      parama.b();
      return;
    }
    a(paramString, parama);
  }
}

/* Location:
 * Qualified Name:     ajh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */