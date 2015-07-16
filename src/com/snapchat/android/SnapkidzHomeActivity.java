package com.snapchat.android;

import aji;
import akp;
import akr;
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
import apz;
import atq;
import axy;
import bbo;
import bbq;
import bct;
import bcv;
import bda;
import bdg;
import bej;
import bpi;
import com.snapchat.android.camera.CameraFragment;
import com.snapchat.android.model.Mediabryo;
import com.snapchat.android.snapkidz.SnapKidzPreviewFragment;
import com.snapchat.android.util.eventbus.CameraDisplayState;
import com.snapchat.android.util.fragment.SnapchatFragment;
import com.squareup.otto.Bus;
import kkkkkk.kkxxkk;
import kkkkkk.xkkkxk;

public class SnapkidzHomeActivity
  extends SnapchatActivity
{
  public bej a;
  private boolean b = false;
  
  private void a(SnapchatFragment paramSnapchatFragment, String paramString)
  {
    FragmentTransaction localFragmentTransaction = mFragments.beginTransaction();
    localFragmentTransaction.add(2131362374, paramSnapchatFragment, paramString);
    localFragmentTransaction.addToBackStack(null);
    localFragmentTransaction.commit();
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    if (paramInt2 == 707) {
      atq.a(this);
    }
  }
  
  public void onBackPressed()
  {
    if (mFragments.getBackStackEntryCount() == 2) {
      bbo.a().a(new bbq(CameraDisplayState.SHOW));
    }
    super.onBackPressed();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    kkxxkk.b041E041EОО041EО(getApplicationContext());
    xkkkxk.b041E041EООО041E(getApplicationContext());
    super.onCreate(paramBundle);
    axy.a(getCacheDir(), getExternalCacheDir());
    apz.a().a(this);
    akr.f(true);
    setContentView(2130968748);
    getWindow().setBackgroundDrawable(null);
    getWindow().addFlags(1024);
    getWindow().clearFlags(2048);
    a(new CameraFragment(), "CameraFragment");
    findViewById(2131362374).getRootView().getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener()
    {
      public final void onGlobalLayout()
      {
        bbo.a().a(new bct());
      }
    });
  }
  
  protected void onDestroy()
  {
    super.onDestroy();
    apz.a().b();
  }
  
  @bpi
  public void onImageSnapBitmapReadyForSnapPreview(bda parambda)
  {
    parambda = mBitmap;
    a.mMediabryo.mRawImageBitmap = parambda;
    onSnapCapturedEvent(a);
  }
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 82) {
      return true;
    }
    bbo.a().a(new bcv(paramInt, paramKeyEvent));
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
    bbo.a().b(this);
    akp localakp = akp.g();
    if (localakp != null) {
      localakp.a(null);
    }
  }
  
  protected void onResume()
  {
    super.onResume();
    bbo.a().c(this);
    if (((KeyguardManager)getSystemService("keyguard")).inKeyguardRestrictedInputMode()) {
      b = true;
    }
  }
  
  @bpi
  public void onSnapCapturedEvent(bej parambej)
  {
    a = parambej;
    if ((mMediabryo.h() == 0) && (mMediabryo.mRawImageBitmap == null)) {}
    while (mFragments.getBackStackEntryCount() > 1) {
      return;
    }
    a(new SnapKidzPreviewFragment(), "preview");
  }
  
  public void onWindowFocusChanged(boolean paramBoolean)
  {
    super.onWindowFocusChanged(paramBoolean);
    if ((paramBoolean) && (b))
    {
      b = false;
      bbo.a().a(new bdg());
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.SnapkidzHomeActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */