import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import java.math.BigInteger;
import java.security.MessageDigest;

public final class bsx
{
  private SharedPreferences a;
  private SharedPreferences b;
  private Context c;
  
  public bsx(Context paramContext)
  {
    if (paramContext == null) {
      throw new NullPointerException("context was null");
    }
    c = paramContext;
    a = paramContext.getSharedPreferences("com.crittercism.usersettings", 0);
    b = paramContext.getSharedPreferences("com.crittercism.prefs", 0);
    if (a == null) {
      throw new NullPointerException("prefs were null");
    }
    if (b == null) {
      throw new NullPointerException("legacy prefs were null");
    }
  }
  
  private static String a(String paramString)
  {
    String str = paramString;
    if (paramString != null)
    {
      str = paramString;
      if (paramString.length() <= 0) {}
    }
    try
    {
      str = new String(new BigInteger(1, MessageDigest.getInstance("SHA-256").digest(paramString.getBytes())).toString(16));
      return str;
    }
    catch (ThreadDeath paramString)
    {
      throw paramString;
    }
    catch (Throwable paramString) {}
    return null;
  }
  
  /* Error */
  private String b()
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: aload_0
    //   3: getfield 23	bsx:c	Landroid/content/Context;
    //   6: invokevirtual 84	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
    //   9: ldc 86
    //   11: invokestatic 92	android/provider/Settings$Secure:getString	(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    //   14: astore_1
    //   15: aload_1
    //   16: ifnull +148 -> 164
    //   19: aload_1
    //   20: invokevirtual 53	java/lang/String:length	()I
    //   23: ifle +141 -> 164
    //   26: aload_1
    //   27: ldc 94
    //   29: invokevirtual 98	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   32: ifne +132 -> 164
    //   35: aload_1
    //   36: ldc 100
    //   38: invokevirtual 103	java/lang/String:getBytes	(Ljava/lang/String;)[B
    //   41: invokestatic 109	java/util/UUID:nameUUIDFromBytes	([B)Ljava/util/UUID;
    //   44: astore_1
    //   45: aload_1
    //   46: ifnull +118 -> 164
    //   49: aload_1
    //   50: invokevirtual 111	java/util/UUID:toString	()Ljava/lang/String;
    //   53: astore_1
    //   54: aload_1
    //   55: ifnull +10 -> 65
    //   58: aload_1
    //   59: invokevirtual 53	java/lang/String:length	()I
    //   62: ifne +89 -> 151
    //   65: aload_0
    //   66: getfield 23	bsx:c	Landroid/content/Context;
    //   69: invokevirtual 115	android/content/Context:getPackageManager	()Landroid/content/pm/PackageManager;
    //   72: ldc 117
    //   74: aload_0
    //   75: getfield 23	bsx:c	Landroid/content/Context;
    //   78: invokevirtual 120	android/content/Context:getPackageName	()Ljava/lang/String;
    //   81: invokevirtual 126	android/content/pm/PackageManager:checkPermission	(Ljava/lang/String;Ljava/lang/String;)I
    //   84: ifne +22 -> 106
    //   87: aload_0
    //   88: getfield 23	bsx:c	Landroid/content/Context;
    //   91: ldc -128
    //   93: invokevirtual 132	android/content/Context:getSystemService	(Ljava/lang/String;)Ljava/lang/Object;
    //   96: checkcast 134	android/telephony/TelephonyManager
    //   99: invokevirtual 137	android/telephony/TelephonyManager:getDeviceId	()Ljava/lang/String;
    //   102: invokestatic 139	bsx:a	(Ljava/lang/String;)Ljava/lang/String;
    //   105: astore_2
    //   106: aload_2
    //   107: astore_1
    //   108: aload_1
    //   109: ifnull +12 -> 121
    //   112: aload_1
    //   113: astore_2
    //   114: aload_1
    //   115: invokevirtual 53	java/lang/String:length	()I
    //   118: ifne +10 -> 128
    //   121: invokestatic 143	java/util/UUID:randomUUID	()Ljava/util/UUID;
    //   124: invokevirtual 111	java/util/UUID:toString	()Ljava/lang/String;
    //   127: astore_2
    //   128: aload_2
    //   129: areturn
    //   130: astore_1
    //   131: aload_1
    //   132: athrow
    //   133: astore_1
    //   134: aload_1
    //   135: invokestatic 148	btd:a	(Ljava/lang/Throwable;)V
    //   138: aconst_null
    //   139: astore_1
    //   140: goto -86 -> 54
    //   143: astore_1
    //   144: aload_1
    //   145: athrow
    //   146: astore_2
    //   147: aload_2
    //   148: invokestatic 148	btd:a	(Ljava/lang/Throwable;)V
    //   151: goto -43 -> 108
    //   154: astore_1
    //   155: aload_1
    //   156: athrow
    //   157: astore_2
    //   158: aload_2
    //   159: invokestatic 148	btd:a	(Ljava/lang/Throwable;)V
    //   162: aload_1
    //   163: areturn
    //   164: aconst_null
    //   165: astore_1
    //   166: goto -112 -> 54
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	169	0	this	bsx
    //   14	101	1	localObject1	Object
    //   130	2	1	localThreadDeath1	ThreadDeath
    //   133	2	1	localThrowable1	Throwable
    //   139	1	1	localObject2	Object
    //   143	2	1	localThreadDeath2	ThreadDeath
    //   154	9	1	localThreadDeath3	ThreadDeath
    //   165	1	1	localObject3	Object
    //   1	128	2	localObject4	Object
    //   146	2	2	localThrowable2	Throwable
    //   157	2	2	localThrowable3	Throwable
    // Exception table:
    //   from	to	target	type
    //   2	15	130	java/lang/ThreadDeath
    //   19	45	130	java/lang/ThreadDeath
    //   49	54	130	java/lang/ThreadDeath
    //   2	15	133	java/lang/Throwable
    //   19	45	133	java/lang/Throwable
    //   49	54	133	java/lang/Throwable
    //   65	106	143	java/lang/ThreadDeath
    //   65	106	146	java/lang/Throwable
    //   121	128	154	java/lang/ThreadDeath
    //   121	128	157	java/lang/Throwable
  }
  
  private boolean b(String paramString)
  {
    SharedPreferences.Editor localEditor = a.edit();
    localEditor.putString("hashedDeviceID", paramString);
    return localEditor.commit();
  }
  
  public final String a()
  {
    Object localObject2 = a.getString("hashedDeviceID", null);
    Object localObject1 = localObject2;
    if (localObject2 == null)
    {
      localObject2 = b.getString("com.crittercism.prefs.did", null);
      localObject1 = localObject2;
      if (localObject2 != null)
      {
        localObject1 = localObject2;
        if (b((String)localObject2))
        {
          localObject1 = b.edit();
          ((SharedPreferences.Editor)localObject1).remove("com.crittercism.prefs.did");
          ((SharedPreferences.Editor)localObject1).commit();
          localObject1 = localObject2;
        }
      }
    }
    localObject2 = localObject1;
    if (localObject1 == null)
    {
      localObject2 = b();
      b((String)localObject2);
    }
    return (String)localObject2;
  }
}

/* Location:
 * Qualified Name:     bsx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */