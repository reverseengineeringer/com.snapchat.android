import com.google.android.gms.internal.zzhx;
import java.lang.annotation.Annotation;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.lang.reflect.Field;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

@Deprecated
public abstract class bz
{
  public final void a(Map<String, String> paramMap)
  {
    Object localObject1 = new HashMap();
    Object localObject2 = getClass().getFields();
    int j = localObject2.length;
    int i = 0;
    Object localObject3;
    while (i < j)
    {
      localObject3 = localObject2[i];
      bz.b localb = (bz.b)((Field)localObject3).getAnnotation(bz.b.class);
      if (localb != null) {
        ((Map)localObject1).put(localb.a(), localObject3);
      }
      i += 1;
    }
    if (((Map)localObject1).isEmpty()) {
      zzhx.zzac("No server options fields detected. To suppress this message either add a field with the @Parameter annotation, or override the load() method.");
    }
    paramMap = paramMap.entrySet().iterator();
    while (paramMap.hasNext())
    {
      localObject2 = (Map.Entry)paramMap.next();
      localObject3 = (Field)((Map)localObject1).remove(((Map.Entry)localObject2).getKey());
      if (localObject3 != null) {
        try
        {
          ((Field)localObject3).set(this, ((Map.Entry)localObject2).getValue());
        }
        catch (IllegalAccessException localIllegalAccessException)
        {
          zzhx.zzac("Server option \"" + (String)((Map.Entry)localObject2).getKey() + "\" could not be set: Illegal Access");
        }
        catch (IllegalArgumentException localIllegalArgumentException)
        {
          zzhx.zzac("Server option \"" + (String)((Map.Entry)localObject2).getKey() + "\" could not be set: Bad Type");
        }
      } else {
        zzhx.zzY("Unexpected server option: " + (String)((Map.Entry)localObject2).getKey() + " = \"" + (String)((Map.Entry)localObject2).getValue() + "\"");
      }
    }
    paramMap = new StringBuilder();
    localObject1 = ((Map)localObject1).values().iterator();
    while (((Iterator)localObject1).hasNext())
    {
      localObject2 = (Field)((Iterator)localObject1).next();
      if (((bz.b)((Field)localObject2).getAnnotation(bz.b.class)).b())
      {
        zzhx.zzac("Required server option missing: " + ((bz.b)((Field)localObject2).getAnnotation(bz.b.class)).a());
        if (paramMap.length() > 0) {
          paramMap.append(", ");
        }
        paramMap.append(((bz.b)((Field)localObject2).getAnnotation(bz.b.class)).a());
      }
    }
    if (paramMap.length() > 0) {
      throw new bz.a("Required server option(s) missing: " + paramMap.toString());
    }
  }
  
  public static final class a
    extends Exception
  {
    public a(String paramString)
    {
      super();
    }
  }
  
  @Retention(RetentionPolicy.RUNTIME)
  @Target({java.lang.annotation.ElementType.FIELD})
  public static @interface b
  {
    String a();
    
    boolean b() default true;
  }
}

/* Location:
 * Qualified Name:     bz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */