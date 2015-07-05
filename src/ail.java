import android.graphics.Typeface;
import com.snapchat.android.Timber;
import java.util.HashMap;
import java.util.Map;

public final class ail
  extends aif<Typeface>
{
  private Map<String, Typeface> b;
  
  public ail()
  {
    this(awq.FONT_CACHE, alb.a(), new HashMap());
  }
  
  private ail(awp paramawp, alb paramalb, Map<String, Typeface> paramMap)
  {
    super(paramalb, paramawp);
    b = paramMap;
  }
  
  private boolean b(@cgb String paramString)
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
      Timber.c("TypfaceResourceProvider", "Can not load font " + localRuntimeException, new Object[0]);
      a.c(paramString);
      b.remove(paramString);
    }
    return false;
  }
  
  public final void a(@cgb String paramString, boolean paramBoolean)
  {
    boolean bool = paramBoolean;
    if (paramBoolean) {
      bool = b(paramString);
    }
    super.a(paramString, bool);
  }
  
  @caq
  public final void b(@cgb String paramString, @cgb aij.a parama)
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
 * Qualified Name:     ail
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */