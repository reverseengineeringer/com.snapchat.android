import android.os.SystemClock;
import android.text.TextUtils;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonSyntaxException;
import java.lang.reflect.Type;
import javax.inject.Inject;
import javax.inject.Singleton;

@Singleton
public final class aum
{
  private static final String FROM_JSON = "fromJson";
  private static final String TAG = "GsonWrapper";
  private static final String TO_JSON = "toJson";
  private final bhk mClock = new bhk();
  private final bao mGracefulExceptionHandler;
  private final Gson mGson = new GsonBuilder().registerTypeAdapter(ays.class, new ayt().nullSafe()).registerTypeAdapter(azf.class, new azg()).registerTypeAdapter(cht.class, new ajo()).enableComplexMapKeySerialization().create();
  
  @Inject
  protected aum(bao parambao)
  {
    mGracefulExceptionHandler = parambao;
  }
  
  private static void a(String paramString1, String paramString2, long paramLong, String paramString3)
  {
    double d = SystemClock.elapsedRealtime() - paramLong;
    int i;
    if (TextUtils.isEmpty(paramString2))
    {
      i = 0;
      if (d != 0.0D) {
        break label35;
      }
    }
    for (;;)
    {
      return;
      i = paramString2.length();
      break;
      label35:
      d /= i;
    }
  }
  
  private void a(String paramString, Throwable paramThrowable)
  {
    paramString = new JsonSyntaxException("Error parsing Json: " + paramString, paramThrowable);
    mGracefulExceptionHandler.a(paramString);
  }
  
  @chd
  public final <T> T a(@chd String paramString, @chc Class<T> paramClass)
  {
    try
    {
      long l = SystemClock.elapsedRealtime();
      Object localObject = mGson.fromJson(paramString, paramClass);
      a("fromJson", paramString, l, paramClass.toString());
      return (T)localObject;
    }
    catch (JsonSyntaxException paramClass)
    {
      a(paramString, paramClass);
      return null;
    }
    catch (StackOverflowError paramClass)
    {
      for (;;) {}
    }
  }
  
  @chd
  public final <T> T a(@chd String paramString, @chc Type paramType)
  {
    try
    {
      long l = SystemClock.elapsedRealtime();
      Object localObject = mGson.fromJson(paramString, paramType);
      a("fromJson", paramString, l, paramType.toString());
      return (T)localObject;
    }
    catch (JsonSyntaxException paramType)
    {
      a(paramString, paramType);
      return null;
    }
    catch (StackOverflowError paramType)
    {
      for (;;) {}
    }
  }
  
  /* Error */
  @chc
  public final String a(@chd Object paramObject)
  {
    // Byte code:
    //   0: invokestatic 80	android/os/SystemClock:elapsedRealtime	()J
    //   3: lstore_2
    //   4: aload_0
    //   5: getfield 63	aum:mGson	Lcom/google/gson/Gson;
    //   8: aload_1
    //   9: invokevirtual 147	com/google/gson/Gson:toJson	(Ljava/lang/Object;)Ljava/lang/String;
    //   12: astore 4
    //   14: aload_1
    //   15: ifnonnull +18 -> 33
    //   18: ldc -107
    //   20: astore_1
    //   21: ldc 15
    //   23: aload 4
    //   25: lload_2
    //   26: aload_1
    //   27: invokestatic 131	aum:a	(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    //   30: aload 4
    //   32: areturn
    //   33: aload_1
    //   34: invokevirtual 153	java/lang/Object:getClass	()Ljava/lang/Class;
    //   37: invokevirtual 156	java/lang/Class:getSimpleName	()Ljava/lang/String;
    //   40: astore_1
    //   41: goto -20 -> 21
    //   44: astore_1
    //   45: new 145	java/lang/UnsupportedOperationException
    //   48: dup
    //   49: ldc -98
    //   51: aload_1
    //   52: invokespecial 159	java/lang/UnsupportedOperationException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   55: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	56	0	this	aum
    //   0	56	1	paramObject	Object
    //   3	23	2	l	long
    //   12	19	4	str	String
    // Exception table:
    //   from	to	target	type
    //   0	14	44	java/lang/UnsupportedOperationException
    //   21	30	44	java/lang/UnsupportedOperationException
    //   33	41	44	java/lang/UnsupportedOperationException
  }
}

/* Location:
 * Qualified Name:     aum
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */