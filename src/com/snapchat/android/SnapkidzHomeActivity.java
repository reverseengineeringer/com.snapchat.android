package com.snapchat.android;

import aim;
import ajv;
import ajx;
import android.app.KeyguardManager;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.view.Window;
import apd;
import asr;
import axa;
import ban;
import bap;
import bbt;
import bbv;
import bca;
import bcg;
import bdj;
import boh;
import com.snapchat.android.camera.CameraFragment;
import com.snapchat.android.model.Mediabryo;
import com.snapchat.android.snapkidz.SnapKidzPreviewFragment;
import com.snapchat.android.util.eventbus.CameraDisplayState;
import com.snapchat.android.util.fragment.SnapchatFragment;
import com.squareup.otto.Bus;

public class SnapkidzHomeActivity
  extends SnapchatActivity
{
  public bdj a;
  private boolean b = false;
  
  private void a(SnapchatFragment paramSnapchatFragment, String paramString)
  {
    FragmentTransaction localFragmentTransaction = mFragments.beginTransaction();
    localFragmentTransaction.add(2131362376, paramSnapchatFragment, paramString);
    localFragmentTransaction.addToBackStack(null);
    localFragmentTransaction.commit();
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    if (paramInt2 == 707) {
      asr.a(this);
    }
  }
  
  public void onBackPressed()
  {
    if (mFragments.getBackStackEntryCount() == 2) {
      ban.a().a(new bap(CameraDisplayState.SHOW));
    }
    super.onBackPressed();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    axa.a(getCacheDir(), getExternalCacheDir());
    apd.a().a(this);
    ajx.f(true);
    setContentView(2130968746);
    getWindow().setBackgroundDrawable(null);
    getWindow().addFlags(1024);
    getWindow().clearFlags(2048);
    a(new CameraFragment(), "CameraFragment");
    findViewById(2131362376).getRootView().getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener()
    {
      public final void onGlobalLayout()
      {
        ban.a().a(new bbt());
      }
    });
  }
  
  protected void onDestroy()
  {
    super.onDestroy();
    apd.a().b();
  }
  
  @boh
  public void onImageSnapBitmapReadyForSnapPreview(bca parambca)
  {
    parambca = mBitmap;
    a.mMediabryo.mRawImageBitmap = parambca;
    onSnapCapturedEvent(a);
  }
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 82) {
      return true;
    }
    ban.a().a(new bbv(paramInt, paramKeyEvent));
    return super.onKeyDown(paramInt, paramKeyEvent);
  }
  
  public void onNewIntent(Intent paramIntent)
  {
    super.onNewIntent(paramIntent);
    setIntent(paramIntent);
  }
  
  protected void onPause()
  {
    super.onPause();
    ban.a().b(this);
    ajv localajv = ajv.g();
    if (localajv != null) {
      localajv.a(null);
    }
  }
  
  protected void onResume()
  {
    super.onResume();
    ban.a().c(this);
    if (((KeyguardManager)getSystemService("keyguard")).inKeyguardRestrictedInputMode()) {
      b = true;
    }
  }
  
  @boh
  public void onSnapCapturedEvent(bdj parambdj)
  {
    a = parambdj;
    if ((mMediabryo.h() == 0) && (mMediabryo.mRawImageBitmap == null)) {}
    while (mFragments.getBackStackEntryCount() > 1) {
      return;
    }
    a(new SnapKidzPreviewFragment(), "preview");
  }
  
  public void onWindowFocusChanged(boolean paramBoolean)
  {
    super.onWindowFocusChanged(paramBoolean);
    Timber.c("SnapkidzHomeActivity", "On ac Should we onWindowFocusChanged has focus? " + paramBoolean, new Object[0]);
    if ((paramBoolean) && (b))
    {
      Timber.c("SnapkidzHomeActivity", "On ac Calling onResume from window focus fn", new Object[0]);
      b = false;
      ban.a().a(new bcg());
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.SnapkidzHomeActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */