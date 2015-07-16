package com.snapchat.android.fragments.addfriends;

import akp;
import akr;
import android.animation.Animator;
import android.animation.Animator.AnimatorListener;
import android.animation.AnimatorSet;
import android.animation.AnimatorSet.Builder;
import android.animation.ObjectAnimator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.SharedPreferences.OnSharedPreferenceChangeListener;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.provider.ContactsContract.Profile;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.LoaderManager;
import android.support.v4.app.LoaderManager.LoaderCallbacks;
import android.support.v4.content.CursorLoader;
import android.support.v4.content.Loader;
import android.text.TextUtils;
import android.view.Display;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.view.Window;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.TextView;
import anh;
import anr;
import aob;
import apg;
import aph;
import apw;
import auf;
import auv;
import auy;
import avf;
import awj;
import awx;
import axn;
import axo;
import bbj;
import bbo;
import bcp;
import bcz;
import bdq;
import bdr;
import bes;
import bev;
import bfk;
import bfq;
import bgw;
import bgw.1;
import bgx;
import bhb;
import bhg;
import bhg.1;
import bhh;
import bhi;
import bhj;
import bhp;
import bpi;
import cbr;
import chc;
import com.snapchat.android.analytics.AnalyticsEvents.AnalyticsContext;
import com.snapchat.android.analytics.ProfileEventAnalytics;
import com.snapchat.android.camera.ui.viewflipper.CameraViewFlipper;
import com.snapchat.android.database.OnboardingTooltip;
import com.snapchat.android.database.SharedPreferenceKey;
import com.snapchat.android.model.Friend;
import com.snapchat.android.ui.ProfileCameraMaskView;
import com.snapchat.android.ui.ProfilePictureView;
import com.snapchat.android.ui.ProfilePictureView.1;
import com.snapchat.android.ui.ProfilePictureView.2;
import com.snapchat.android.ui.ProfilePictureView.3;
import com.snapchat.android.ui.ProfilePictureView.4;
import com.snapchat.android.ui.ProfilePictureView.5;
import com.snapchat.android.ui.ProfilePictureView.a;
import com.snapchat.android.ui.SharedProfileSnapcodeView;
import com.snapchat.android.ui.window.WindowConfiguration.StatusBarDrawMode;
import com.snapchat.android.util.TitleBarManager.Visibility;
import com.snapchat.android.util.emoji.Emoji;
import com.snapchat.android.util.eventbus.ShowDialogEvent;
import com.snapchat.android.util.eventbus.ShowDialogEvent.DialogType;
import com.snapchat.android.util.fragment.SnapchatFragment;
import com.snapchat.android.util.profileimages.ProfileImageUtils;
import com.snapchat.android.util.profileimages.ProfileImageUtils.ProfileImageSize;
import com.squareup.otto.Bus;
import dr;
import fu;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import javax.inject.Provider;
import kf;
import nw;
import qr;
import wi;
import xn;

public class ProfileFragment
  extends SnapchatFragment
  implements SharedPreferences.OnSharedPreferenceChangeListener, LoaderManager.LoaderCallbacks<Cursor>, View.OnClickListener, ProfilePictureView.a
{
  private static final Set<String> m = dr.a(SharedPreferenceKey.USERNAME.getKey(), SharedPreferenceKey.LAST_SEEN_ADDED_ME_TIMESTAMP.getKey(), SharedPreferenceKey.DISPLAY_NAME.getKey(), SharedPreferenceKey.IDENTITY_RED_GEAR_IS_ON.getKey(), SharedPreferenceKey.HAS_PROFILE_IMAGES.getKey());
  private View A;
  private ViewStub B;
  private ProfileCameraMaskView C;
  private SharedProfileSnapcodeView D;
  private c E;
  private AnimationDrawable F;
  private int G;
  private int H;
  private String I;
  private String J;
  private ColorStateList K;
  private ColorStateList L;
  private final AnalyticsEvents.AnalyticsContext M = AnalyticsEvents.AnalyticsContext.PROFILE_MAIN_PAGE;
  private final akr N;
  private final axn O;
  private final aph P;
  private final Provider<akp> Q;
  private final bhg R;
  private final bgw S;
  private final ProfileImageUtils T;
  private final ProfileEventAnalytics U;
  private final Bus V;
  private final HashSet<Integer> W = new HashSet();
  private final apg X = new apg()
  {
    public final void a(anh paramAnonymousanh)
    {
      int i = aph.a(paramAnonymousanh);
      anr localanr;
      long l;
      if (ProfileFragment.a(ProfileFragment.this).contains(Integer.valueOf(i)))
      {
        ProfileFragment.a(ProfileFragment.this).remove(Integer.valueOf(i));
        if ((paramAnonymousanh instanceof anr))
        {
          localanr = (anr)paramAnonymousanh;
          if (!b) {
            break label108;
          }
          l = a;
          ProfileFragment.b(ProfileFragment.this);
          if (l > akr.z()) {
            a.clear();
          }
        }
      }
      for (;;)
      {
        if ((paramAnonymousanh instanceof aob)) {
          d = false;
        }
        return;
        label108:
        l = a;
        ProfileFragment.b(ProfileFragment.this);
        if (l > akr.z()) {
          a(a);
        }
      }
    }
  };
  protected List<Bitmap> a;
  public CameraViewFlipper b;
  public xn c;
  boolean d = false;
  protected ProfilePictureView e;
  protected AnimatorSet f;
  protected View g;
  protected TextView h;
  protected View i;
  protected ImageView j;
  final bhh k;
  final bgx l;
  private int n = 0;
  private TextView o;
  private TextView p;
  private View q;
  private TextView r;
  private View s;
  private View t;
  private ImageView u;
  private View v;
  private View w;
  private ViewGroup x;
  private ImageView y;
  private ImageView z;
  
  public ProfileFragment()
  {
    this(akr.a(), axo.PROFILE_IMAGE_CACHE, aph.a(), akp.UNSAFE_USER_PROVIDER, new bhg(), new bgw(), ProfileImageUtils.a(), bbo.a(), ProfileEventAnalytics.a());
  }
  
  @SuppressLint({"ValidFragment"})
  private ProfileFragment(akr paramakr, axn paramaxn, aph paramaph, Provider<akp> paramProvider, bhg parambhg, bgw parambgw, ProfileImageUtils paramProfileImageUtils, Bus paramBus, ProfileEventAnalytics paramProfileEventAnalytics)
  {
    N = paramakr;
    O = paramaxn;
    P = paramaph;
    Q = paramProvider;
    R = parambhg;
    k = new b((byte)0);
    S = parambgw;
    l = new a();
    a = new ArrayList(5);
    T = paramProfileImageUtils;
    V = paramBus;
    U = paramProfileEventAnalytics;
  }
  
  private void A()
  {
    StringBuilder localStringBuilder = new StringBuilder("profile images - saving profile images with dirty ");
    boolean bool;
    if (!akr.B())
    {
      bool = true;
      localStringBuilder.append(bool);
      if ((!akr.B()) && (a != null) && (a.size() == 5)) {
        break label57;
      }
    }
    label57:
    do
    {
      return;
      bool = false;
      break;
      new StringBuilder("profile images - IsUploading : ").append(d);
    } while (d);
    d = true;
    bhp.b(new Runnable()
    {
      public final void run()
      {
        u();
      }
    });
  }
  
  private void w()
  {
    int i1 = 1;
    Object localObject1 = akr.x();
    Object localObject2 = akr.l();
    int i2 = akr.I();
    String str = auy.b(i2);
    if (TextUtils.isEmpty((CharSequence)localObject1))
    {
      o.setText((CharSequence)localObject2);
      if (i2 > 0)
      {
        p.setVisibility(0);
        p.setText(getResources().getString(2131492928, new Object[] { str }));
        i2 = y();
        if (i2 != 0) {
          break label240;
        }
        label84:
        localObject2 = r;
        if (i1 == 0) {
          break label245;
        }
      }
    }
    label240:
    label245:
    for (localObject1 = K;; localObject1 = L)
    {
      ((TextView)localObject2).setTextColor((ColorStateList)localObject1);
      z.setImageLevel(i2);
      z.setContentDescription(String.valueOf(i2));
      new StringBuilder("refreshNewFriendsButton - LastSeenAddedMeTimestamp: ").append(akr.j()).append(" # of unseen friend requests: ").append(i2);
      x();
      z();
      return;
      p.setVisibility(8);
      break;
      o.setText((CharSequence)localObject1);
      p.setVisibility(0);
      if (i2 > 0)
      {
        localObject1 = getResources().getString(2131493339, new Object[] { localObject2, str });
        p.setText((CharSequence)localObject1);
        break;
      }
      p.setText((CharSequence)localObject2);
      break;
      i1 = 0;
      break label84;
    }
  }
  
  @awj
  private void x()
  {
    Object localObject = (akp)Q.get();
    if ((localObject == null) || (!mInitialized)) {}
    do
    {
      return;
      if (!O.d("snaptag")) {
        break;
      }
      localObject = new bhi(axo.PROFILE_IMAGE_CACHE, "snaptag");
      bhg localbhg = R;
      new bhg.1(localbhg, (bhj)localObject, k).executeOnExecutor(mExecutor, new Void[0]);
      if (ProfileImageUtils.a(O))
      {
        localObject = S;
        new bgw.1((bgw)localObject, l).executeOnExecutor(mExecutor, new Void[0]);
        return;
      }
      j.setImageDrawable(null);
      j.setBackgroundColor(-1);
    } while (!akr.C());
    P.a(getActivity(), ProfileImageUtils.ProfileImageSize.MEDIUM.toString(), akr.l());
    return;
    if (!TextUtils.isEmpty(akr.bc())) {
      P.c(getActivity(), akr.bc());
    }
    a(0);
  }
  
  private int y()
  {
    akp localakp = (akp)Q.get();
    if (localakp == null) {
      return 0;
    }
    return localakp.h();
  }
  
  private void z()
  {
    if (akr.bi())
    {
      u.setImageResource(2130838048);
      u.setContentDescription("red");
      return;
    }
    u.setImageResource(2130838049);
    u.setContentDescription("not red");
  }
  
  protected final void a(int paramInt)
  {
    if (n()) {}
    while (paramInt == i.getVisibility()) {
      return;
    }
    if (paramInt == 0)
    {
      i.setVisibility(0);
      j.setVisibility(8);
      return;
    }
    i.setVisibility(8);
    j.setVisibility(0);
  }
  
  protected final void a(@chc List<Bitmap> paramList)
  {
    if (!super.isAdded()) {
      return;
    }
    F = new AnimationDrawable();
    int i1 = 0;
    while (i1 < paramList.size())
    {
      BitmapDrawable localBitmapDrawable = new BitmapDrawable(getResources(), (Bitmap)paramList.get(i1));
      F.addFrame(localBitmapDrawable, 200);
      i1 += 1;
    }
    F.setOneShot(false);
    j.setImageDrawable(F);
    F.start();
  }
  
  protected final WindowConfiguration.StatusBarDrawMode b()
  {
    return WindowConfiguration.StatusBarDrawMode.DRAW_BEHIND;
  }
  
  public final boolean g()
  {
    if (!m()) {}
    while (l()) {
      return true;
    }
    return super.g();
  }
  
  protected final boolean h_()
  {
    return super.isAdded();
  }
  
  protected final void i()
  {
    e.g = false;
    f = new AnimatorSet();
    f.play(ObjectAnimator.ofFloat(v, "alpha", new float[] { 1.0F })).with(ObjectAnimator.ofFloat(u, "alpha", new float[] { 1.0F })).with(ObjectAnimator.ofFloat(p, "alpha", new float[] { 1.0F })).with(ObjectAnimator.ofFloat(o, "alpha", new float[] { 1.0F })).with(ObjectAnimator.ofFloat(A, "alpha", new float[] { 1.0F })).with(ObjectAnimator.ofFloat(w, "alpha", new float[] { 1.0F })).with(ObjectAnimator.ofFloat(j, "alpha", new float[] { 1.0F })).with(ObjectAnimator.ofFloat(e, "alpha", new float[] { 0.0F })).with(ObjectAnimator.ofFloat(x, "y", new float[] { E.a })).with(ObjectAnimator.ofFloat(x, "scaleX", new float[] { 1.0F })).with(ObjectAnimator.ofFloat(x, "scaleY", new float[] { 1.0F }));
    f.addListener(new Animator.AnimatorListener()
    {
      public final void onAnimationCancel(Animator paramAnonymousAnimator) {}
      
      public final void onAnimationEnd(Animator paramAnonymousAnimator)
      {
        ProfileFragment.d(ProfileFragment.this).setVisibility(4);
        e.setVisibility(4);
        j.setVisibility(0);
        ProfileFragment.c(ProfileFragment.this).setScrollable(true);
        ProfileFragment.c(ProfileFragment.this).setInProfilePictureView(false);
        ProfileFragment.h(ProfileFragment.this).a(new bfk(TitleBarManager.Visibility.VISIBLE));
      }
      
      public final void onAnimationRepeat(Animator paramAnonymousAnimator) {}
      
      public final void onAnimationStart(Animator paramAnonymousAnimator)
      {
        e.getSnapcodeSvgImageView().setVisibility(4);
        ProfileFragment.e(ProfileFragment.this).setVisibility(0);
        ProfileFragment.c(ProfileFragment.this).setBackgroundViewVisibility(0);
        ProfileFragment.d(ProfileFragment.this).setVisibility(4);
        float f1 = fe;
        float f2 = fe;
        ProfileFragment.g(ProfileFragment.this).a(1.0F, 1.0F, f1 - f2);
      }
    });
    f.setDuration(300L);
    f.start();
  }
  
  public final boolean l()
  {
    if ((e != null) && (e.getVisibility() == 0))
    {
      o();
      return true;
    }
    return false;
  }
  
  public final boolean m()
  {
    return (e != null) && (e.getVisibility() == 0) && (!e.f);
  }
  
  public final boolean n()
  {
    return (e != null) && (e.getVisibility() == 0);
  }
  
  public final void o()
  {
    if (f.isStarted()) {
      return;
    }
    A();
    i();
  }
  
  public void onClick(View paramView)
  {
    int i4 = 1;
    boolean bool1;
    boolean bool2;
    label43:
    Object localObject1;
    boolean bool3;
    if ((f != null) && (f.isStarted()))
    {
      bool1 = true;
      if ((b == null) || (!b.e())) {
        break label122;
      }
      bool2 = true;
      localObject1 = new StringBuilder("onClick - animationStarted ").append(bool1).append(", isCameraViewFlipperScrolling ").append(bool2).append(", (mCameraViewFlipper == null) ");
      if (b != null) {
        break label128;
      }
      bool3 = true;
      label87:
      ((StringBuilder)localObject1).append(bool3).append(", view ").append(paramView);
      if ((!bool1) && (!bool2)) {
        break label134;
      }
    }
    label122:
    label128:
    label134:
    do
    {
      return;
      bool1 = false;
      break;
      bool2 = false;
      break label43;
      bool3 = false;
      break label87;
      i1 = paramView.getId();
      if (i1 == 2131362550)
      {
        ProfileEventAnalytics.a(kf.OTHER, AnalyticsEvents.AnalyticsContext.PROFILE_ADDED_ME_PAGE, y(), akr.C());
        V.a(new bev(LeftSwipeContentFragment.ADDED_ME_FRAGMENT));
        return;
      }
      if (i1 == 2131362553)
      {
        ProfileEventAnalytics.a(kf.OTHER, AnalyticsEvents.AnalyticsContext.PROFILE_ADD_FRIENDS_MENU_PAGE, y(), akr.C());
        V.a(new bev(LeftSwipeContentFragment.ADD_FRIENDS_MENU_FRAGMENT));
        return;
      }
      if (i1 == 2131362554)
      {
        ProfileEventAnalytics.a(kf.OTHER, AnalyticsEvents.AnalyticsContext.PROFILE_MY_FRIENDS_PAGE, y(), akr.C());
        V.a(new bev(LeftSwipeContentFragment.FRIENDS_CONTACTS_TOGGLE_FRAGMENT));
        return;
      }
      if (i1 == 2131362556)
      {
        ProfileEventAnalytics.a(kf.OTHER, AnalyticsEvents.AnalyticsContext.SETTINGS, y(), akr.C());
        if (akr.bi())
        {
          akr.j(System.currentTimeMillis());
          akr.r(false);
        }
        V.a(new bev(LeftSwipeContentFragment.SETTINGS_FRAGMENT));
        return;
      }
      if (i1 == 2131362555)
      {
        ProfileEventAnalytics.a(kf.OTHER, AnalyticsEvents.AnalyticsContext.HELP_PAGE, y(), akr.C());
        V.a(new bev(new SnapTagHelpFragment()));
        return;
      }
      if (i1 == 2131361803)
      {
        ProfileEventAnalytics.a(kf.BACK_BUTTON, AnalyticsEvents.AnalyticsContext.CAMERA_PAGE, y(), akr.C());
        V.a(new bdr(1));
        return;
      }
      if ((i1 == 2131361916) || (i1 == 2131362548))
      {
        paramView = auf.a(getActivity(), new Friend(akr.l(), akr.y()));
        mAnalyticsContext = M;
        paramView.setMessage(auv.a(null, 2131493142, new Object[0]));
        paramView.show();
        paramView.getWindow().setSoftInputMode(32);
        return;
      }
    } while ((i1 != 2131362545) && (i1 != 2131362575));
    if (!akr.E())
    {
      if (!akr.E()) {
        new qr(OnboardingTooltip.PROFILE_PICTURES).execute();
      }
      akr.b().putBoolean(SharedPreferenceKey.HAS_SEEN_PROFILE_PICTURES_ONBOARDING_MESSAGE.getKey(), true).apply();
      g.setVisibility(8);
    }
    int i2;
    if (e == null)
    {
      i1 = 1;
      if ((c != null) && (c.b())) {
        break label629;
      }
      i2 = 1;
      label586:
      if ((b != null) && (b.getCurrentPanel() != 1)) {
        break label635;
      }
    }
    label629:
    label635:
    for (int i3 = 1;; i3 = 0)
    {
      if ((i1 == 0) && (i2 == 0) && (i3 == 0)) {
        break label641;
      }
      return;
      i1 = 0;
      break;
      i2 = 0;
      break label586;
    }
    label641:
    ProfileEventAnalytics.a(AnalyticsEvents.AnalyticsContext.PROFILE_PICTURES_PAGE_VIEW, false);
    if ((!c.a()) && (c.b())) {
      c.c();
    }
    if (E == null)
    {
      E = new c((byte)0);
      paramView = new Point();
      getActivity().getWindowManager().getDefaultDisplay().getSize(paramView);
      localObject1 = new int[2];
      x.getLocationOnScreen((int[])localObject1);
      float f1 = localObject1[1];
      float f2 = x.getHeight() / 2.0F;
      float f3 = G + x * 0.89F / 2.0F;
      E.a = x.getY();
      E.c = (f3 - (f1 + f2));
      E.b = (x * 0.89F / x.getWidth());
      E.d = f3;
      E.e = (y / 2.0F);
    }
    f = new AnimatorSet();
    f.play(ObjectAnimator.ofFloat(v, "alpha", new float[] { 0.0F })).with(ObjectAnimator.ofFloat(u, "alpha", new float[] { 0.0F })).with(ObjectAnimator.ofFloat(p, "alpha", new float[] { 0.0F })).with(ObjectAnimator.ofFloat(o, "alpha", new float[] { 0.0F })).with(ObjectAnimator.ofFloat(A, "alpha", new float[] { 0.0F })).with(ObjectAnimator.ofFloat(w, "alpha", new float[] { 0.0F })).with(ObjectAnimator.ofFloat(e, "alpha", new float[] { 1.0F })).with(ObjectAnimator.ofFloat(x, "translationY", new float[] { E.c })).with(ObjectAnimator.ofFloat(x, "scaleX", new float[] { E.b })).with(ObjectAnimator.ofFloat(x, "scaleY", new float[] { E.b }));
    if (C.a != null) {}
    for (int i1 = i4;; i1 = 0)
    {
      if (i1 == 0)
      {
        Object localObject2 = new Point();
        getActivity().getWindowManager().getDefaultDisplay().getSize((Point)localObject2);
        i1 = (int)Math.ceil(0.17500001F * x);
        i2 = G + H;
        i3 = (int)Math.floor(0.65F * x);
        i4 = (int)Math.floor(x * 0.89F);
        int i5 = H;
        paramView = new RectF(i1, i2, i1 + i3, i2 + (i4 - i5 * 2));
        localObject1 = C;
        localObject2 = Bitmap.createBitmap(x, y, Bitmap.Config.ARGB_8888);
        Canvas localCanvas = new Canvas((Bitmap)localObject2);
        Paint localPaint = new Paint();
        localPaint.setColor(0);
        localPaint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
        i1 = ((ProfileCameraMaskView)localObject1).getResources().getColor(2131230721);
        localCanvas.drawARGB(Color.alpha(i1), Color.red(i1), Color.green(i1), Color.green(i1));
        localCanvas.drawRect(paramView, localPaint);
        a = ((Bitmap)localObject2);
        ((ProfileCameraMaskView)localObject1).invalidate();
        ((ProfileCameraMaskView)localObject1).setVisibility(4);
      }
      f.addListener(new Animator.AnimatorListener()
      {
        public final void onAnimationCancel(Animator paramAnonymousAnimator) {}
        
        public final void onAnimationEnd(Animator paramAnonymousAnimator)
        {
          ProfileFragment.c(ProfileFragment.this).setBackgroundViewVisibility(4);
          ProfileFragment.d(ProfileFragment.this).setVisibility(0);
          e.getSnapcodeSvgImageView().setVisibility(0);
          e.setProfilePicturesControlButtonsVisibility(0);
          ProfileFragment.e(ProfileFragment.this).setVisibility(4);
          e.g = true;
          if (j.getDrawable() != null)
          {
            e.a(true);
            j.setVisibility(0);
          }
          for (;;)
          {
            float f1 = fd;
            float f2 = fe;
            ProfileFragment.g(ProfileFragment.this).a(0.65F, 0.65F, f1 - f2);
            ProfileFragment.c(ProfileFragment.this).setInProfilePictureView(true);
            ProfileFragment.h(ProfileFragment.this).a(new bfk(TitleBarManager.Visibility.HIDDEN));
            return;
            e.a(false);
            j.setVisibility(4);
          }
        }
        
        public final void onAnimationRepeat(Animator paramAnonymousAnimator) {}
        
        public final void onAnimationStart(Animator paramAnonymousAnimator)
        {
          e.setVisibility(0);
          ProfileFragment.c(ProfileFragment.this).setScrollable(false);
        }
      });
      f.setDuration(300L);
      f.start();
      return;
    }
  }
  
  public Loader<Cursor> onCreateLoader(int paramInt, Bundle paramBundle)
  {
    switch (paramInt)
    {
    default: 
      return null;
    }
    paramBundle = Uri.withAppendedPath(ContactsContract.Profile.CONTENT_URI, "data");
    return new CursorLoader(getActivity(), paramBundle, new String[] { "display_name", "display_name_source" }, null);
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    nw.d();
    mFragmentLayout = paramLayoutInflater.inflate(2130968713, paramViewGroup, false);
    p = ((TextView)c(2131361916));
    p.setOnClickListener(this);
    o = ((TextView)c(2131362548));
    o.setOnClickListener(this);
    r = ((TextView)c(2131362552));
    q = c(2131362550);
    q.setOnClickListener(this);
    s = c(2131362553);
    s.setOnClickListener(this);
    t = c(2131362554);
    t.setOnClickListener(this);
    u = ((ImageView)c(2131362556));
    u.setOnClickListener(this);
    z();
    v = c(2131362555);
    v.setOnClickListener(this);
    w = c(2131361803);
    w.setOnClickListener(this);
    x = ((ViewGroup)c(2131362545));
    x.setOnClickListener(this);
    i = c(2131362546);
    j = ((ImageView)c(2131362547));
    z = ((ImageView)c(2131362551));
    A = c(2131362549);
    B = ((ViewStub)c(2131362557));
    C = ((ProfileCameraMaskView)c(2131362544));
    g = c(2131362575);
    g.setOnClickListener(this);
    h = ((TextView)c(2131362576));
    paramLayoutInflater = getResources();
    K = paramLayoutInflater.getColorStateList(2131230821);
    L = paramLayoutInflater.getColorStateList(2131230820);
    G = paramLayoutInflater.getDimensionPixelSize(2131296383);
    H = paramLayoutInflater.getDimensionPixelSize(2131296375);
    I = paramLayoutInflater.getString(2131493337);
    J = paramLayoutInflater.getString(2131493340, new Object[] { bbj.a(Emoji.GHOST) });
    getLoaderManager().initLoader$71be8de6(1200, this);
    nw.e();
    return mFragmentLayout;
  }
  
  @bpi
  public void onFriendsWhoAddedMeUpdatedEvent(bcp parambcp)
  {
    w();
  }
  
  @bpi
  public void onImageProfileBitmapReadyForProfile(bcz parambcz)
  {
    new StringBuilder("profile images - received ImageProfileBitmapReadyForProfileEvent for image at index : ").append(mProfileImageIndex);
    Bitmap localBitmap = mBitmap;
    if (localBitmap != null)
    {
      a.add(localBitmap);
      new StringBuilder("profile images - adding bitmap into mProfileImagesList with mProfileImagesList size: ").append(a.size());
    }
    if (mProfileImageIndex == 4)
    {
      if (a.size() == 5)
      {
        j.setVisibility(0);
        e.a(true);
        e.setProfilePicturesControlButtonsVisibility(0);
        a(a);
        long l1 = System.currentTimeMillis();
        if (akr.z() < l1) {
          akr.b().putLong(SharedPreferenceKey.LAST_PROFILE_IMAGES_TAKEN_TIMESTAMP.getKey(), l1).apply();
        }
        akr.d(false);
        akr.b(0);
      }
    }
    else {
      return;
    }
    V.a(new ShowDialogEvent(ShowDialogEvent.DialogType.TOAST, 2131493087));
    v();
    i();
    x();
    new StringBuilder("profile images - failed to process new set of pics with size: ").append(a.size());
  }
  
  public void onLoaderReset(Loader<Cursor> paramLoader) {}
  
  public void onPause()
  {
    super.onPause();
    if ((l()) && (e.f)) {
      v();
    }
    A();
    P.b(1029, X);
    P.b(1030, X);
    d = false;
    W.clear();
  }
  
  @bpi
  public void onProfileImagesFetchedEvent(bdq parambdq)
  {
    x();
  }
  
  public void onResume()
  {
    nw.d();
    super.onResume();
    d = false;
    v();
    P.a(1029, X);
    P.a(1030, X);
    w();
    nw.e();
  }
  
  public void onSharedPreferenceChanged(SharedPreferences paramSharedPreferences, String paramString)
  {
    if ((m.contains(paramString)) && (super.isAdded())) {
      w();
    }
  }
  
  @bpi
  public void onSnapTagCacheUpdatedEvent(bes parambes)
  {
    if (TextUtils.equals(mKey, "snaptag")) {
      x();
    }
  }
  
  public void onStart()
  {
    super.onStart();
    akr.a(this);
  }
  
  public void onStop()
  {
    super.onStop();
    akr.b(this);
    l();
  }
  
  @bpi
  public void onUserLoadedEvent(bfq parambfq)
  {
    w();
  }
  
  public final void p()
  {
    if ((!c.d()) || (f.isStarted())) {
      return;
    }
    ProfileEventAnalytics.a(Long.valueOf(akr.z()));
    n = 0;
    a.clear();
    e.f = true;
    j.setVisibility(4);
    e.setProfilePicturesControlButtonsVisibility(4);
    Object localObject = e;
    AnimatorSet localAnimatorSet1 = new AnimatorSet();
    localAnimatorSet1.play(ObjectAnimator.ofFloat(b, "alpha", new float[] { 0.0F, 1.0F })).with(ObjectAnimator.ofFloat(b, "scaleX", new float[] { 0.5F, 1.0F })).with(ObjectAnimator.ofFloat(b, "scaleY", new float[] { 0.5F, 1.0F }));
    localAnimatorSet1.setDuration(450L);
    AnimatorSet localAnimatorSet2 = new AnimatorSet();
    localAnimatorSet2.play(ObjectAnimator.ofFloat(b, "alpha", new float[] { 1.0F, 0.0F })).with(ObjectAnimator.ofFloat(b, "scaleX", new float[] { 1.0F, 2.0F })).with(ObjectAnimator.ofFloat(b, "scaleY", new float[] { 1.0F, 2.0F })).with(ObjectAnimator.ofFloat(c, "alpha", new float[] { 0.0F, 1.0F })).with(ObjectAnimator.ofFloat(c, "scaleX", new float[] { 0.5F, 1.0F })).with(ObjectAnimator.ofFloat(c, "scaleY", new float[] { 0.5F, 1.0F }));
    localAnimatorSet2.setDuration(450L);
    AnimatorSet localAnimatorSet3 = new AnimatorSet();
    localAnimatorSet3.play(ObjectAnimator.ofFloat(c, "alpha", new float[] { 1.0F, 0.0F })).with(ObjectAnimator.ofFloat(c, "scaleX", new float[] { 1.0F, 2.0F })).with(ObjectAnimator.ofFloat(c, "scaleY", new float[] { 1.0F, 2.0F })).with(ObjectAnimator.ofFloat(d, "alpha", new float[] { 0.0F, 1.0F })).with(ObjectAnimator.ofFloat(d, "scaleX", new float[] { 0.5F, 1.0F })).with(ObjectAnimator.ofFloat(d, "scaleY", new float[] { 0.5F, 1.0F }));
    localAnimatorSet3.setDuration(450L);
    AnimatorSet localAnimatorSet4 = new AnimatorSet();
    localAnimatorSet4.play(ObjectAnimator.ofFloat(d, "alpha", new float[] { 1.0F, 0.0F })).with(ObjectAnimator.ofFloat(d, "scaleX", new float[] { 1.0F, 2.0F })).with(ObjectAnimator.ofFloat(d, "scaleY", new float[] { 1.0F, 2.0F }));
    localAnimatorSet4.setDuration(450L);
    localAnimatorSet1.addListener(new ProfilePictureView.1((ProfilePictureView)localObject));
    localAnimatorSet2.addListener(new ProfilePictureView.2((ProfilePictureView)localObject));
    localAnimatorSet3.addListener(new ProfilePictureView.3((ProfilePictureView)localObject));
    localAnimatorSet4.addListener(new ProfilePictureView.4((ProfilePictureView)localObject));
    localObject = new AnimatorSet();
    ((AnimatorSet)localObject).playSequentially(new Animator[] { localAnimatorSet1, localAnimatorSet2, localAnimatorSet3, localAnimatorSet4 });
    ((AnimatorSet)localObject).start();
  }
  
  public final void q()
  {
    new Handler(Looper.getMainLooper()).postDelayed(new Runnable()
    {
      public final void run()
      {
        new StringBuilder("profile images - capturing profile photo at index ").append(ProfileFragment.i(ProfileFragment.this));
        ProfileFragment.g(ProfileFragment.this).a(new ProfileFragment.d(ProfileFragment.this, (byte)0));
      }
    }, 1000L);
  }
  
  public final void r()
  {
    long l1 = System.currentTimeMillis();
    ProfileEventAnalytics.b(Long.valueOf(akr.z()));
    j.setImageDrawable(null);
    j.setBackgroundColor(-1);
    HashSet localHashSet = W;
    aph localaph = P;
    FragmentActivity localFragmentActivity = getActivity();
    Intent localIntent = localaph.b(localFragmentActivity);
    localIntent.putExtra("op_code", 1029);
    localIntent.putExtra("last_deleted", l1);
    localHashSet.add(Integer.valueOf(localaph.a(localFragmentActivity, localIntent)));
    i();
  }
  
  public final void t()
  {
    if (D == null) {
      return;
    }
    e.b(true);
    if ((a == null) || (a.size() == 0))
    {
      D.setProfileImage(null);
      ProfileEventAnalytics.a(Boolean.valueOf(false));
    }
    for (;;)
    {
      Bitmap localBitmap = D.getBitmapFromView();
      new bhb(getActivity(), localBitmap)
      {
        protected final void a()
        {
          e.b(false);
          bbo.a().a(new ShowDialogEvent(ShowDialogEvent.DialogType.TOAST, 2131493086));
        }
        
        protected final void a(@chc String paramAnonymousString)
        {
          e.b(false);
          Intent localIntent = new Intent("android.intent.action.SEND");
          localIntent.putExtra("android.intent.extra.STREAM", Uri.parse(paramAnonymousString));
          localIntent.setType("image/jpeg");
          startActivity(Intent.createChooser(localIntent, ProfileFragment.j(ProfileFragment.this)));
        }
      }.executeOnExecutor(avf.HIGH_PRIORITY_EXECUTOR, new Void[0]);
      return;
      int i1 = akr.D();
      int i2 = i1 % a.size();
      new StringBuilder("profile images - sharing with profile image index: ").append(i2).append(" sharing count: ").append(i1);
      D.setProfileImage((Bitmap)a.get(i2));
      akr.b(i1 + 1);
      ProfileEventAnalytics.a(Boolean.valueOf(true));
    }
  }
  
  @cbr
  protected final void u()
  {
    ProfileImageUtils.a(ProfileImageUtils.a(a), akr.z(), O);
    HashSet localHashSet = W;
    aph localaph = P;
    Intent localIntent = localaph.b(c);
    localIntent.putExtra("op_code", 1030);
    localHashSet.add(Integer.valueOf(localaph.a(c, localIntent)));
  }
  
  protected final void v()
  {
    n = 0;
    if (e != null) {
      e.f = false;
    }
  }
  
  public final class a
    implements bgx
  {
    protected a() {}
    
    public final void a(List<Bitmap> paramList)
    {
      if ((paramList != null) && (paramList.size() == 5))
      {
        if ((e == null) || (!e.f))
        {
          a = paramList;
          ProfileFragment.this.a(paramList);
        }
      }
      else {
        return;
      }
      paramList = new StringBuilder("profile images - pictures were loaded but user is capturing pictures now with mProfileImagesList size: ");
      if (a == null) {}
      for (int i = 0;; i = a.size())
      {
        paramList.append(i);
        return;
      }
    }
  }
  
  final class b
    implements bhh
  {
    private b() {}
    
    public final void a(fu paramfu)
    {
      if (getActivity() == null) {
        return;
      }
      if (paramfu == null)
      {
        paramfu = ProfileFragment.k(ProfileFragment.this);
        localObject = getActivity();
        ProfileFragment.b(ProfileFragment.this);
        paramfu.c((Context)localObject, akr.bc());
        return;
      }
      if (ProfileFragment.e(ProfileFragment.this) == null) {
        ProfileFragment.l(ProfileFragment.this);
      }
      Object localObject = paramfu.a();
      ProfileFragment.e(ProfileFragment.this).setImageDrawable((Drawable)localObject);
      a(8);
      ProfileFragment.b(ProfileFragment.this);
      int i;
      if (!akr.E())
      {
        ProfileFragment.b(ProfileFragment.this);
        if (akr.aP())
        {
          i = 1;
          if (i == 0) {
            break label242;
          }
          h.setText(ProfileFragment.m(ProfileFragment.this));
          g.setVisibility(0);
        }
      }
      for (;;)
      {
        if (e == null)
        {
          e = ((ProfilePictureView)ProfileFragment.n(ProfileFragment.this).inflate());
          e.setCallback(ProfileFragment.this);
        }
        e.setSnapcodeSvg(paramfu);
        if (ProfileFragment.o(ProfileFragment.this) == null) {
          ProfileFragment.p(ProfileFragment.this);
        }
        ProfileFragment.o(ProfileFragment.this).setSnapcodeSvg(paramfu);
        return;
        i = 0;
        break;
        label242:
        g.setVisibility(8);
      }
    }
  }
  
  static final class c
  {
    public float a;
    public float b;
    public float c;
    public float d;
    public float e;
  }
  
  final class d
    implements wi
  {
    private d() {}
    
    public final void a(Bitmap paramBitmap)
    {
      if (paramBitmap == null)
      {
        ProfileFragment.h(ProfileFragment.this).a(new ShowDialogEvent(ShowDialogEvent.DialogType.TOAST, 2131493087));
        v();
        i();
        return;
      }
      new awx(paramBitmap, BitmapFactory.decodeResource(getResources(), 2130837836), ProfileFragment.i(ProfileFragment.this)).executeOnExecutor(avf.HIGH_PRIORITY_EXECUTOR, new Void[0]);
      paramBitmap = e;
      e = new AnimatorSet();
      e.play(ObjectAnimator.ofFloat(a, "alpha", new float[] { 0.0F, 1.0F }));
      e.setDuration(150L);
      e.addListener(new ProfilePictureView.5(paramBitmap));
      e.start();
      ProfileFragment.q(ProfileFragment.this);
      if (ProfileFragment.i(ProfileFragment.this) >= 5)
      {
        v();
        return;
      }
      new Handler(Looper.getMainLooper()).postDelayed(new Runnable()
      {
        public final void run()
        {
          new StringBuilder("profile images - Capturing profile photo at index ").append(ProfileFragment.i(ProfileFragment.this));
          ProfileFragment.g(ProfileFragment.this).a(new ProfileFragment.d(ProfileFragment.this, (byte)0));
        }
      }, 1000L);
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.addfriends.ProfileFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */