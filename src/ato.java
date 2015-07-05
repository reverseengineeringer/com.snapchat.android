import android.os.SystemClock;
import android.text.TextUtils;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonSyntaxException;
import com.snapchat.android.Timber;
import java.lang.reflect.Type;
import javax.inject.Inject;
import javax.inject.Singleton;

@Singleton
public final class ato
{
  private static final String FROM_JSON = "fromJson";
  private static final String TAG = "GsonWrapper";
  private static final String TO_JSON = "toJson";
  private final bgk mClock = new bgk();
  private final azp mGracefulExceptionHandler;
  private final Gson mGson = new GsonBuilder().registerTypeAdapter(axu.class, new axv().nullSafe()).registerTypeAdapter(ayh.class, new ayi()).registerTypeAdapter(cgs.class, new ais()).enableComplexMapKeySerialization().create();
  
  @Inject
  protected ato(azp paramazp)
  {
    mGracefulExceptionHandler = paramazp;
  }
  
  private static void a(String paramString1, String paramString2, long paramLong, String paramString3)
  {
    double d2 = SystemClock.elapsedRealtime() - paramLong;
    int i;
    if (TextUtils.isEmpty(paramString2))
    {
      i = 0;
      if (d2 != 0.0D) {
        break label83;
      }
    }
    label83:
    for (double d1 = d2;; d1 = d2 / i)
    {
      Timber.c("GsonWrapper", "%s [length %d] [duration %.3f ms] [per char %.3f ms] [type %s]", new Object[] { paramString1, Integer.valueOf(i), Double.valueOf(d2), Double.valueOf(d1), paramString3 });
      return;
      i = paramString2.length();
      break;
    }
  }
  
  private void a(String paramString, Throwable paramThrowable)
  {
    paramString = new JsonSyntaxException("Error parsing Json: " + paramString, paramThrowable);
    mGracefulExceptionHandler.a(paramString);
  }
  
  @cgc
  public final <T> T a(@cgc String paramString, @cgb Class<T> paramClass)
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
  
  @cgc
  public final <T> T a(@cgc String paramString, @cgb Type paramType)
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
  @cgb
  public final String a(@cgc Object paramObject)
  {
    // Byte code:
    //   0: invokestatic 80	android/os/SystemClock:elapsedRealtime	()J
    //   3: lstore_2
    //   4: aload_0
    //   5: getfield 63	ato:mGson	Lcom/google/gson/Gson;
    //   8: aload_1
    //   9: invokevirtual 166	com/google/gson/Gson:toJson	(Ljava/lang/Object;)Ljava/lang/String;
    //   12: astore 4
    //   14: aload_1
    //   15: ifnonnull +18 -> 33
    //   18: ldc -88
    //   20: astore_1
    //   21: ldc 15
    //   23: aload 4
    //   25: lload_2
    //   26: aload_1
    //   27: invokestatic 150	ato:a	(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    //   30: aload 4
    //   32: areturn
    //   33: aload_1
    //   34: invokevirtual 172	java/lang/Object:getClass	()Ljava/lang/Class;
    //   37: invokevirtual 175	java/lang/Class:getSimpleName	()Ljava/lang/String;
    //   40: astore_1
    //   41: goto -20 -> 21
    //   44: astore_1
    //   45: new 164	java/lang/UnsupportedOperationException
    //   48: dup
    //   49: ldc -79
    //   51: aload_1
    //   52: invokespecial 178	java/lang/UnsupportedOperationException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   55: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	56	0	this	ato
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
 * Qualified Name:     ato
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */