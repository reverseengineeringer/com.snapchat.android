package com.brightcove.player.management;

import com.brightcove.player.event.AbstractComponent;
import com.brightcove.player.event.Default;
import com.brightcove.player.event.Emits;
import com.brightcove.player.event.Event;
import com.brightcove.player.event.EventEmitter;
import com.brightcove.player.event.EventListener;
import com.brightcove.player.event.ListensFor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Emits(events={"version"})
@ListensFor(events={"registerPlugin"})
public class BrightcovePluginManager
  extends AbstractComponent
{
  private static final String CRASHLYTICS_LOG = "log";
  private static final String TAG = BrightcovePluginManager.class.getSimpleName();
  private static String commitIdentifier = "";
  private static String releaseIdentifier = "";
  private Class<?> crashlyticsClass;
  private Method crashlyticsLogMethod;
  private boolean isCrashlyticsAvailable;
  OnRegisterPluginListener onRegisterPluginListener;
  private List<String> pluginsInUse;
  
  public BrightcovePluginManager(EventEmitter paramEventEmitter)
  {
    super(paramEventEmitter, BrightcovePluginManager.class);
    loadPropertiesInfo();
    new StringBuilder("BrightcovePluginManager: git commit SHA: + ").append(commitIdentifier).append(", release: ").append(releaseIdentifier);
    pluginsInUse = new ArrayList();
    initializeListeners();
    checkForCrashlytics();
    generateCrashlyticsMethods();
    crashlyticsLog("Git Commit SHA: " + commitIdentifier);
    crashlyticsLog("Release Number: " + releaseIdentifier);
  }
  
  protected void checkForCrashlytics()
  {
    try
    {
      crashlyticsClass = Class.forName("com.crashlytics.android.Crashlytics");
      isCrashlyticsAvailable = true;
      return;
    }
    catch (ClassNotFoundException localClassNotFoundException)
    {
      isCrashlyticsAvailable = false;
    }
  }
  
  public void crashlyticsLog(String paramString)
  {
    if ((isCrashlyticsAvailable) && (crashlyticsLogMethod != null)) {}
    try
    {
      crashlyticsLogMethod.invoke(null, new Object[] { paramString });
      return;
    }
    catch (InvocationTargetException paramString) {}catch (IllegalAccessException paramString) {}catch (IllegalArgumentException paramString) {}
  }
  
  protected void generateCrashlyticsMethods()
  {
    if (isCrashlyticsAvailable) {}
    try
    {
      crashlyticsLogMethod = crashlyticsClass.getMethod("log", new Class[] { String.class });
      return;
    }
    catch (NoSuchMethodException localNoSuchMethodException) {}
  }
  
  public String getCommitIdentifier()
  {
    return commitIdentifier;
  }
  
  public List<String> getPluginsInUse()
  {
    return pluginsInUse;
  }
  
  public String getReleaseIdentifier()
  {
    return releaseIdentifier;
  }
  
  protected void initializeListeners()
  {
    onRegisterPluginListener = new OnRegisterPluginListener();
    addListener("registerPlugin", onRegisterPluginListener);
  }
  
  /* Error */
  protected void loadPropertiesInfo()
  {
    // Byte code:
    //   0: new 155	java/util/Properties
    //   3: dup
    //   4: invokespecial 156	java/util/Properties:<init>	()V
    //   7: astore 4
    //   9: aconst_null
    //   10: astore_3
    //   11: aconst_null
    //   12: astore_2
    //   13: ldc 2
    //   15: invokevirtual 160	java/lang/Class:getClassLoader	()Ljava/lang/ClassLoader;
    //   18: ldc -94
    //   20: invokevirtual 168	java/lang/ClassLoader:getResourceAsStream	(Ljava/lang/String;)Ljava/io/InputStream;
    //   23: astore_1
    //   24: aload_1
    //   25: astore_2
    //   26: aload_1
    //   27: astore_3
    //   28: aload 4
    //   30: aload_1
    //   31: invokevirtual 172	java/util/Properties:load	(Ljava/io/InputStream;)V
    //   34: aload_1
    //   35: astore_2
    //   36: aload_1
    //   37: astore_3
    //   38: aload 4
    //   40: ldc -82
    //   42: invokevirtual 178	java/util/Properties:getProperty	(Ljava/lang/String;)Ljava/lang/String;
    //   45: putstatic 45	com/brightcove/player/management/BrightcovePluginManager:commitIdentifier	Ljava/lang/String;
    //   48: aload_1
    //   49: astore_2
    //   50: aload_1
    //   51: astore_3
    //   52: aload 4
    //   54: ldc -76
    //   56: invokevirtual 178	java/util/Properties:getProperty	(Ljava/lang/String;)Ljava/lang/String;
    //   59: putstatic 47	com/brightcove/player/management/BrightcovePluginManager:releaseIdentifier	Ljava/lang/String;
    //   62: aload_1
    //   63: astore_2
    //   64: aload_1
    //   65: astore_3
    //   66: new 182	java/util/HashMap
    //   69: dup
    //   70: invokespecial 183	java/util/HashMap:<init>	()V
    //   73: astore 4
    //   75: aload_1
    //   76: astore_2
    //   77: aload_1
    //   78: astore_3
    //   79: aload 4
    //   81: ldc -76
    //   83: getstatic 47	com/brightcove/player/management/BrightcovePluginManager:releaseIdentifier	Ljava/lang/String;
    //   86: invokeinterface 189 3 0
    //   91: pop
    //   92: aload_1
    //   93: astore_2
    //   94: aload_1
    //   95: astore_3
    //   96: aload_0
    //   97: invokevirtual 193	com/brightcove/player/management/BrightcovePluginManager:getEventEmitter	()Lcom/brightcove/player/event/EventEmitter;
    //   100: ldc -62
    //   102: aload 4
    //   104: invokeinterface 200 3 0
    //   109: aload_1
    //   110: ifnull +7 -> 117
    //   113: aload_1
    //   114: invokevirtual 205	java/io/InputStream:close	()V
    //   117: return
    //   118: astore_1
    //   119: aload_2
    //   120: ifnull -3 -> 117
    //   123: aload_2
    //   124: invokevirtual 205	java/io/InputStream:close	()V
    //   127: return
    //   128: astore_1
    //   129: return
    //   130: astore_1
    //   131: aload_3
    //   132: ifnull -15 -> 117
    //   135: aload_3
    //   136: invokevirtual 205	java/io/InputStream:close	()V
    //   139: return
    //   140: astore_1
    //   141: return
    //   142: astore_1
    //   143: aconst_null
    //   144: astore_2
    //   145: aload_2
    //   146: ifnull +7 -> 153
    //   149: aload_2
    //   150: invokevirtual 205	java/io/InputStream:close	()V
    //   153: aload_1
    //   154: athrow
    //   155: astore_1
    //   156: return
    //   157: astore_2
    //   158: goto -5 -> 153
    //   161: astore_3
    //   162: aload_1
    //   163: astore_2
    //   164: aload_3
    //   165: astore_1
    //   166: goto -21 -> 145
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	169	0	this	BrightcovePluginManager
    //   23	91	1	localInputStream	java.io.InputStream
    //   118	1	1	localIOException1	java.io.IOException
    //   128	1	1	localIOException2	java.io.IOException
    //   130	1	1	localNullPointerException	NullPointerException
    //   140	1	1	localIOException3	java.io.IOException
    //   142	12	1	localObject1	Object
    //   155	8	1	localIOException4	java.io.IOException
    //   165	1	1	localObject2	Object
    //   12	138	2	localObject3	Object
    //   157	1	2	localIOException5	java.io.IOException
    //   163	1	2	localObject4	Object
    //   10	126	3	localObject5	Object
    //   161	4	3	localObject6	Object
    //   7	96	4	localObject7	Object
    // Exception table:
    //   from	to	target	type
    //   13	24	118	java/io/IOException
    //   28	34	118	java/io/IOException
    //   38	48	118	java/io/IOException
    //   52	62	118	java/io/IOException
    //   66	75	118	java/io/IOException
    //   79	92	118	java/io/IOException
    //   96	109	118	java/io/IOException
    //   123	127	128	java/io/IOException
    //   13	24	130	java/lang/NullPointerException
    //   28	34	130	java/lang/NullPointerException
    //   38	48	130	java/lang/NullPointerException
    //   52	62	130	java/lang/NullPointerException
    //   66	75	130	java/lang/NullPointerException
    //   79	92	130	java/lang/NullPointerException
    //   96	109	130	java/lang/NullPointerException
    //   135	139	140	java/io/IOException
    //   13	24	142	finally
    //   113	117	155	java/io/IOException
    //   149	153	157	java/io/IOException
    //   28	34	161	finally
    //   38	48	161	finally
    //   52	62	161	finally
    //   66	75	161	finally
    //   79	92	161	finally
    //   96	109	161	finally
  }
  
  public class OnRegisterPluginListener
    implements EventListener
  {
    protected OnRegisterPluginListener() {}
    
    @Default
    public void processEvent(Event paramEvent)
    {
      if (properties.containsKey("pluginName"))
      {
        paramEvent = (String)properties.get("pluginName");
        if (!pluginsInUse.contains(paramEvent)) {
          pluginsInUse.add(paramEvent);
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.brightcove.player.management.BrightcovePluginManager
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */