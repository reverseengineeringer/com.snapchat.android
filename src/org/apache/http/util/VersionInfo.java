package org.apache.http.util;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Map<**>;

public class VersionInfo
{
  public static final String PROPERTY_MODULE = "info.module";
  public static final String PROPERTY_RELEASE = "info.release";
  public static final String PROPERTY_TIMESTAMP = "info.timestamp";
  public static final String UNAVAILABLE = "UNAVAILABLE";
  public static final String VERSION_PROPERTY_FILE = "version.properties";
  private final String infoClassloader;
  private final String infoModule;
  private final String infoPackage;
  private final String infoRelease;
  private final String infoTimestamp;
  
  protected VersionInfo(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5)
  {
    Args.notNull(paramString1, "Package identifier");
    infoPackage = paramString1;
    if (paramString2 != null)
    {
      infoModule = paramString2;
      if (paramString3 == null) {
        break label63;
      }
      label29:
      infoRelease = paramString3;
      if (paramString4 == null) {
        break label69;
      }
      label39:
      infoTimestamp = paramString4;
      if (paramString5 == null) {
        break label76;
      }
    }
    for (;;)
    {
      infoClassloader = paramString5;
      return;
      paramString2 = "UNAVAILABLE";
      break;
      label63:
      paramString3 = "UNAVAILABLE";
      break label29;
      label69:
      paramString4 = "UNAVAILABLE";
      break label39;
      label76:
      paramString5 = "UNAVAILABLE";
    }
  }
  
  protected static VersionInfo fromMap(String paramString, Map<?, ?> paramMap, ClassLoader paramClassLoader)
  {
    Object localObject4 = null;
    Args.notNull(paramString, "Package identifier");
    Object localObject1;
    Object localObject2;
    label78:
    Object localObject3;
    if (paramMap != null)
    {
      localObject1 = (String)paramMap.get("info.module");
      if ((localObject1 != null) && (((String)localObject1).length() <= 0))
      {
        localObject1 = null;
        localObject2 = (String)paramMap.get("info.release");
        if ((localObject2 != null) && ((((String)localObject2).length() <= 0) || (((String)localObject2).equals("${pom.version}"))))
        {
          localObject2 = null;
          localObject3 = (String)paramMap.get("info.timestamp");
          if ((localObject3 != null) && ((((String)localObject3).length() <= 0) || (((String)localObject3).equals("${mvn.timestamp}"))))
          {
            Object localObject5 = null;
            paramMap = (Map<?, ?>)localObject2;
            localObject3 = localObject1;
            localObject2 = localObject5;
            localObject1 = paramMap;
            paramMap = (Map<?, ?>)localObject3;
          }
        }
      }
    }
    for (;;)
    {
      localObject3 = localObject4;
      if (paramClassLoader != null) {
        localObject3 = paramClassLoader.toString();
      }
      return new VersionInfo(paramString, paramMap, (String)localObject1, (String)localObject2, (String)localObject3);
      paramMap = (Map<?, ?>)localObject1;
      localObject1 = localObject2;
      localObject2 = localObject3;
      continue;
      break label78;
      break;
      localObject2 = null;
      localObject1 = null;
      paramMap = null;
    }
  }
  
  public static String getUserAgent(String paramString1, String paramString2, Class<?> paramClass)
  {
    paramString2 = loadVersionInfo(paramString2, paramClass.getClassLoader());
    if (paramString2 != null) {}
    for (paramString2 = paramString2.getRelease();; paramString2 = "UNAVAILABLE")
    {
      paramClass = System.getProperty("java.version");
      return paramString1 + "/" + paramString2 + " (Java 1.5 minimum; Java/" + paramClass + ")";
    }
  }
  
  /* Error */
  public static VersionInfo loadVersionInfo(String paramString, ClassLoader paramClassLoader)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_3
    //   2: aload_0
    //   3: ldc 31
    //   5: invokestatic 37	org/apache/http/util/Args:notNull	(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    //   8: pop
    //   9: aload_1
    //   10: ifnull +74 -> 84
    //   13: aload_1
    //   14: astore_2
    //   15: aload_2
    //   16: new 103	java/lang/StringBuilder
    //   19: dup
    //   20: invokespecial 104	java/lang/StringBuilder:<init>	()V
    //   23: aload_0
    //   24: bipush 46
    //   26: bipush 47
    //   28: invokevirtual 122	java/lang/String:replace	(CC)Ljava/lang/String;
    //   31: invokevirtual 108	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   34: ldc 124
    //   36: invokevirtual 108	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   39: invokevirtual 115	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   42: invokevirtual 130	java/lang/ClassLoader:getResourceAsStream	(Ljava/lang/String;)Ljava/io/InputStream;
    //   45: astore 4
    //   47: aload 4
    //   49: ifnull +59 -> 108
    //   52: new 132	java/util/Properties
    //   55: dup
    //   56: invokespecial 133	java/util/Properties:<init>	()V
    //   59: astore_1
    //   60: aload_1
    //   61: aload 4
    //   63: invokevirtual 137	java/util/Properties:load	(Ljava/io/InputStream;)V
    //   66: aload 4
    //   68: invokevirtual 142	java/io/InputStream:close	()V
    //   71: aload_1
    //   72: ifnull +10 -> 82
    //   75: aload_0
    //   76: aload_1
    //   77: aload_2
    //   78: invokestatic 144	org/apache/http/util/VersionInfo:fromMap	(Ljava/lang/String;Ljava/util/Map;Ljava/lang/ClassLoader;)Lorg/apache/http/util/VersionInfo;
    //   81: astore_3
    //   82: aload_3
    //   83: areturn
    //   84: invokestatic 150	java/lang/Thread:currentThread	()Ljava/lang/Thread;
    //   87: invokevirtual 153	java/lang/Thread:getContextClassLoader	()Ljava/lang/ClassLoader;
    //   90: astore_2
    //   91: goto -76 -> 15
    //   94: astore_1
    //   95: aload 4
    //   97: invokevirtual 142	java/io/InputStream:close	()V
    //   100: aload_1
    //   101: athrow
    //   102: astore_1
    //   103: aconst_null
    //   104: astore_1
    //   105: goto -34 -> 71
    //   108: aconst_null
    //   109: astore_1
    //   110: goto -39 -> 71
    //   113: astore 4
    //   115: goto -44 -> 71
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	118	0	paramString	String
    //   0	118	1	paramClassLoader	ClassLoader
    //   14	77	2	localClassLoader	ClassLoader
    //   1	82	3	localVersionInfo	VersionInfo
    //   45	51	4	localInputStream	java.io.InputStream
    //   113	1	4	localIOException	java.io.IOException
    // Exception table:
    //   from	to	target	type
    //   52	66	94	finally
    //   15	47	102	java/io/IOException
    //   95	102	102	java/io/IOException
    //   66	71	113	java/io/IOException
  }
  
  public static VersionInfo[] loadVersionInfo(String[] paramArrayOfString, ClassLoader paramClassLoader)
  {
    Args.notNull(paramArrayOfString, "Package identifier array");
    ArrayList localArrayList = new ArrayList(paramArrayOfString.length);
    int j = paramArrayOfString.length;
    int i = 0;
    while (i < j)
    {
      VersionInfo localVersionInfo = loadVersionInfo(paramArrayOfString[i], paramClassLoader);
      if (localVersionInfo != null) {
        localArrayList.add(localVersionInfo);
      }
      i += 1;
    }
    return (VersionInfo[])localArrayList.toArray(new VersionInfo[localArrayList.size()]);
  }
  
  public final String getClassloader()
  {
    return infoClassloader;
  }
  
  public final String getModule()
  {
    return infoModule;
  }
  
  public final String getPackage()
  {
    return infoPackage;
  }
  
  public final String getRelease()
  {
    return infoRelease;
  }
  
  public final String getTimestamp()
  {
    return infoTimestamp;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder(infoPackage.length() + 20 + infoModule.length() + infoRelease.length() + infoTimestamp.length() + infoClassloader.length());
    localStringBuilder.append("VersionInfo(").append(infoPackage).append(':').append(infoModule);
    if (!"UNAVAILABLE".equals(infoRelease)) {
      localStringBuilder.append(':').append(infoRelease);
    }
    if (!"UNAVAILABLE".equals(infoTimestamp)) {
      localStringBuilder.append(':').append(infoTimestamp);
    }
    localStringBuilder.append(')');
    if (!"UNAVAILABLE".equals(infoClassloader)) {
      localStringBuilder.append('@').append(infoClassloader);
    }
    return localStringBuilder.toString();
  }
}

/* Location:
 * Qualified Name:     org.apache.http.util.VersionInfo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */