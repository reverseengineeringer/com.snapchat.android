package com.snapchat.android.fragments.addfriends;

import ajv;
import ajx;
import amk;
import amu;
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
import ane;
import aok;
import aol;
import apa;
import atg;
import atx;
import aua;
import auh;
import avl;
import avz;
import awp;
import awq;
import azn;
import baj;
import ban;
import bbp;
import bbz;
import bcq;
import bcr;
import bds;
import bdw;
import bel;
import ber;
import bfw;
import bfw.1;
import bfx;
import bgb;
import bgg;
import bgg.1;
import bgh;
import bgi;
import bgj;
import bgp;
import boh;
import cgb;
import com.snapchat.android.Timber;
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
import di;
import fl;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import javax.inject.Provider;
import nf;
import qb;
import vm;
import wr;

public class ProfileFragment
  extends SnapchatFragment
  implements SharedPreferences.OnSharedPreferenceChangeListener, LoaderManager.LoaderCallbacks<Cursor>, View.OnClickListener, ProfilePictureView.a
{
  private static final Set<String> q = di.a(SharedPreferenceKey.USERNAME.getKey(), SharedPreferenceKey.LAST_SEEN_ADDED_ME_TIMESTAMP.getKey(), SharedPreferenceKey.DISPLAY_NAME.getKey(), SharedPreferenceKey.IDENTITY_RED_GEAR_IS_ON.getKey(), SharedPreferenceKey.HAS_PROFILE_IMAGES.getKey());
  private View A;
  private ViewGroup B;
  private ImageView C;
  private ImageView D;
  private View E;
  private ViewStub F;
  private ProfileCameraMaskView G;
  private SharedProfileSnapcodeView H;
  private c I;
  private AnimationDrawable J;
  private int K;
  private int L;
  private String M;
  private String N;
  private ColorStateList O;
  private ColorStateList P;
  private AnalyticsEvents.AnalyticsContext Q = AnalyticsEvents.AnalyticsContext.PROFILE_MAIN_PAGE;
  private final Provider<ajv> R;
  private final bgg S;
  private final bfw T;
  private final ProfileImageUtils U;
  private final azn V;
  private final ProfileEventAnalytics W;
  private final Bus X;
  private aok Y = new aok()
  {
    public final void a(amk paramAnonymousamk)
    {
      int i = aol.a(paramAnonymousamk);
      amu localamu;
      long l;
      if (ProfileFragment.a(ProfileFragment.this).contains(Integer.valueOf(i)))
      {
        ProfileFragment.a(ProfileFragment.this).remove(Integer.valueOf(i));
        if ((paramAnonymousamk instanceof amu))
        {
          localamu = (amu)paramAnonymousamk;
          if (!b) {
            break label108;
          }
          l = a;
          ProfileFragment.b(ProfileFragment.this);
          if (l > ajx.z()) {
            ProfileFragment.c(ProfileFragment.this).clear();
          }
        }
      }
      for (;;)
      {
        if ((paramAnonymousamk instanceof ane)) {
          g = false;
        }
        return;
        label108:
        l = a;
        ProfileFragment.b(ProfileFragment.this);
        if (l > ajx.z()) {
          ProfileFragment.a(ProfileFragment.this, ProfileFragment.c(ProfileFragment.this));
        }
      }
    }
  };
  List<Bitmap> a;
  public CameraViewFlipper b;
  public wr c;
  final ajx d;
  final awp e;
  final aol f;
  boolean g = false;
  protected ProfilePictureView h;
  protected AnimatorSet i;
  protected View j;
  protected TextView k;
  protected View l;
  protected ImageView m;
  final bgh n;
  final bfx o;
  HashSet<Integer> p = new HashSet();
  private int r = 0;
  private TextView s;
  private TextView t;
  private View u;
  private TextView v;
  private View w;
  private View x;
  private ImageView y;
  private View z;
  
  public ProfileFragment()
  {
    this(ajx.a(), awq.PROFILE_IMAGE_CACHE, aol.a(), ajv.UNSAFE_USER_PROVIDER, new bgg(), new bfw(), ProfileImageUtils.a(), azn.a(), ban.a(), ProfileEventAnalytics.a());
  }
  
  @SuppressLint({"ValidFragment"})
  private ProfileFragment(ajx paramajx, awp paramawp, aol paramaol, Provider<ajv> paramProvider, bgg parambgg, bfw parambfw, ProfileImageUtils paramProfileImageUtils, azn paramazn, Bus paramBus, ProfileEventAnalytics paramProfileEventAnalytics)
  {
    d = paramajx;
    e = paramawp;
    f = paramaol;
    R = paramProvider;
    S = parambgg;
    n = new b((byte)0);
    T = parambfw;
    o = new a((byte)0);
    a = new ArrayList(5);
    U = paramProfileImageUtils;
    V = paramazn;
    X = paramBus;
    W = paramProfileEventAnalytics;
  }
  
  private void a(@cgb List<Bitmap> paramList)
  {
    J = new AnimationDrawable();
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      Object localObject = (Bitmap)paramList.next();
      localObject = new BitmapDrawable(getResources(), (Bitmap)localObject);
      J.addFrame((Drawable)localObject, 200);
    }
    J.setOneShot(false);
    m.setImageDrawable(J);
    J.start();
    Timber.c("ProfileFragment", "profile images - start animating", new Object[0]);
  }
  
  private void u()
  {
    Object localObject1 = ajx.x();
    Object localObject2 = ajx.l();
    int i1 = ajx.I();
    String str = aua.b(i1);
    label92:
    int i2;
    if (TextUtils.isEmpty((CharSequence)localObject1))
    {
      s.setText((CharSequence)localObject2);
      if (i1 > 0)
      {
        t.setVisibility(0);
        t.setText(getResources().getString(2131492928, new Object[] { str }));
        localObject1 = (ajv)R.get();
        if (localObject1 != null) {
          break label266;
        }
        i1 = 0;
        if (i1 != 0) {
          break label274;
        }
        i2 = 1;
        label98:
        localObject2 = v;
        if (i2 == 0) {
          break label279;
        }
      }
    }
    label266:
    label274:
    label279:
    for (localObject1 = O;; localObject1 = P)
    {
      ((TextView)localObject2).setTextColor((ColorStateList)localObject1);
      D.setImageLevel(i1);
      D.setContentDescription(String.valueOf(i1));
      Timber.c("ProfileFragment", "refreshNewFriendsButton - LastSeenAddedMeTimestamp: " + ajx.j() + " # of unseen friend requests: " + i1, new Object[0]);
      v();
      w();
      return;
      t.setVisibility(8);
      break;
      s.setText((CharSequence)localObject1);
      t.setVisibility(0);
      if (i1 > 0)
      {
        localObject1 = getResources().getString(2131493339, new Object[] { localObject2, str });
        t.setText((CharSequence)localObject1);
        break;
      }
      t.setText((CharSequence)localObject2);
      break;
      i1 = ((ajv)localObject1).h();
      break label92;
      i2 = 0;
      break label98;
    }
  }
  
  @avl
  private void v()
  {
    Object localObject = (ajv)R.get();
    if ((localObject == null) || (!mInitialized)) {}
    do
    {
      return;
      Timber.c("ProfileFragment", "profile images - attempting to load snapcode and profile images from cache", new Object[0]);
      if (!e.d("snaptag")) {
        break;
      }
      localObject = new bgi(awq.PROFILE_IMAGE_CACHE, "snaptag");
      bgg localbgg = S;
      new bgg.1(localbgg, (bgj)localObject, n).executeOnExecutor(mExecutor, new Void[0]);
      if (ProfileImageUtils.a(e))
      {
        localObject = T;
        new bfw.1((bfw)localObject, o).executeOnExecutor(mExecutor, new Void[0]);
        return;
      }
      Timber.c("ProfileFragment", "profile images - no cached profile images found", new Object[0]);
    } while (!ajx.C());
    Timber.c("ProfileFragment", "profile images - no cached images found and try downloading from server", new Object[0]);
    f.a(getActivity(), ProfileImageUtils.ProfileImageSize.MEDIUM.toString(), ajx.l());
    return;
    if (!TextUtils.isEmpty(ajx.bf())) {
      f.c(getActivity(), ajx.bf());
    }
    a(0);
    Timber.c("ProfileFragment", "profile images - no cached snapcode showing white ghost only", new Object[0]);
  }
  
  private void w()
  {
    if (ajx.bl())
    {
      y.setImageResource(2130838048);
      y.setContentDescription("red");
      return;
    }
    y.setImageResource(2130838049);
    y.setContentDescription("not red");
  }
  
  private void x()
  {
    h.g = false;
    i = new AnimatorSet();
    i.play(ObjectAnimator.ofFloat(z, "alpha", new float[] { 1.0F })).with(ObjectAnimator.ofFloat(y, "alpha", new float[] { 1.0F })).with(ObjectAnimator.ofFloat(t, "alpha", new float[] { 1.0F })).with(ObjectAnimator.ofFloat(s, "alpha", new float[] { 1.0F })).with(ObjectAnimator.ofFloat(E, "alpha", new float[] { 1.0F })).with(ObjectAnimator.ofFloat(A, "alpha", new float[] { 1.0F })).with(ObjectAnimator.ofFloat(m, "alpha", new float[] { 1.0F })).with(ObjectAnimator.ofFloat(h, "alpha", new float[] { 0.0F })).with(ObjectAnimator.ofFloat(B, "y", new float[] { I.a })).with(ObjectAnimator.ofFloat(B, "scaleX", new float[] { 1.0F })).with(ObjectAnimator.ofFloat(B, "scaleY", new float[] { 1.0F }));
    i.addListener(new Animator.AnimatorListener()
    {
      public final void onAnimationCancel(Animator paramAnonymousAnimator)
      {
        Timber.c("ProfileFragment", "profile images - animating back to profile view has been canceled", new Object[0]);
      }
      
      public final void onAnimationEnd(Animator paramAnonymousAnimator)
      {
        ProfileFragment.e(ProfileFragment.this).setVisibility(4);
        h.setVisibility(4);
        m.setVisibility(0);
        ProfileFragment.d(ProfileFragment.this).setScrollable(true);
        ProfileFragment.d(ProfileFragment.this).setInProfilePictureView(false);
        ProfileFragment.i(ProfileFragment.this).a(new bel(TitleBarManager.Visibility.VISIBLE));
        Timber.c("ProfileFragment", "profile images - animated back to profile view", new Object[0]);
      }
      
      public final void onAnimationRepeat(Animator paramAnonymousAnimator) {}
      
      public final void onAnimationStart(Animator paramAnonymousAnimator)
      {
        h.getSnapcodeSvgImageView().setVisibility(4);
        ProfileFragment.f(ProfileFragment.this).setVisibility(0);
        ProfileFragment.d(ProfileFragment.this).setBackgroundViewVisibility(0);
        ProfileFragment.e(ProfileFragment.this).setVisibility(4);
        float f1 = ge;
        float f2 = ge;
        ProfileFragment.h(ProfileFragment.this).a(1.0F, 1.0F, f1 - f2);
      }
    });
    i.setDuration(300L);
    i.start();
  }
  
  private void y()
  {
    StringBuilder localStringBuilder = new StringBuilder("profile images - saving profile images with dirty ");
    boolean bool;
    if (!ajx.B())
    {
      bool = true;
      Timber.c("ProfileFragment", bool, new Object[0]);
      if ((!ajx.B()) && (a != null) && (a.size() == 5)) {
        break label69;
      }
    }
    label69:
    do
    {
      return;
      bool = false;
      break;
      Timber.c("ProfileFragment", "profile images - IsUploading : " + g, new Object[0]);
    } while (g);
    g = true;
    bgp.b(new Runnable()
    {
      public final void run()
      {
        Object localObject1 = ProfileFragment.this;
        Object localObject2 = ProfileImageUtils.a(a);
        long l = ajx.z();
        Object localObject3 = e;
        ajx localajx = d;
        ProfileImageUtils.a((List)localObject2, l, (awp)localObject3);
        localObject2 = p;
        localObject1 = f;
        localObject3 = ((aol)localObject1).b(c);
        ((Intent)localObject3).putExtra("op_code", 1030);
        ((HashSet)localObject2).add(Integer.valueOf(((aol)localObject1).a(c, (Intent)localObject3)));
      }
    });
  }
  
  protected final void a(int paramInt)
  {
    if (m()) {}
    while (paramInt == l.getVisibility()) {
      return;
    }
    if (paramInt == 0)
    {
      l.setVisibility(0);
      m.setVisibility(8);
      return;
    }
    l.setVisibility(8);
    m.setVisibility(0);
  }
  
  protected final WindowConfiguration.StatusBarDrawMode b()
  {
    return WindowConfiguration.StatusBarDrawMode.DRAW_BEHIND;
  }
  
  public final boolean g()
  {
    if (!l()) {}
    while (i()) {
      return true;
    }
    return super.g();
  }
  
  public final boolean i()
  {
    if ((h != null) && (h.getVisibility() == 0))
    {
      n();
      return true;
    }
    return false;
  }
  
  protected final boolean j_()
  {
    return super.isAdded();
  }
  
  public final boolean l()
  {
    return (h != null) && (h.getVisibility() == 0) && (!h.f);
  }
  
  public final boolean m()
  {
    return (h != null) && (h.getVisibility() == 0);
  }
  
  public final void n()
  {
    if (i.isStarted()) {
      return;
    }
    y();
    x();
  }
  
  public final void o()
  {
    if ((!c.d()) || (i.isStarted())) {
      return;
    }
    ProfileEventAnalytics.a(Long.valueOf(ajx.z()));
    r = 0;
    a.clear();
    h.f = true;
    m.setVisibility(4);
    h.setProfilePicturesControlButtonsVisibility(4);
    Object localObject = h;
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
  
  public void onClick(View paramView)
  {
    int i1 = 1;
    boolean bool1;
    boolean bool2;
    label43:
    Object localObject1;
    if ((i != null) && (i.isStarted()))
    {
      bool1 = true;
      if ((b == null) || (!b.e())) {
        break label147;
      }
      bool2 = true;
      localObject1 = new StringBuilder("onClick - animationStarted ").append(bool1).append(", isCameraViewFlipperScrolling ").append(bool2).append(", (mCameraViewFlipper == null) ");
      if (b != null) {
        break label153;
      }
      bool3 = true;
      label87:
      Timber.c("ProfileFragment", bool3 + ", view " + paramView, new Object[0]);
      if ((!bool1) && (!bool2)) {
        break label159;
      }
      Timber.c("ProfileFragment", "Ignore the click event when any animation or scroll is going on.", new Object[0]);
    }
    label147:
    label153:
    label159:
    int i2;
    do
    {
      return;
      bool1 = false;
      break;
      bool2 = false;
      break label43;
      bool3 = false;
      break label87;
      i2 = paramView.getId();
      if (i2 == 2131362551)
      {
        X.a(new bdw(LeftSwipeContentFragment.ADDED_ME_FRAGMENT));
        return;
      }
      if (i2 == 2131362554)
      {
        X.a(new bdw(LeftSwipeContentFragment.ADD_FRIENDS_MENU_FRAGMENT));
        return;
      }
      if (i2 == 2131362555)
      {
        X.a(new bdw(LeftSwipeContentFragment.FRIENDS_CONTACTS_TOGGLE_FRAGMENT));
        return;
      }
      if (i2 == 2131362557)
      {
        if (ajx.bl())
        {
          ajx.j(System.currentTimeMillis());
          ajx.s(false);
        }
        X.a(new bdw(LeftSwipeContentFragment.SETTINGS_FRAGMENT));
        return;
      }
      if (i2 == 2131362556)
      {
        X.a(new bdw(new SnapTagHelpFragment()));
        return;
      }
      if (i2 == 2131361802)
      {
        X.a(new bcr(1));
        return;
      }
      if ((i2 == 2131361916) || (i2 == 2131362549))
      {
        paramView = atg.a(getActivity(), new Friend(ajx.l(), ajx.y()));
        mAnalyticsContext = Q;
        paramView.setMessage(atx.a(null, 2131493143, new Object[0]));
        paramView.show();
        paramView.getWindow().setSoftInputMode(32);
        return;
      }
    } while ((i2 != 2131362546) && (i2 != 2131362576));
    Timber.c("ProfileFragment", "profile images - user clicks the snapcode button or profile pics tooltips", new Object[0]);
    if (!ajx.E())
    {
      if (!ajx.E()) {
        new qb(OnboardingTooltip.PROFILE_PICTURES).f();
      }
      ajx.b().putBoolean(SharedPreferenceKey.HAS_SEEN_PROFILE_PICTURES_ONBOARDING_MESSAGE.getKey(), true).apply();
      j.setVisibility(8);
    }
    if (h == null)
    {
      bool1 = true;
      if ((c != null) && (c.b())) {
        break label608;
      }
      bool2 = true;
      label528:
      if ((b != null) && (b.getCurrentPanel() != 1)) {
        break label614;
      }
    }
    label608:
    label614:
    for (boolean bool3 = true;; bool3 = false)
    {
      if ((!bool1) && (!bool2) && (!bool3)) {
        break label620;
      }
      Timber.c("ProfileFragment", "profile images - ignore animateToProfilePictureView if profile picture view is not initialized(%s), or no front camera(%s), or current page is CAMERA_PAGE(%s)", new Object[] { Boolean.valueOf(bool1), Boolean.valueOf(bool2), Boolean.valueOf(bool3) });
      return;
      bool1 = false;
      break;
      bool2 = false;
      break label528;
    }
    label620:
    ProfileEventAnalytics.a(AnalyticsEvents.AnalyticsContext.PROFILE_PICTURES_PAGE_VIEW, false);
    if ((!c.a()) && (c.b())) {
      c.c();
    }
    if (I == null)
    {
      I = new c((byte)0);
      paramView = new Point();
      getActivity().getWindowManager().getDefaultDisplay().getSize(paramView);
      localObject1 = new int[2];
      B.getLocationOnScreen((int[])localObject1);
      float f1 = localObject1[1];
      float f2 = B.getHeight() / 2.0F;
      float f3 = K + x * 0.89F / 2.0F;
      I.a = B.getY();
      I.c = (f3 - (f1 + f2));
      I.b = (x * 0.89F / B.getWidth());
      I.d = f3;
      I.e = (y / 2.0F);
    }
    i = new AnimatorSet();
    i.play(ObjectAnimator.ofFloat(z, "alpha", new float[] { 0.0F })).with(ObjectAnimator.ofFloat(y, "alpha", new float[] { 0.0F })).with(ObjectAnimator.ofFloat(t, "alpha", new float[] { 0.0F })).with(ObjectAnimator.ofFloat(s, "alpha", new float[] { 0.0F })).with(ObjectAnimator.ofFloat(E, "alpha", new float[] { 0.0F })).with(ObjectAnimator.ofFloat(A, "alpha", new float[] { 0.0F })).with(ObjectAnimator.ofFloat(h, "alpha", new float[] { 1.0F })).with(ObjectAnimator.ofFloat(B, "translationY", new float[] { I.c })).with(ObjectAnimator.ofFloat(B, "scaleX", new float[] { I.b })).with(ObjectAnimator.ofFloat(B, "scaleY", new float[] { I.b }));
    if (G.a != null) {}
    for (;;)
    {
      if (i1 == 0)
      {
        Object localObject2 = new Point();
        getActivity().getWindowManager().getDefaultDisplay().getSize((Point)localObject2);
        i1 = (int)Math.ceil(0.17500001F * x);
        i2 = K + L;
        int i3 = (int)Math.floor(0.65F * x);
        int i4 = (int)Math.floor(x * 0.89F);
        int i5 = L;
        paramView = new RectF(i1, i2, i1 + i3, i2 + (i4 - i5 * 2));
        localObject1 = G;
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
      i.addListener(new Animator.AnimatorListener()
      {
        public final void onAnimationCancel(Animator paramAnonymousAnimator)
        {
          Timber.c("ProfileFragment", "profile images - animating to profile picture view has been canceled", new Object[0]);
        }
        
        public final void onAnimationEnd(Animator paramAnonymousAnimator)
        {
          ProfileFragment.d(ProfileFragment.this).setBackgroundViewVisibility(4);
          ProfileFragment.e(ProfileFragment.this).setVisibility(0);
          h.getSnapcodeSvgImageView().setVisibility(0);
          h.setProfilePicturesControlButtonsVisibility(0);
          ProfileFragment.f(ProfileFragment.this).setVisibility(4);
          h.g = true;
          if (m.getDrawable() != null)
          {
            h.a(true);
            m.setVisibility(0);
          }
          for (;;)
          {
            float f1 = gd;
            float f2 = ge;
            ProfileFragment.h(ProfileFragment.this).a(0.65F, 0.65F, f1 - f2);
            ProfileFragment.d(ProfileFragment.this).setInProfilePictureView(true);
            ProfileFragment.i(ProfileFragment.this).a(new bel(TitleBarManager.Visibility.HIDDEN));
            Timber.c("ProfileFragment", "profile images - animated into profile picture view", new Object[0]);
            return;
            h.a(false);
            m.setVisibility(4);
          }
        }
        
        public final void onAnimationRepeat(Animator paramAnonymousAnimator) {}
        
        public final void onAnimationStart(Animator paramAnonymousAnimator)
        {
          h.setVisibility(0);
          ProfileFragment.d(ProfileFragment.this).setScrollable(false);
        }
      });
      i.setDuration(300L);
      i.start();
      return;
      i1 = 0;
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
    nf.d();
    mFragmentLayout = paramLayoutInflater.inflate(2130968711, paramViewGroup, false);
    t = ((TextView)c(2131361916));
    t.setOnClickListener(this);
    s = ((TextView)c(2131362549));
    s.setOnClickListener(this);
    v = ((TextView)c(2131362553));
    u = c(2131362551);
    u.setOnClickListener(this);
    w = c(2131362554);
    w.setOnClickListener(this);
    x = c(2131362555);
    x.setOnClickListener(this);
    y = ((ImageView)c(2131362557));
    y.setOnClickListener(this);
    w();
    z = c(2131362556);
    z.setOnClickListener(this);
    A = c(2131361802);
    A.setOnClickListener(this);
    B = ((ViewGroup)c(2131362546));
    B.setOnClickListener(this);
    l = c(2131362547);
    m = ((ImageView)c(2131362548));
    D = ((ImageView)c(2131362552));
    E = c(2131362550);
    F = ((ViewStub)c(2131362558));
    G = ((ProfileCameraMaskView)c(2131362545));
    j = c(2131362576);
    j.setOnClickListener(this);
    k = ((TextView)c(2131362577));
    paramLayoutInflater = getResources();
    O = paramLayoutInflater.getColorStateList(2131230819);
    P = paramLayoutInflater.getColorStateList(2131230818);
    K = paramLayoutInflater.getDimensionPixelSize(2131296382);
    L = paramLayoutInflater.getDimensionPixelSize(2131296374);
    M = paramLayoutInflater.getString(2131493337);
    N = paramLayoutInflater.getString(2131493340, new Object[] { baj.a(Emoji.GHOST) });
    getLoaderManager().initLoader$71be8de6(1200, this);
    nf.e();
    return mFragmentLayout;
  }
  
  @boh
  public void onFriendsWhoAddedMeUpdatedEvent(bbp parambbp)
  {
    u();
  }
  
  @boh
  public void onImageProfileBitmapReadyForProfile(bbz parambbz)
  {
    parambbz = mBitmap;
    a.add(parambbz);
    if (a.size() == 5)
    {
      a(a);
      m.setVisibility(0);
      h.a(true);
      h.setProfilePicturesControlButtonsVisibility(0);
      long l1 = System.currentTimeMillis();
      if (ajx.z() < l1) {
        ajx.b().putLong(SharedPreferenceKey.LAST_PROFILE_IMAGES_TAKEN_TIMESTAMP.getKey(), l1).apply();
      }
      ajx.d(false);
      ajx.b(0);
    }
  }
  
  public void onLoaderReset(Loader<Cursor> paramLoader) {}
  
  public void onPause()
  {
    super.onPause();
    if ((i()) && (h.f)) {
      t();
    }
    y();
    f.b(1029, Y);
    f.b(1030, Y);
    g = false;
    p.clear();
  }
  
  @boh
  public void onProfileImagesFetchedEvent(bcq parambcq)
  {
    v();
  }
  
  public void onResume()
  {
    nf.d();
    super.onResume();
    g = false;
    t();
    f.a(1029, Y);
    f.a(1030, Y);
    u();
    nf.e();
  }
  
  public void onSharedPreferenceChanged(SharedPreferences paramSharedPreferences, String paramString)
  {
    if ((q.contains(paramString)) && (super.isAdded())) {
      u();
    }
  }
  
  @boh
  public void onSnapTagCacheUpdatedEvent(bds parambds)
  {
    if (TextUtils.equals(mKey, "snaptag")) {
      v();
    }
  }
  
  public void onStart()
  {
    super.onStart();
    ajx.a(this);
  }
  
  public void onStop()
  {
    super.onStop();
    ajx.b(this);
    i();
  }
  
  @boh
  public void onUserLoadedEvent(ber paramber)
  {
    u();
  }
  
  public final void p()
  {
    new Handler(Looper.getMainLooper()).postDelayed(new Runnable()
    {
      public final void run()
      {
        Timber.c("ProfileFragment", "profile images - capturing profile photo at index " + ProfileFragment.j(ProfileFragment.this), new Object[0]);
        ProfileFragment.h(ProfileFragment.this).a(new ProfileFragment.d(ProfileFragment.this, (byte)0));
      }
    }, 1000L);
  }
  
  public final void q()
  {
    long l1 = System.currentTimeMillis();
    Timber.c("ProfileFragment", "profile images - deleting profile images with timestamp: " + l1, new Object[0]);
    ProfileEventAnalytics.b(Long.valueOf(ajx.z()));
    m.setImageDrawable(null);
    m.setBackgroundColor(-1);
    HashSet localHashSet = p;
    aol localaol = f;
    FragmentActivity localFragmentActivity = getActivity();
    Intent localIntent = localaol.b(localFragmentActivity);
    localIntent.putExtra("op_code", 1029);
    localIntent.putExtra("last_deleted", l1);
    localHashSet.add(Integer.valueOf(localaol.a(localFragmentActivity, localIntent)));
    x();
  }
  
  public final void r()
  {
    Timber.c("ProfileFragment", "profile images - sharing profile images", new Object[0]);
    if (H == null) {
      return;
    }
    h.b(true);
    if ((a == null) || (a.size() == 0))
    {
      Timber.c("ProfileFragment", "profile images - sharing without profile images", new Object[0]);
      H.setProfileImage(null);
      ProfileEventAnalytics.a(Boolean.valueOf(false));
    }
    for (;;)
    {
      Bitmap localBitmap = H.getBitmapFromView();
      new bgb(getActivity(), localBitmap)
      {
        protected final void a()
        {
          Timber.c("ProfileFragment", "profile images - shared image failed to be inserted into media store", new Object[0]);
          h.b(false);
          ban.a().a(new ShowDialogEvent(ShowDialogEvent.DialogType.TOAST, 2131493086));
        }
        
        protected final void a(String paramAnonymousString)
        {
          Timber.c("ProfileFragment", "profile images - shared image was inserted into media store successfully! " + paramAnonymousString, new Object[0]);
          h.b(false);
          Intent localIntent = new Intent("android.intent.action.SEND");
          localIntent.putExtra("android.intent.extra.STREAM", Uri.parse(paramAnonymousString));
          localIntent.setType("image/jpeg");
          startActivity(Intent.createChooser(localIntent, ProfileFragment.k(ProfileFragment.this)));
        }
      }.executeOnExecutor(auh.HIGH_PRIORITY_EXECUTOR, new Void[0]);
      return;
      int i1 = ajx.D();
      int i2 = i1 % a.size();
      Timber.c("ProfileFragment", "profile images - sharing with profile image index: " + i2 + " sharing count: " + i1, new Object[0]);
      H.setProfileImage((Bitmap)a.get(i2));
      ajx.b(i1 + 1);
      ProfileEventAnalytics.a(Boolean.valueOf(true));
    }
  }
  
  protected final void t()
  {
    r = 0;
    if (h != null) {
      h.f = false;
    }
  }
  
  final class a
    implements bfx
  {
    private a() {}
    
    public final void a(List<Bitmap> paramList)
    {
      if (paramList == null)
      {
        Timber.f("ProfileFragment", "profile images - onProfileImagesLoaded but bitmapList is null", new Object[0]);
        return;
      }
      if (paramList.size() != 5)
      {
        Timber.f("ProfileFragment", "profile images - loaded profile images from cache but the number of images is wrong!", new Object[0]);
        return;
      }
      ProfileFragment.b(ProfileFragment.this, paramList);
      ProfileFragment.a(ProfileFragment.this, paramList);
      Timber.c("ProfileFragment", "profile images - pictures were loaded from cache", new Object[0]);
    }
  }
  
  final class b
    implements bgh
  {
    private b() {}
    
    public final void a(fl paramfl)
    {
      if (getActivity() == null)
      {
        Timber.e("ProfileFragment", "getActivity() returned null in onSvgLoaded() we need to figure this out!", new Object[0]);
        return;
      }
      if (paramfl == null)
      {
        paramfl = ProfileFragment.l(ProfileFragment.this);
        localObject = getActivity();
        ProfileFragment.b(ProfileFragment.this);
        paramfl.c((Context)localObject, ajx.bf());
        return;
      }
      if (ProfileFragment.f(ProfileFragment.this) == null) {
        ProfileFragment.m(ProfileFragment.this);
      }
      Object localObject = paramfl.a();
      ProfileFragment.f(ProfileFragment.this).setImageDrawable((Drawable)localObject);
      a(8);
      ProfileFragment.b(ProfileFragment.this);
      int i;
      if (!ajx.E())
      {
        ProfileFragment.b(ProfileFragment.this);
        if (ajx.aS())
        {
          i = 1;
          if (i == 0) {
            break label264;
          }
          k.setText(ProfileFragment.n(ProfileFragment.this));
          j.setVisibility(0);
        }
      }
      for (;;)
      {
        if (h == null)
        {
          h = ((ProfilePictureView)ProfileFragment.o(ProfileFragment.this).inflate());
          h.setCallback(ProfileFragment.this);
        }
        h.setSnapcodeSvg(paramfl);
        if (ProfileFragment.p(ProfileFragment.this) == null) {
          ProfileFragment.q(ProfileFragment.this);
        }
        ProfileFragment.p(ProfileFragment.this).setSnapcodeSvg(paramfl);
        Timber.c("ProfileFragment", "profile images - snapcode was loaded from cache", new Object[0]);
        return;
        i = 0;
        break;
        label264:
        j.setVisibility(8);
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
    implements vm
  {
    private d() {}
    
    public final void a(Bitmap paramBitmap)
    {
      if (paramBitmap == null)
      {
        ProfileFragment.i(ProfileFragment.this).a(new ShowDialogEvent(ShowDialogEvent.DialogType.TOAST, 2131493087));
        t();
        ProfileFragment.r(ProfileFragment.this);
        return;
      }
      new avz(paramBitmap, BitmapFactory.decodeResource(getResources(), 2130837836)).executeOnExecutor(auh.HIGH_PRIORITY_EXECUTOR, new Void[0]);
      paramBitmap = h;
      e = new AnimatorSet();
      e.play(ObjectAnimator.ofFloat(a, "alpha", new float[] { 0.0F, 1.0F }));
      e.setDuration(150L);
      e.addListener(new ProfilePictureView.5(paramBitmap));
      e.start();
      ProfileFragment.s(ProfileFragment.this);
      if (ProfileFragment.j(ProfileFragment.this) >= 5)
      {
        t();
        return;
      }
      new Handler(Looper.getMainLooper()).postDelayed(new Runnable()
      {
        public final void run()
        {
          Timber.c("ProfileFragment", "profile images - Capturing profile photo at index " + ProfileFragment.j(ProfileFragment.this), new Object[0]);
          ProfileFragment.h(ProfileFragment.this).a(new ProfileFragment.d(ProfileFragment.this, (byte)0));
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