import android.accounts.Account;
import android.accounts.AccountManager;
import android.content.Context;
import android.util.Base64;
import com.google.android.gms.auth.GooglePlayServicesAvailabilityException;
import com.google.android.gms.auth.UserRecoverableAuthException;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.GoogleApiClient.Builder;
import com.google.android.gms.safetynet.SafetyNet;
import com.snapchat.android.SnapchatApplication;
import java.io.IOException;
import java.security.MessageDigest;
import java.util.concurrent.Callable;
import javax.inject.Singleton;
import org.apache.commons.lang3.StringUtils;

@Singleton
public final class mp
{
  private static mp c = new mp();
  private String a = null;
  private String b = null;
  private final ave d;
  private final GoogleApiClient e;
  private final Context f;
  
  private mp()
  {
    this(SnapchatApplication.b().getApplicationContext(), new ave(), new GoogleApiClient.Builder(SnapchatApplication.b().getApplicationContext()).addApi(SafetyNet.API).build());
  }
  
  private mp(Context paramContext, ave paramave, GoogleApiClient paramGoogleApiClient)
  {
    f = paramContext;
    d = paramave;
    e = paramGoogleApiClient;
  }
  
  public static mp a()
  {
    return c;
  }
  
  @q
  public final String a(final String... paramVarArgs)
  {
    try
    {
      if ((e.blockingConnect().isSuccess()) && (e.isConnected()))
      {
        paramVarArgs = MessageDigest.getInstance("SHA-256").digest(StringUtils.join(paramVarArgs, "|").getBytes("UTF-8"));
        paramVarArgs = (String)d.a(new Callable() {}).call();
        return paramVarArgs;
      }
    }
    catch (Exception paramVarArgs)
    {
      new StringBuilder("getSignedAttestation Exception: ").append(paramVarArgs.getMessage());
    }
    return "ie";
  }
  
  public final String b()
  {
    if (b == null) {
      return null;
    }
    return Base64.encodeToString(b.getBytes(), 11);
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
      new StringBuilder("clearGoogleOauthToken exception: ").append(localException.getMessage());
    }
  }
  
  @q
  public final String d()
  {
    Account[] arrayOfAccount = AccountManager.get(f).getAccountsByType("com.google");
    int j = arrayOfAccount.length;
    final String str1 = "ng";
    int i = 0;
    for (;;)
    {
      if (i < j) {
        str1 = name;
      }
      try
      {
        a = ((String)d.a(new Callable() {}).call());
        new StringBuilder("getGoogleOauthToken: ").append(a);
        b = null;
        str1 = a;
        return str1;
      }
      catch (IOException localIOException)
      {
        new StringBuilder("getGoogleOauthToken IOException: ").append(localIOException.getMessage());
        throw localIOException;
      }
      catch (GooglePlayServicesAvailabilityException localGooglePlayServicesAvailabilityException)
      {
        new StringBuilder("getGoogleOauthToken GooglePlayServicesAvailabilityException: ").append(localGooglePlayServicesAvailabilityException.getMessage());
        b = localGooglePlayServicesAvailabilityException.getMessage();
        return "pe";
      }
      catch (UserRecoverableAuthException localUserRecoverableAuthException)
      {
        new StringBuilder("getGoogleOauthToken UserRecoverableAuthException: ").append(localUserRecoverableAuthException.getMessage());
        b = localUserRecoverableAuthException.getMessage();
        i += 1;
        String str2 = "ue";
      }
      catch (Exception localException)
      {
        new StringBuilder("getGoogleOauthToken GoogleAuthException: ").append(localException.getMessage());
        b = localException.getMessage();
      }
    }
    return "ae";
  }
}

/* Location:
 * Qualified Name:     mp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */