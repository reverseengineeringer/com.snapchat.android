import android.content.Context;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.SystemClock;
import android.text.TextUtils;
import com.google.gson.JsonSyntaxException;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.analytics.AnalyticsEvents.LogoutReason;
import com.snapchat.android.analytics.framework.EasyMetric;
import com.snapchat.android.analytics.framework.ErrorMetric;
import com.snapchat.android.util.debug.ReleaseManager;
import com.squareup.otto.Bus;
import java.util.UUID;
import javax.inject.Inject;

@Deprecated
public abstract class pk
  extends AsyncTask<String, Void, alp>
  implements pt.a
{
  public static final String DURATION = "duration";
  protected static final String ENDPOINT_REQUEST_EVENT = "ENDPOINT_REQUEST";
  public static final String FIRST_BYTE_DURATION = "firstByteDuration";
  public static final String FIRST_BYTE_SIZE = "firstByteSize";
  public static final String HITCACHE = "hitCache";
  public static final String HOST = "host";
  public static final String MIGRATION_RESULT = "migrationResult";
  public static final String PROTOCOL = "protocol";
  public static final String REACHABILITY = "reachability";
  public static final String RECEIVED_BYTES = "receivedBytes";
  public static final String RESULT_DATA = "resultData";
  public static final int SC_LOCKED_ACCOUNT = 418;
  public static final String SENT_BYTES = "sentBytes";
  public static final String STATUS_CODE = "statusCode";
  private static final String TAG = "RequestTask";
  protected boolean m401Error = false;
  protected boolean m404Error = false;
  protected long mElapsedTime;
  public String mFailureMessage;
  protected long mFirstByteDuration;
  protected long mFirstByteSize;
  @Inject
  protected aum mGson;
  protected boolean mHitCache;
  protected String mHost;
  protected String mMigrationResult;
  protected String mProtocol;
  protected String mReachability;
  protected long mReceivedBytes;
  protected String mResultJson;
  protected long mSentBytes;
  public long mStartMillis;
  protected int mStatusCode;
  public UUID mUUID;
  
  public pk()
  {
    SnapchatApplication.b().c().a(this);
  }
  
  @cbr
  protected alp a(String... paramVarArgs)
  {
    if (ReleaseManager.e()) {
      Thread.currentThread().setName(c());
    }
    if (akr.H())
    {
      new StringBuilder("Do not send any network request for Snapkidz - base URL: ").append(null).append(" path: ").append(a());
      return null;
    }
    String str = a();
    paramVarArgs = b();
    paramVarArgs.putString("features_map", pq.a().a(str));
    if (TextUtils.equals(str, "/bq/get_captcha")) {
      paramVarArgs = pt.a(str, paramVarArgs, this);
    }
    for (;;)
    {
      Object localObject = paramVarArgs.getString("resultData");
      a(paramVarArgs);
      if (!TextUtils.isEmpty((CharSequence)localObject)) {}
      try
      {
        paramVarArgs = (alp)mGson.a((String)localObject, alp.class);
        if (auo.a(mStatusCode)) {
          if (paramVarArgs != null)
          {
            if ((TextUtils.equals("/loq/conversations", str)) || (TextUtils.equals("/loq/gae_server_list", str)) || (TextUtils.equals("/loq/ping", str)))
            {
              i = 1;
              if ((!logged) && (i == 0) && ((updates_response == null) || (!avb.a(updates_response.m())))) {
                break label328;
              }
            }
          }
          else
          {
            if ((mStatusCode == 503) && (str.contains("/find_friends"))) {
              new ErrorMetric("Server response 503 on /find_friends").e();
            }
            if ((mStatusCode == 403) && (str.contains("/login"))) {
              new ErrorMetric("Server response 403 on /login").e();
            }
            return paramVarArgs;
            paramVarArgs = pt.a(str, paramVarArgs, null);
          }
        }
      }
      catch (JsonSyntaxException paramVarArgs)
      {
        for (;;)
        {
          mFailureMessage = (paramVarArgs.getMessage() + " in " + c() + ": " + (String)localObject);
          paramVarArgs = null;
          continue;
          int i = 0;
          continue;
          mFailureMessage = message;
          continue;
          if (mStatusCode == 401)
          {
            m401Error = true;
          }
          else if (mStatusCode == 404)
          {
            m404Error = true;
          }
          else if (mStatusCode == 408)
          {
            bgr.a().b();
            mFailureMessage = "There was a problem connecting to the server";
          }
          else if (mStatusCode == 500)
          {
            mFailureMessage = "Internal server error";
          }
          else
          {
            localObject = SnapchatApplication.b();
            if (localObject != null) {
              mFailureMessage = ((Context)localObject).getString(2131493328);
            } else {
              mFailureMessage = "There was a problem connecting to the server.";
            }
          }
        }
      }
      catch (AssertionError paramVarArgs)
      {
        label328:
        for (;;) {}
      }
    }
  }
  
  public abstract String a();
  
  @cdn
  public void a(alp paramalp)
  {
    c();
    int i = (int)mElapsedTime;
    if (c().equalsIgnoreCase("GetProfileInfoTask")) {
      if (auo.a(mStatusCode)) {
        a(mResultJson);
      }
    }
    for (;;)
    {
      c(paramalp);
      return;
      a(mFailureMessage, mStatusCode);
      d(paramalp);
      continue;
      if (m401Error)
      {
        AnalyticsEvents.a(AnalyticsEvents.LogoutReason.AUTHENTICATION_ERROR);
        aph.a().e();
      }
      else if (m404Error)
      {
        f();
      }
      else if (TextUtils.isEmpty(mFailureMessage))
      {
        b(paramalp);
      }
      else
      {
        a(mFailureMessage, mStatusCode);
        d(paramalp);
      }
    }
  }
  
  protected final void a(Bundle paramBundle)
  {
    mResultJson = paramBundle.getString("resultData");
    mStatusCode = paramBundle.getInt("statusCode");
    mHitCache = paramBundle.getBoolean("hitCache");
    mFirstByteDuration = paramBundle.getLong("firstByteDuration");
    mElapsedTime = paramBundle.getLong("duration");
    mSentBytes = paramBundle.getLong("sentBytes");
    mFirstByteSize = paramBundle.getLong("firstByteSize");
    mReceivedBytes = paramBundle.getLong("receivedBytes");
    mReachability = paramBundle.getString("reachability");
    mProtocol = paramBundle.getString("protocol");
    mHost = paramBundle.getString("host");
    mMigrationResult = paramBundle.getString("migrationResult");
  }
  
  public void a(bmv parambmv, bne parambne) {}
  
  @cdn
  protected void a(String paramString) {}
  
  @cdn
  public void a(String paramString, int paramInt) {}
  
  public abstract Bundle b();
  
  @cdn
  public void b(@chd alp paramalp) {}
  
  public abstract String c();
  
  protected final void c(alp paramalp)
  {
    EasyMetric localEasyMetric = new EasyMetric("ENDPOINT_REQUEST").a("endpoint", a()).a("host", mHost).a("status_code", Integer.valueOf(mStatusCode)).a("first_bytes_latency", Long.valueOf(mFirstByteDuration)).a("total_latency", Long.valueOf(mElapsedTime)).a("first_bytes_size", Long.valueOf(mFirstByteSize)).a("request_size_bytes", Long.valueOf(mSentBytes)).a("return_size_bytes", Long.valueOf(mReceivedBytes)).a("Hit_Cache", Boolean.valueOf(mHitCache)).a("reachability", mReachability).a("requestId", mUUID).a("protocol", mProtocol);
    if ((paramalp != null) && (server_info != null))
    {
      localEasyMetric.a("server_latency", server_info.a());
      localEasyMetric.a("response_checksum", server_info.b());
      localEasyMetric.a("response_compare_result", server_info.d());
      localEasyMetric.a("response_compare_results_dict", server_info.f());
    }
    uy.a(localEasyMetric, mMigrationResult);
    localEasyMetric.a(false);
  }
  
  public void d(@chd alp paramalp)
  {
    if (paramalp == null) {}
    while (status != 418) {
      return;
    }
    bbo.a().a(new bcm(message));
  }
  
  protected void f() {}
  
  public final int g()
  {
    return mStatusCode;
  }
  
  @cdn
  public void onPreExecute()
  {
    c();
    mUUID = UUID.randomUUID();
    mStartMillis = SystemClock.elapsedRealtime();
  }
}

/* Location:
 * Qualified Name:     pk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */