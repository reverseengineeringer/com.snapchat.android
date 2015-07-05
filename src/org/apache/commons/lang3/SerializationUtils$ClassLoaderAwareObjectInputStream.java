package org.apache.commons.lang3;

import java.io.InputStream;
import java.io.ObjectInputStream;
import java.io.ObjectStreamClass;
import java.util.HashMap;
import java.util.Map;

class SerializationUtils$ClassLoaderAwareObjectInputStream
  extends ObjectInputStream
{
  private static final Map<String, Class<?>> primitiveTypes = new HashMap();
  private final ClassLoader classLoader;
  
  public SerializationUtils$ClassLoaderAwareObjectInputStream(InputStream paramInputStream, ClassLoader paramClassLoader)
  {
    super(paramInputStream);
    classLoader = paramClassLoader;
    primitiveTypes.put("byte", Byte.TYPE);
    primitiveTypes.put("short", Short.TYPE);
    primitiveTypes.put("int", Integer.TYPE);
    primitiveTypes.put("long", Long.TYPE);
    primitiveTypes.put("float", Float.TYPE);
    primitiveTypes.put("double", Double.TYPE);
    primitiveTypes.put("boolean", Boolean.TYPE);
    primitiveTypes.put("char", Character.TYPE);
    primitiveTypes.put("void", Void.TYPE);
  }
  
  protected Class<?> resolveClass(ObjectStreamClass paramObjectStreamClass)
  {
    Object localObject = paramObjectStreamClass.getName();
    try
    {
      paramObjectStreamClass = Class.forName((String)localObject, false, classLoader);
      return paramObjectStreamClass;
    }
    catch (ClassNotFoundException paramObjectStreamClass)
    {
      do
      {
        try
        {
          paramObjectStreamClass = Class.forName((String)localObject, false, Thread.currentThread().getContextClassLoader());
          return paramObjectStreamClass;
        }
        catch (ClassNotFoundException localClassNotFoundException)
        {
          localObject = (Class)primitiveTypes.get(localObject);
          paramObjectStreamClass = (ObjectStreamClass)localObject;
        }
      } while (localObject != null);
      throw localClassNotFoundException;
    }
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.lang3.SerializationUtils.ClassLoaderAwareObjectInputStream
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */