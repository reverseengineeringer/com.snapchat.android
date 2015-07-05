import android.content.Context;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.SystemClock;
import android.text.TextUtils;
import com.google.gson.JsonSyntaxException;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.Timber;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.analytics.AnalyticsEvents.LogoutReason;
import com.snapchat.android.analytics.framework.EasyMetric;
import com.snapchat.android.analytics.framework.ErrorMetric;
import com.snapchat.android.util.debug.ReleaseManager;
import com.squareup.otto.Bus;
import java.util.UUID;
import javax.inject.Inject;

@Deprecated
public abstract class ot
  extends AsyncTask<String, Void, aku>
  implements pc.a
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
  protected ato mGson;
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
  
  public ot()
  {
    SnapchatApplication.b().c().a(this);
  }
  
  @caq
  protected aku a(String... paramVarArgs)
  {
    if (ReleaseManager.e()) {
      Thread.currentThread().setName(c());
    }
    if (ajx.H())
    {
      Timber.f("RequestTask", "Do not send any network request for Snapkidz - base URL: " + null + " path: " + a(), new Object[0]);
      return null;
    }
    String str = a();
    paramVarArgs = b();
    paramVarArgs.putString("features_map", oz.a().a(str));
    if (TextUtils.equals(str, "/bq/get_captcha")) {
      paramVarArgs = pc.a(str, paramVarArgs, this);
    }
    for (;;)
    {
      Object localObject = paramVarArgs.getString("resultData");
      a(paramVarArgs);
      if (!TextUtils.isEmpty((CharSequence)localObject)) {}
      try
      {
        paramVarArgs = (aku)mGson.a((String)localObject, aku.class);
        if (atq.a(mStatusCode)) {
          if (paramVarArgs != null)
          {
            if ((TextUtils.equals("/loq/conversations", str)) || (TextUtils.equals("/loq/gae_server_list", str)) || (TextUtils.equals("/loq/ping", str)))
            {
              i = 1;
              if ((!logged) && (i == 0) && ((updates_response == null) || (!aud.a(updates_response.m())))) {
                break label342;
              }
            }
          }
          else
          {
            if ((mStatusCode == 503) && (str.contains("/find_friends"))) {
              new ErrorMetric("Server response 503 on /find_friends").d();
            }
            if ((mStatusCode == 403) && (str.contains("/login"))) {
              new ErrorMetric("Server response 403 on /login").d();
            }
            return paramVarArgs;
            paramVarArgs = pc.a(str, paramVarArgs, null);
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
            bfr.a().b();
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
        label342:
        for (;;) {}
      }
    }
  }
  
  public abstract String a();
  
  @ccm
  public void a(aku paramaku)
  {
    Timber.b("RequestTask", "%s completed in %d milliseconds.", new Object[] { c(), Integer.valueOf((int)mElapsedTime) });
    if (c().equalsIgnoreCase("GetProfileInfoTask")) {
      if (atq.a(mStatusCode)) {
        a(mResultJson);
      }
    }
    for (;;)
    {
      c(paramaku);
      return;
      a(mFailureMessage, mStatusCode);
      d(paramaku);
      continue;
      if (m401Error)
      {
        AnalyticsEvents.a(AnalyticsEvents.LogoutReason.AUTHENTICATION_ERROR);
        aol.a().e();
      }
      else if (m404Error)
      {
        f();
      }
      else if (TextUtils.isEmpty(mFailureMessage))
      {
        b(paramaku);
      }
      else
      {
        a(mFailureMessage, mStatusCode);
        d(paramaku);
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
  
  public void a(blu paramblu, bmd parambmd) {}
  
  @ccm
  protected void a(String paramString) {}
  
  @ccm
  public void a(String paramString, int paramInt) {}
  
  public abstract Bundle b();
  
  @ccm
  public void b(@cgc aku paramaku) {}
  
  public abstract String c();
  
  protected final void c(aku paramaku)
  {
    EasyMetric localEasyMetric = new EasyMetric("ENDPOINT_REQUEST").a("endpoint", a()).a("host", mHost).a("status_code", Integer.valueOf(mStatusCode)).a("first_bytes_latency", Long.valueOf(mFirstByteDuration)).a("total_latency", Long.valueOf(mElapsedTime)).a("first_bytes_size", Long.valueOf(mFirstByteSize)).a("request_size_bytes", Long.valueOf(mSentBytes)).a("return_size_bytes", Long.valueOf(mReceivedBytes)).a("Hit_Cache", Boolean.valueOf(mHitCache)).a("reachability", mReachability).a("requestId", mUUID).a("protocol", mProtocol);
    if ((paramaku != null) && (server_info != null))
    {
      localEasyMetric.a("server_latency", server_info.a());
      localEasyMetric.a("response_checksum", server_info.b());
      localEasyMetric.a("response_compare_result", server_info.d());
      localEasyMetric.a("response_compare_results_dict", server_info.f());
    }
    uh.a(localEasyMetric, mMigrationResult);
    localEasyMetric.a(false);
  }
  
  public void d(@cgc aku paramaku)
  {
    if (paramaku == null) {}
    while (status != 418) {
      return;
    }
    ban.a().a(new bbm(message));
  }
  
  protected void f() {}
  
  public final int g()
  {
    return mStatusCode;
  }
  
  @ccm
  public void onPreExecute()
  {
    Timber.b("RequestTask", "Starting new %s.", new Object[] { c() });
    mUUID = UUID.randomUUID();
    mStartMillis = SystemClock.elapsedRealtime();
  }
}

/* Location:
 * Qualified Name:     ot
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */