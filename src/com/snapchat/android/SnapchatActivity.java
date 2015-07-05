package com.snapchat.android;

import ajv;
import ajx;
import android.app.Activity;
import android.app.KeyguardManager;
import android.app.KeyguardManager.KeyguardLock;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.SystemClock;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.LoaderManager;
import android.support.v4.app.LoaderManager.LoaderCallbacks;
import android.support.v4.content.Loader;
import auh;
import az;
import aza;
import azg;
import azi;
import azk;
import azs;
import azs.3;
import azv;
import azw;
import bac;
import ban;
import ber;
import bgp;
import bkz;
import bkz.1;
import buz;
import bva;
import bvj;
import bwi;
import cf;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.analytics.framework.AnalyticsPlatform;
import com.snapchat.android.analytics.framework.AnalyticsPlatformRegistry;
import com.snapchat.android.analytics.framework.ScAnalyticsEventEngine;
import com.snapchat.android.util.debug.ReleaseManager;
import com.squareup.otto.Bus;
import java.io.File;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;
import javax.inject.Inject;
import mi;
import net.hockeyapp.android.NativeCrashManager;
import nf;

public abstract class SnapchatActivity
  extends FragmentActivity
{
  public static final String EXTRA_FROM = "FROM";
  protected static final String STATE_KEY_WAITING_FOR_ACTIVITY_RESULT = "waiting_for_activity_result";
  private static final String TAG = "SnapchatActivity";
  private static boolean mIsCrittercismInitialized;
  @Inject
  public AnalyticsPlatformRegistry mAnalyticsPlatformRegistry;
  @Inject
  public bac mAnrReporter;
  private azw mCrashManager = new azw();
  @Inject
  public azi mCrashSampler;
  private ScAnalyticsEventEngine mEventEngine = ScAnalyticsEventEngine.a();
  public azv mShakeReporter = new azv();
  protected ajv mUser;
  @cf
  protected boolean mWaitingForActivityResult = false;
  private boolean performPostponedTasksFromOnResume = false;
  
  private void a(Intent paramIntent)
  {
    if (paramIntent != null)
    {
      paramIntent = paramIntent.getStringExtra("FROM");
      String str = getClass().getSimpleName();
      Timber.c("SnapchatActivity", "logTransition " + paramIntent + " -> " + str, new Object[0]);
      AnalyticsEvents.c(paramIntent, str);
    }
  }
  
  public static final String gatherLogsAsString()
  {
    if (ReleaseManager.f()) {
      return azk.a();
    }
    return "";
  }
  
  public static boolean m()
  {
    return mIsCrittercismInitialized;
  }
  
  protected void a(ajv paramajv)
  {
    Timber.c("SnapchatActivity", "onUserLoaded " + paramajv, new Object[0]);
    if (performPostponedTasksFromOnResume)
    {
      mAnalyticsPlatformRegistry.a(this);
      performPostponedTasksFromOnResume = false;
    }
    ban.a().a(new ber(paramajv));
  }
  
  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    if (43351 == paramInt1) {
      mShakeReporter.b();
    }
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    ((SnapchatApplication)getApplication()).c().a(this);
    if (paramBundle != null) {
      mWaitingForActivityResult = paramBundle.getBoolean("waiting_for_activity_result");
    }
    mCrashManager.mOnCreateMillis = SystemClock.elapsedRealtime();
    if (mCrashSampler.b())
    {
      az.a(getApplicationContext(), "53b243b017878408e2000002");
      mIsCrittercismInitialized = true;
      az.a("initialize crittercism.");
      NativeCrashManager.a(this, "c06b8797877eb662616000c11de0d338");
    }
    if ((ReleaseManager.l()) && (ReleaseManager.j())) {}
    try
    {
      ((KeyguardManager)getSystemService("keyguard")).newKeyguardLock(getLocalClassName()).disableKeyguard();
      if (ReleaseManager.h())
      {
        paramBundle = new azs();
        bgp.a(auh.SERIAL_EXECUTOR_FOR_DEBUGGING, new azs.3(paramBundle));
      }
      getSupportLoaderManager().initLoader$71be8de6(800, new LoaderManager.LoaderCallbacks()
      {
        public final Loader<ajv> onCreateLoader(int paramAnonymousInt, Bundle paramAnonymousBundle)
        {
          return new mi(SnapchatActivity.this, nf.a());
        }
        
        public final void onLoaderReset(Loader<ajv> paramAnonymousLoader) {}
      });
      return;
    }
    catch (Exception paramBundle)
    {
      for (;;)
      {
        paramBundle.printStackTrace();
      }
    }
  }
  
  protected void onDestroy()
  {
    super.onDestroy();
  }
  
  protected void onNewIntent(Intent paramIntent)
  {
    super.onNewIntent(paramIntent);
    a(paramIntent);
  }
  
  protected void onPause()
  {
    super.onPause();
    ScAnalyticsEventEngine.c();
    if (mCrashSampler.b())
    {
      long l1 = System.currentTimeMillis();
      if ((this != null) && (bvj.a(this)))
      {
        Object localObject = getSharedPreferences("HockeyApp", 0);
        long l2 = ((SharedPreferences)localObject).getLong("startTime" + hashCode(), 0L);
        long l3 = ((SharedPreferences)localObject).getLong("usageTime" + buz.b, 0L);
        if (l2 > 0L)
        {
          localObject = ((SharedPreferences)localObject).edit();
          ((SharedPreferences.Editor)localObject).putLong("usageTime" + buz.b, l1 - l2 + l3);
          bwi.a((SharedPreferences.Editor)localObject);
        }
      }
    }
  }
  
  protected void onResume()
  {
    super.onResume();
    Object localObject = mCrashManager;
    mOnResumeCycles += 1;
    mOnResumeMillis = SystemClock.elapsedRealtime();
    ScAnalyticsEventEngine.b();
    if (mCrashSampler.b())
    {
      bva.a(this, "c06b8797877eb662616000c11de0d338", mCrashManager);
      long l = System.currentTimeMillis();
      if (this != null)
      {
        localObject = getSharedPreferences("HockeyApp", 0).edit();
        ((SharedPreferences.Editor)localObject).putLong("startTime" + hashCode(), l);
        bwi.a((SharedPreferences.Editor)localObject);
      }
    }
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putBoolean("waiting_for_activity_result", mWaitingForActivityResult);
  }
  
  public void onStart()
  {
    super.onStart();
    a(getIntent());
    mWaitingForActivityResult = false;
    if (mUser == null) {
      performPostponedTasksFromOnResume = true;
    }
    for (;;)
    {
      if (ReleaseManager.f())
      {
        localObject = mShakeReporter;
        mActivity = this;
        mSensorManager = ((SensorManager)getSystemService("sensor"));
        mCanSendReports = true;
        mBugReporter = new azg(ReleaseManager.a());
        localObject = mShakeReporter;
        mSensorManager.registerListener((SensorEventListener)localObject, mSensorManager.getDefaultSensor(1), 1);
      }
      localObject = mAnrReporter.mAnrDetector;
      if (!a.isEmpty()) {
        break;
      }
      throw new IllegalStateException("You must call registerListener() before detectAnrs()");
      mAnalyticsPlatformRegistry.a(this);
    }
    Object localObject = new bkz.1((bkz)localObject, this);
    AsyncTask.THREAD_POOL_EXECUTOR.execute((Runnable)localObject);
  }
  
  protected void onStop()
  {
    super.onStop();
    Object localObject = mAnalyticsPlatformRegistry;
    if (ajx.H()) {
      Timber.b("AnalyticsPlatformRegistry", "User is logged into SnapKidz. Aborting.", new Object[0]);
    }
    for (;;)
    {
      if (ReleaseManager.f())
      {
        mShakeReporter.a();
        localObject = mShakeReporter;
        mActivity = null;
        mBugReporter = null;
      }
      return;
      localObject = a.iterator();
      while (((Iterator)localObject).hasNext()) {
        ((AnalyticsPlatform)((Iterator)localObject).next()).b(this);
      }
    }
  }
  
  public final String sendNotification(String paramString)
  {
    sendBroadcast(new Intent("android.intent.action.MEDIA_SCANNER_SCAN_FILE", Uri.fromFile(new File(paramString))));
    return paramString;
  }
  
  public void startActivity(Intent paramIntent)
  {
    paramIntent.putExtra("FROM", getClass().getSimpleName());
    super.startActivity(paramIntent);
  }
  
  public void startActivityForResult(Intent paramIntent, int paramInt)
  {
    super.startActivityForResult(paramIntent, paramInt);
    if (paramInt >= 0) {
      mWaitingForActivityResult = true;
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.SnapchatActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */