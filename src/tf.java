import com.google.gson.annotations.SerializedName;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.util.Map;
import java.util.TreeMap;

public abstract class tf<T, E>
{
  private final Class<T> mClazz;
  
  public tf(Class<T> paramClass)
  {
    mClazz = paramClass;
  }
  
  @cgc
  private static Object a(@cgb Object paramObject, @cgb Field paramField)
  {
    try
    {
      paramObject = paramField.get(paramObject);
      return paramObject;
    }
    catch (IllegalAccessException paramObject)
    {
      throw new RuntimeException((Throwable)paramObject);
    }
  }
  
  @cgb
  private Map<String, E> a(@cgb Object paramObject, @cgb Class paramClass)
  {
    Object localObject1 = paramClass.getSuperclass();
    int i;
    label33:
    Object localObject2;
    SerializedName localSerializedName;
    if (localObject1 == null)
    {
      localObject1 = new TreeMap();
      Field[] arrayOfField = paramClass.getDeclaredFields();
      int j = arrayOfField.length;
      i = 0;
      if (i >= j) {
        break label166;
      }
      paramClass = arrayOfField[i];
      if ((mClazz.isAssignableFrom(aud.b(paramClass.getType()))) && (!Modifier.isTransient(paramClass.getModifiers())) && (!paramClass.isSynthetic()))
      {
        paramClass.setAccessible(true);
        localObject2 = a(paramObject, paramClass);
        if (localObject2 != null)
        {
          localSerializedName = (SerializedName)paramClass.getAnnotation(SerializedName.class);
          if (localSerializedName == null) {
            break label158;
          }
        }
      }
    }
    label158:
    for (paramClass = localSerializedName.value();; paramClass = paramClass.getName())
    {
      ((Map)localObject1).put(paramClass, b(localObject2));
      i += 1;
      break label33;
      localObject1 = a(((Class)localObject1).cast(paramObject), (Class)localObject1);
      break;
    }
    label166:
    return (Map<String, E>)localObject1;
  }
  
  @cgb
  protected final Map<String, E> a(@cgb Object paramObject)
  {
    return a(paramObject, paramObject.getClass());
  }
  
  protected abstract E b(@cgb Object paramObject);
}

/* Location:
 * Qualified Name:     tf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */