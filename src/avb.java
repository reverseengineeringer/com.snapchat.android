import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

public final class avb
{
  private static final Map<Class<?>, Class<?>> PRIMITIVE_TYPE_MAP;
  private static final Set<Class<?>> WRAPPER_TYPES = new HashSet(PRIMITIVE_TYPE_MAP.values());
  
  static
  {
    HashMap localHashMap = new HashMap(9);
    PRIMITIVE_TYPE_MAP = localHashMap;
    localHashMap.put(Integer.TYPE, Integer.class);
    PRIMITIVE_TYPE_MAP.put(Long.TYPE, Long.class);
    PRIMITIVE_TYPE_MAP.put(Boolean.TYPE, Boolean.class);
    PRIMITIVE_TYPE_MAP.put(Byte.TYPE, Byte.class);
    PRIMITIVE_TYPE_MAP.put(Character.TYPE, Character.class);
    PRIMITIVE_TYPE_MAP.put(Double.TYPE, Double.class);
    PRIMITIVE_TYPE_MAP.put(Float.TYPE, Float.class);
    PRIMITIVE_TYPE_MAP.put(Short.TYPE, Short.class);
    PRIMITIVE_TYPE_MAP.put(Void.TYPE, Void.class);
  }
  
  public static int a(Integer paramInteger)
  {
    if (paramInteger == null) {
      return 0;
    }
    return paramInteger.intValue();
  }
  
  public static long a(Long paramLong)
  {
    if (paramLong == null) {
      return 0L;
    }
    return paramLong.longValue();
  }
  
  public static boolean a(Boolean paramBoolean)
  {
    return (paramBoolean != null) && (paramBoolean.booleanValue());
  }
  
  public static boolean a(Class paramClass)
  {
    return WRAPPER_TYPES.contains(paramClass);
  }
  
  public static <T> Class<T> b(Class<T> paramClass)
  {
    Class localClass = (Class)PRIMITIVE_TYPE_MAP.get(paramClass);
    if (localClass == null) {
      return paramClass;
    }
    return localClass;
  }
}

/* Location:
 * Qualified Name:     avb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */