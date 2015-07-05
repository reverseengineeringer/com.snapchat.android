import android.accounts.Account;
import android.accounts.AccountManager;
import android.content.Context;
import android.util.Base64;
import com.google.android.gms.auth.GooglePlayServicesAvailabilityException;
import com.google.android.gms.auth.UserRecoverableAuthException;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.GoogleApiClient.Builder;
import com.google.android.gms.safetynet.SafetyNet;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.Timber;
import java.io.IOException;
import java.util.concurrent.Callable;
import javax.inject.Singleton;

@Singleton
public final class lx
{
  private static lx c = new lx();
  private String a = null;
  private String b = null;
  private final aug d;
  private final GoogleApiClient e;
  private final Context f;
  
  private lx()
  {
    this(SnapchatApplication.b().getApplicationContext(), new aug(), new GoogleApiClient.Builder(SnapchatApplication.b().getApplicationContext()).addApi(SafetyNet.API).build());
  }
  
  private lx(Context paramContext, aug paramaug, GoogleApiClient paramGoogleApiClient)
  {
    f = paramContext;
    d = paramaug;
    e = paramGoogleApiClient;
  }
  
  public static lx a()
  {
    return c;
  }
  
  /* Error */
  @q
  public final String a(final String... paramVarArgs)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 75	lx:e	Lcom/google/android/gms/common/api/GoogleApiClient;
    //   4: invokeinterface 89 1 0
    //   9: invokevirtual 95	com/google/android/gms/common/ConnectionResult:isSuccess	()Z
    //   12: ifeq +125 -> 137
    //   15: aload_0
    //   16: getfield 75	lx:e	Lcom/google/android/gms/common/api/GoogleApiClient;
    //   19: invokeinterface 98 1 0
    //   24: ifeq +113 -> 137
    //   27: ldc 100
    //   29: invokestatic 106	java/security/MessageDigest:getInstance	(Ljava/lang/String;)Ljava/security/MessageDigest;
    //   32: aload_1
    //   33: ldc 108
    //   35: invokestatic 114	org/apache/commons/lang3/StringUtils:join	([Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    //   38: ldc 116
    //   40: invokevirtual 122	java/lang/String:getBytes	(Ljava/lang/String;)[B
    //   43: invokevirtual 126	java/security/MessageDigest:digest	([B)[B
    //   46: astore_1
    //   47: aload_0
    //   48: getfield 73	lx:d	Laug;
    //   51: new 8	lx$2
    //   54: dup
    //   55: aload_0
    //   56: aload_1
    //   57: invokespecial 129	lx$2:<init>	(Llx;[B)V
    //   60: invokevirtual 132	aug:a	(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Callable;
    //   63: invokeinterface 138 1 0
    //   68: checkcast 118	java/lang/String
    //   71: astore_1
    //   72: ldc -116
    //   74: new 142	java/lang/StringBuilder
    //   77: dup
    //   78: ldc -112
    //   80: invokespecial 147	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   83: aload_1
    //   84: invokevirtual 151	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   87: invokevirtual 155	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   90: iconst_0
    //   91: anewarray 4	java/lang/Object
    //   94: invokestatic 160	com/snapchat/android/Timber:c	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    //   97: aload_1
    //   98: areturn
    //   99: astore_2
    //   100: ldc -94
    //   102: astore_1
    //   103: ldc -116
    //   105: new 142	java/lang/StringBuilder
    //   108: dup
    //   109: ldc -92
    //   111: invokespecial 147	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   114: aload_2
    //   115: invokevirtual 167	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   118: invokevirtual 151	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   121: invokevirtual 155	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   124: iconst_0
    //   125: anewarray 4	java/lang/Object
    //   128: invokestatic 169	com/snapchat/android/Timber:f	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    //   131: aload_1
    //   132: areturn
    //   133: astore_2
    //   134: goto -31 -> 103
    //   137: ldc -94
    //   139: areturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	140	0	this	lx
    //   0	140	1	paramVarArgs	String[]
    //   99	16	2	localException1	Exception
    //   133	1	2	localException2	Exception
    // Exception table:
    //   from	to	target	type
    //   0	72	99	java/lang/Exception
    //   72	97	133	java/lang/Exception
  }
  
  public final String b()
  {
    if (b == null) {
      return null;
    }
    String str = Base64.encodeToString(b.getBytes(), 11);
    Timber.c("GoogleAuthManager", "GoogleOauthToken exception: " + str, new Object[0]);
    return str;
  }
  
  public final void c()
  {
    if (a == null) {
      return;
    }
    try
    {
      d.a(new Callable() {}).call();
      return;
    }
    catch (Exception localException)
    {
      Timber.f("GoogleAuthManager", "clearGoogleOauthToken exception: " + localException.getMessage(), new Object[0]);
    }
  }
  
  @q
  public final String d()
  {
    Account[] arrayOfAccount = AccountManager.get(f).getAccountsByType("com.google");
    final String str1 = "ng";
    int j = arrayOfAccount.length;
    int i = 0;
    for (;;)
    {
      if (i < j) {
        str1 = name;
      }
      try
      {
        a = ((String)d.a(new Callable() {}).call());
        Timber.c("GoogleAuthManager", "getGoogleOauthToken: " + a, new Object[0]);
        b = null;
        str1 = a;
        return str1;
      }
      catch (IOException localIOException)
      {
        Timber.f("GoogleAuthManager", "getGoogleOauthToken IOException: " + localIOException.getMessage(), new Object[0]);
        throw localIOException;
      }
      catch (GooglePlayServicesAvailabilityException localGooglePlayServicesAvailabilityException)
      {
        Timber.f("GoogleAuthManager", "getGoogleOauthToken GooglePlayServicesAvailabilityException: " + localGooglePlayServicesAvailabilityException.getMessage(), new Object[0]);
        b = localGooglePlayServicesAvailabilityException.getMessage();
        return "pe";
      }
      catch (UserRecoverableAuthException localUserRecoverableAuthException)
      {
        Timber.f("GoogleAuthManager", "getGoogleOauthToken UserRecoverableAuthException: " + localUserRecoverableAuthException.getMessage(), new Object[0]);
        b = localUserRecoverableAuthException.getMessage();
        i += 1;
        String str2 = "ue";
      }
      catch (Exception localException)
      {
        Timber.f("GoogleAuthManager", "getGoogleOauthToken GoogleAuthException: " + localException.getMessage(), new Object[0]);
        b = localException.getMessage();
      }
    }
    return "ae";
  }
}

/* Location:
 * Qualified Name:     lx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */