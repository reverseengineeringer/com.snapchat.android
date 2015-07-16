package com.snapchat.android;

import akr;
import android.content.Context;
import android.graphics.Rect;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.view.Window;
import awf;
import bls;
import bls.a;
import com.snapchat.android.analytics.RegistrationAnalytics;
import com.snapchat.android.fragments.signup.LoginAndSignupFragment;
import com.snapchat.android.fragments.signup.LoginFragment;
import com.snapchat.android.fragments.signup.NewUserContactBookFragment;
import com.snapchat.android.fragments.signup.TwoFactorCodeVerificationFragment;
import com.snapchat.android.util.fragment.SnapchatFragment;
import java.util.List;
import kkkkkk.kkxxkk;
import kkkkkk.kxkxxk;
import kkkkkk.xkkkxk;

public class LoginAndSignupActivity
  extends SnapchatCameraBackgroundActivity
{
  private View a;
  private final Rect b = new Rect();
  private final akr c;
  private ViewTreeObserver.OnGlobalLayoutListener d = new ViewTreeObserver.OnGlobalLayoutListener()
  {
    public final void onGlobalLayout()
    {
      Object localObject = getWindow().getDecorView();
      ((View)localObject).getWindowVisibleDisplayFrame(LoginAndSignupActivity.a(LoginAndSignupActivity.this));
      int i = abottom;
      ((View)localObject).getGlobalVisibleRect(LoginAndSignupActivity.a(LoginAndSignupActivity.this));
      i = abottom - i;
      localObject = LoginAndSignupActivity.b(LoginAndSignupActivity.this).getLayoutParams();
      if (height != i)
      {
        height = i;
        LoginAndSignupActivity.b(LoginAndSignupActivity.this).setLayoutParams((ViewGroup.LayoutParams)localObject);
      }
    }
  };
  
  public LoginAndSignupActivity()
  {
    this(akr.a());
  }
  
  public LoginAndSignupActivity(akr paramakr)
  {
    c = paramakr;
  }
  
  public static void a(bls parambls)
  {
    boolean bool2 = true;
    boolean bool1;
    if ((parambls != null) && (parambls.a() == bls.a.NEEDS_PHONE_VERIFIED))
    {
      bool1 = true;
      akr.a(bool1);
      if ((parambls == null) || (parambls.a() != bls.a.NEEDS_CAPTCHA)) {
        break label61;
      }
      bool1 = bool2;
      label38:
      akr.b(bool1);
      if (parambls == null) {
        break label66;
      }
    }
    label61:
    label66:
    for (parambls = parambls.b();; parambls = null)
    {
      akr.c(parambls);
      return;
      bool1 = false;
      break;
      bool1 = false;
      break label38;
    }
  }
  
  public void onBackPressed()
  {
    Object localObject = mFragments.getFragments();
    if (((List)localObject).size() <= 0) {
      finish();
    }
    do
    {
      return;
      localObject = (SnapchatFragment)((List)localObject).get(((List)localObject).size() - 1);
    } while (((SnapchatFragment)localObject).g());
    if ((localObject instanceof LoginAndSignupFragment))
    {
      finish();
      return;
    }
    if ((localObject instanceof NewUserContactBookFragment))
    {
      akr.c(false);
      RegistrationAnalytics.a(false);
      finish();
      return;
    }
    if ((localObject instanceof TwoFactorCodeVerificationFragment))
    {
      mFragments.beginTransaction().replace(2131362413, new LoginFragment()).commit();
      return;
    }
    mFragments.beginTransaction().replace(2131362413, new LoginAndSignupFragment()).commit();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    kkxxkk.b041E041EОО041EО(getApplicationContext());
    xkkkxk.b041E041EООО041E(getApplicationContext());
    super.onCreate(paramBundle);
    a();
    if (paramBundle == null) {
      mFragments.beginTransaction().add(2131362413, new LoginAndSignupFragment()).commit();
    }
    a = findViewById(2131362414);
  }
  
  protected void onPause()
  {
    super.onPause();
    ViewTreeObserver localViewTreeObserver = getWindow().getDecorView().getViewTreeObserver();
    if (localViewTreeObserver.isAlive())
    {
      if (Build.VERSION.SDK_INT >= 16) {
        break label53;
      }
      localViewTreeObserver.removeGlobalOnLayoutListener(d);
    }
    for (;;)
    {
      awf.a(this, getWindow().getDecorView().getRootView());
      return;
      label53:
      localViewTreeObserver.removeOnGlobalLayoutListener(d);
    }
  }
  
  public void onResume()
  {
    kxkxxk.bОО041EО041E041E(getApplicationContext().getPackageCodePath());
    super.onResume();
    getWindow().getDecorView().getViewTreeObserver().addOnGlobalLayoutListener(d);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.LoginAndSignupActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */