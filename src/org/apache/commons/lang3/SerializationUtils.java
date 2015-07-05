package org.apache.commons.lang3;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.io.ObjectStreamClass;
import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;

public class SerializationUtils
{
  /* Error */
  public static <T extends Serializable> T clone(T paramT)
  {
    // Byte code:
    //   0: aload_0
    //   1: ifnonnull +5 -> 6
    //   4: aconst_null
    //   5: areturn
    //   6: new 20	java/io/ByteArrayInputStream
    //   9: dup
    //   10: aload_0
    //   11: invokestatic 24	org/apache/commons/lang3/SerializationUtils:serialize	(Ljava/io/Serializable;)[B
    //   14: invokespecial 27	java/io/ByteArrayInputStream:<init>	([B)V
    //   17: astore_1
    //   18: new 6	org/apache/commons/lang3/SerializationUtils$ClassLoaderAwareObjectInputStream
    //   21: dup
    //   22: aload_1
    //   23: aload_0
    //   24: invokevirtual 31	java/lang/Object:getClass	()Ljava/lang/Class;
    //   27: invokevirtual 37	java/lang/Class:getClassLoader	()Ljava/lang/ClassLoader;
    //   30: invokespecial 40	org/apache/commons/lang3/SerializationUtils$ClassLoaderAwareObjectInputStream:<init>	(Ljava/io/InputStream;Ljava/lang/ClassLoader;)V
    //   33: astore_1
    //   34: aload_1
    //   35: astore_0
    //   36: aload_1
    //   37: invokevirtual 44	org/apache/commons/lang3/SerializationUtils$ClassLoaderAwareObjectInputStream:readObject	()Ljava/lang/Object;
    //   40: checkcast 46	java/io/Serializable
    //   43: astore_2
    //   44: aload_1
    //   45: invokevirtual 49	org/apache/commons/lang3/SerializationUtils$ClassLoaderAwareObjectInputStream:close	()V
    //   48: aload_2
    //   49: areturn
    //   50: astore_0
    //   51: new 51	org/apache/commons/lang3/SerializationException
    //   54: dup
    //   55: ldc 53
    //   57: aload_0
    //   58: invokespecial 56	org/apache/commons/lang3/SerializationException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   61: athrow
    //   62: astore_2
    //   63: aconst_null
    //   64: astore_0
    //   65: new 51	org/apache/commons/lang3/SerializationException
    //   68: dup
    //   69: ldc 58
    //   71: aload_2
    //   72: invokespecial 56	org/apache/commons/lang3/SerializationException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   75: athrow
    //   76: astore_2
    //   77: aload_0
    //   78: astore_1
    //   79: aload_2
    //   80: astore_0
    //   81: aload_1
    //   82: ifnull +7 -> 89
    //   85: aload_1
    //   86: invokevirtual 49	org/apache/commons/lang3/SerializationUtils$ClassLoaderAwareObjectInputStream:close	()V
    //   89: aload_0
    //   90: athrow
    //   91: astore_2
    //   92: aconst_null
    //   93: astore_0
    //   94: new 51	org/apache/commons/lang3/SerializationException
    //   97: dup
    //   98: ldc 60
    //   100: aload_2
    //   101: invokespecial 56	org/apache/commons/lang3/SerializationException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   104: athrow
    //   105: astore_0
    //   106: new 51	org/apache/commons/lang3/SerializationException
    //   109: dup
    //   110: ldc 53
    //   112: aload_0
    //   113: invokespecial 56	org/apache/commons/lang3/SerializationException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   116: athrow
    //   117: astore_0
    //   118: aconst_null
    //   119: astore_1
    //   120: goto -39 -> 81
    //   123: astore_2
    //   124: aload_1
    //   125: astore_0
    //   126: goto -32 -> 94
    //   129: astore_2
    //   130: aload_1
    //   131: astore_0
    //   132: goto -67 -> 65
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	135	0	paramT	T
    //   17	114	1	localObject1	Object
    //   43	6	2	localSerializable	Serializable
    //   62	10	2	localClassNotFoundException1	ClassNotFoundException
    //   76	4	2	localObject2	Object
    //   91	10	2	localIOException1	java.io.IOException
    //   123	1	2	localIOException2	java.io.IOException
    //   129	1	2	localClassNotFoundException2	ClassNotFoundException
    // Exception table:
    //   from	to	target	type
    //   44	48	50	java/io/IOException
    //   18	34	62	java/lang/ClassNotFoundException
    //   36	44	76	finally
    //   65	76	76	finally
    //   94	105	76	finally
    //   18	34	91	java/io/IOException
    //   85	89	105	java/io/IOException
    //   18	34	117	finally
    //   36	44	123	java/io/IOException
    //   36	44	129	java/lang/ClassNotFoundException
  }
  
  /* Error */
  public static <T> T deserialize(InputStream paramInputStream)
  {
    // Byte code:
    //   0: aload_0
    //   1: ifnonnull +13 -> 14
    //   4: new 68	java/lang/IllegalArgumentException
    //   7: dup
    //   8: ldc 70
    //   10: invokespecial 73	java/lang/IllegalArgumentException:<init>	(Ljava/lang/String;)V
    //   13: athrow
    //   14: aconst_null
    //   15: astore_2
    //   16: aconst_null
    //   17: astore_1
    //   18: aconst_null
    //   19: astore_3
    //   20: new 75	java/io/ObjectInputStream
    //   23: dup
    //   24: aload_0
    //   25: invokespecial 78	java/io/ObjectInputStream:<init>	(Ljava/io/InputStream;)V
    //   28: astore_0
    //   29: aload_0
    //   30: astore_1
    //   31: aload_0
    //   32: invokevirtual 79	java/io/ObjectInputStream:readObject	()Ljava/lang/Object;
    //   35: astore_2
    //   36: aload_0
    //   37: invokevirtual 80	java/io/ObjectInputStream:close	()V
    //   40: aload_2
    //   41: areturn
    //   42: astore_2
    //   43: aconst_null
    //   44: astore_0
    //   45: aload_0
    //   46: astore_1
    //   47: new 51	org/apache/commons/lang3/SerializationException
    //   50: dup
    //   51: aload_2
    //   52: invokespecial 83	org/apache/commons/lang3/SerializationException:<init>	(Ljava/lang/Throwable;)V
    //   55: athrow
    //   56: astore_0
    //   57: aload_1
    //   58: ifnull +7 -> 65
    //   61: aload_1
    //   62: invokevirtual 80	java/io/ObjectInputStream:close	()V
    //   65: aload_0
    //   66: athrow
    //   67: astore_0
    //   68: aload_3
    //   69: astore_1
    //   70: new 51	org/apache/commons/lang3/SerializationException
    //   73: dup
    //   74: aload_0
    //   75: invokespecial 83	org/apache/commons/lang3/SerializationException:<init>	(Ljava/lang/Throwable;)V
    //   78: athrow
    //   79: new 51	org/apache/commons/lang3/SerializationException
    //   82: dup
    //   83: aload_0
    //   84: invokespecial 83	org/apache/commons/lang3/SerializationException:<init>	(Ljava/lang/Throwable;)V
    //   87: athrow
    //   88: astore_0
    //   89: aload_2
    //   90: areturn
    //   91: astore_1
    //   92: goto -27 -> 65
    //   95: astore_2
    //   96: aload_0
    //   97: astore_1
    //   98: aload_2
    //   99: astore_0
    //   100: goto -21 -> 79
    //   103: astore_2
    //   104: aload_0
    //   105: astore_1
    //   106: aload_2
    //   107: astore_0
    //   108: goto -38 -> 70
    //   111: astore_2
    //   112: goto -67 -> 45
    //   115: astore_0
    //   116: goto -59 -> 57
    //   119: astore_0
    //   120: aload_2
    //   121: astore_1
    //   122: goto -43 -> 79
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	125	0	paramInputStream	InputStream
    //   17	53	1	localObject1	Object
    //   91	1	1	localIOException1	java.io.IOException
    //   97	25	1	localObject2	Object
    //   15	26	2	localObject3	Object
    //   42	48	2	localClassCastException1	ClassCastException
    //   95	4	2	localIOException2	java.io.IOException
    //   103	4	2	localClassNotFoundException	ClassNotFoundException
    //   111	10	2	localClassCastException2	ClassCastException
    //   19	50	3	localObject4	Object
    // Exception table:
    //   from	to	target	type
    //   20	29	42	java/lang/ClassCastException
    //   31	36	56	finally
    //   47	56	56	finally
    //   20	29	67	java/lang/ClassNotFoundException
    //   36	40	88	java/io/IOException
    //   61	65	91	java/io/IOException
    //   31	36	95	java/io/IOException
    //   31	36	103	java/lang/ClassNotFoundException
    //   31	36	111	java/lang/ClassCastException
    //   20	29	115	finally
    //   70	79	115	finally
    //   79	88	115	finally
    //   20	29	119	java/io/IOException
  }
  
  public static <T> T deserialize(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte == null) {
      throw new IllegalArgumentException("The byte[] must not be null");
    }
    return (T)deserialize(new ByteArrayInputStream(paramArrayOfByte));
  }
  
  public static <T extends Serializable> T roundtrip(T paramT)
  {
    return (Serializable)deserialize(serialize(paramT));
  }
  
  /* Error */
  public static void serialize(Serializable paramSerializable, java.io.OutputStream paramOutputStream)
  {
    // Byte code:
    //   0: aload_1
    //   1: ifnonnull +13 -> 14
    //   4: new 68	java/lang/IllegalArgumentException
    //   7: dup
    //   8: ldc 96
    //   10: invokespecial 73	java/lang/IllegalArgumentException:<init>	(Ljava/lang/String;)V
    //   13: athrow
    //   14: new 98	java/io/ObjectOutputStream
    //   17: dup
    //   18: aload_1
    //   19: invokespecial 101	java/io/ObjectOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   22: astore_2
    //   23: aload_2
    //   24: astore_1
    //   25: aload_2
    //   26: aload_0
    //   27: invokevirtual 105	java/io/ObjectOutputStream:writeObject	(Ljava/lang/Object;)V
    //   30: aload_2
    //   31: invokevirtual 106	java/io/ObjectOutputStream:close	()V
    //   34: return
    //   35: astore_0
    //   36: aconst_null
    //   37: astore_1
    //   38: new 51	org/apache/commons/lang3/SerializationException
    //   41: dup
    //   42: aload_0
    //   43: invokespecial 83	org/apache/commons/lang3/SerializationException:<init>	(Ljava/lang/Throwable;)V
    //   46: athrow
    //   47: astore_0
    //   48: aload_1
    //   49: ifnull +7 -> 56
    //   52: aload_1
    //   53: invokevirtual 106	java/io/ObjectOutputStream:close	()V
    //   56: aload_0
    //   57: athrow
    //   58: astore_0
    //   59: return
    //   60: astore_1
    //   61: goto -5 -> 56
    //   64: astore_0
    //   65: aconst_null
    //   66: astore_1
    //   67: goto -19 -> 48
    //   70: astore_0
    //   71: aload_2
    //   72: astore_1
    //   73: goto -35 -> 38
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	76	0	paramSerializable	Serializable
    //   0	76	1	paramOutputStream	java.io.OutputStream
    //   22	50	2	localObjectOutputStream	java.io.ObjectOutputStream
    // Exception table:
    //   from	to	target	type
    //   14	23	35	java/io/IOException
    //   25	30	47	finally
    //   38	47	47	finally
    //   30	34	58	java/io/IOException
    //   52	56	60	java/io/IOException
    //   14	23	64	finally
    //   25	30	70	java/io/IOException
  }
  
  public static byte[] serialize(Serializable paramSerializable)
  {
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream(512);
    serialize(paramSerializable, localByteArrayOutputStream);
    return localByteArrayOutputStream.toByteArray();
  }
  
  static class ClassLoaderAwareObjectInputStream
    extends ObjectInputStream
  {
    private static final Map<String, Class<?>> primitiveTypes = new HashMap();
    private final ClassLoader classLoader;
    
    public ClassLoaderAwareObjectInputStream(InputStream paramInputStream, ClassLoader paramClassLoader)
    {
      super();
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
}

/* Location:
 * Qualified Name:     org.apache.commons.lang3.SerializationUtils
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */