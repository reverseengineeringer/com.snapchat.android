package com.snapchat.android.preview;

import aex;
import aho;
import aho.1;
import ahs;
import aim;
import ajc;
import ajj.a;
import ajk;
import ajl;
import ajm;
import ajq;
import ajv;
import ajx;
import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.AnimatorSet.Builder;
import android.animation.ObjectAnimator;
import android.annotation.SuppressLint;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.preference.PreferenceManager;
import android.support.v4.app.FragmentActivity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager.LayoutParams;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.view.animation.AnimationUtils;
import android.view.inputmethod.InputMethodManager;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.ImageButton;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import anh;
import anh.a;
import apg.a;
import api;
import aqb;
import arn;
import asv;
import aur;
import aut;
import avh;
import avl;
import avq;
import awx;
import axc;
import ban;
import bap;
import bas;
import baw;
import bba;
import bbc;
import bbh;
import bbi;
import bcl;
import bco;
import bcz;
import bdj;
import bdn;
import bdt;
import bel;
import ber;
import bfj;
import bgb;
import bgf;
import bgp;
import bgr;
import bgr.a;
import bgt;
import boh;
import cgb;
import com.snapchat.android.LandingPageActivity;
import com.snapchat.android.Timber;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.analytics.CameraEventAnalytics;
import com.snapchat.android.analytics.CameraEventAnalytics.CameraContext;
import com.snapchat.android.analytics.CameraEventAnalytics.SaveSnapContext;
import com.snapchat.android.analytics.NetworkAnalytics;
import com.snapchat.android.analytics.framework.DictionaryEasyMetric;
import com.snapchat.android.analytics.framework.EasyMetric;
import com.snapchat.android.database.SharedPreferenceKey;
import com.snapchat.android.model.Friend;
import com.snapchat.android.model.MediaMailingMetadata;
import com.snapchat.android.model.Mediabryo;
import com.snapchat.android.model.Mediabryo.SnapType;
import com.snapchat.android.ui.CanvasViewBase;
import com.snapchat.android.ui.SendToBottomPanelView;
import com.snapchat.android.ui.SendToBottomPanelView.1;
import com.snapchat.android.ui.SendToBottomPanelView.2;
import com.snapchat.android.ui.SnapEditorView;
import com.snapchat.android.ui.SnapEditorView.a;
import com.snapchat.android.ui.SnapEditorView.b;
import com.snapchat.android.ui.SwipeImageView;
import com.snapchat.android.ui.SwipeImageView.a;
import com.snapchat.android.ui.SwipeViewState;
import com.snapchat.android.ui.caption.FatCaptionView;
import com.snapchat.android.ui.caption.SnapCaptionView;
import com.snapchat.android.ui.swipefilters.FilterPageType;
import com.snapchat.android.ui.window.WindowConfiguration.StatusBarDrawMode;
import com.snapchat.android.util.TitleBarManager.Visibility;
import com.snapchat.android.util.debug.ReleaseManager;
import com.snapchat.android.util.eventbus.CameraDisplayState;
import com.snapchat.android.util.eventbus.DrawingEvent;
import com.snapchat.android.util.eventbus.DrawingEvent.DrawingEventType;
import com.snapchat.android.util.eventbus.InChatSnapEvent;
import com.snapchat.android.util.eventbus.QuickSnapEvent;
import com.snapchat.android.util.fragment.SnapchatFragment;
import com.snapchat.android.util.save.SaveMediaNotificationsToShow;
import com.snapchat.videotranscoder.video.FragmentShader.Filter;
import com.squareup.otto.Bus;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import net.simonvt.numberpicker.SnapchatTimePicker;
import net.simonvt.numberpicker.SnapchatTimePicker.e;
import no;
import np;
import oj;
import wz;
import ys;
import yt;

@avl
public class SnapPreviewFragment
  extends SnapchatFragment
  implements anh.a, apg.a, SnapEditorView.b, SwipeImageView.a
{
  private View A;
  private int B;
  private bgr<View> C;
  private CheckBox D;
  private bgr<View> E;
  private bgr<View> F;
  private InChatSnapEvent G;
  private QuickSnapEvent H;
  private ImageButton I;
  private boolean J = false;
  private LinkedHashSet<ajc> K = new LinkedHashSet();
  private bgr<View> L;
  private bgr<SendToBottomPanelView> M;
  private DictionaryEasyMetric N;
  private final oj O;
  private final aho P;
  private ajv Q;
  private SnapEditorView.a R;
  private final yt S;
  private final ys T;
  private final no U;
  private final NetworkAnalytics V;
  private final wz W;
  private final bfj X;
  private final ahs Y;
  private final Bus Z;
  public aim a;
  private final avq aa;
  private boolean ab = false;
  private Handler ac = new Handler();
  private a ad;
  private long ae = -1L;
  public SnapEditorView b;
  protected anh c;
  public bcz d;
  public aex e;
  public final bgt f;
  private CanvasViewBase g;
  private TextView h;
  private ImageButton i;
  private bgr<View> j;
  private boolean k = false;
  private boolean l = false;
  private Button m;
  private bgr<ImageButton> n;
  private bgr<View> o;
  private bgr<View> p;
  private bgr<ImageButton> q;
  private View r;
  private ImageButton s;
  private ImageButton t;
  private asv u;
  private int v;
  private SharedPreferences w;
  private bgr<SnapchatTimePicker> x;
  private View y;
  private bgr<RelativeLayout> z;
  
  public SnapPreviewFragment()
  {
    this(new yt(), new ys(), no.a(), NetworkAnalytics.a(), new oj(), wz.a(), new bfj(), aho.a(), new bgt(), ban.a(), ahs.c(), avq.a());
  }
  
  @SuppressLint({"ValidFragment"})
  private SnapPreviewFragment(yt paramyt, ys paramys, no paramno, NetworkAnalytics paramNetworkAnalytics, oj paramoj, wz paramwz, bfj parambfj, aho paramaho, bgt parambgt, Bus paramBus, ahs paramahs, avq paramavq)
  {
    S = paramyt;
    T = paramys;
    U = paramno;
    V = paramNetworkAnalytics;
    O = paramoj;
    W = paramwz;
    X = parambfj;
    P = paramaho;
    f = parambgt;
    Z = paramBus;
    Y = paramahs;
    aa = paramavq;
  }
  
  private void A()
  {
    c.notifyDataSetChanged();
    Iterator localIterator = K.iterator();
    String str2 = "";
    for (String str1 = ""; localIterator.hasNext(); str1 = ", ")
    {
      ajc localajc = (ajc)localIterator.next();
      str2 = str2 + str1 + mDisplayName;
    }
    ((SendToBottomPanelView)M.a()).setText(str2);
  }
  
  private void B()
  {
    RelativeLayout.LayoutParams localLayoutParams = (RelativeLayout.LayoutParams)r.getLayoutParams();
    localLayoutParams.addRule(12, 0);
    localLayoutParams.addRule(2, 2131362615);
    r.setLayoutParams(localLayoutParams);
    M.a(0);
    ((SendToBottomPanelView)M.a()).setAlpha(1.0F);
    I.setVisibility(8);
  }
  
  private void C()
  {
    RelativeLayout.LayoutParams localLayoutParams = (RelativeLayout.LayoutParams)r.getLayoutParams();
    localLayoutParams.addRule(12, 1);
    localLayoutParams.addRule(2, 0);
    r.setLayoutParams(localLayoutParams);
    I.setVisibility(0);
    M.a(8);
  }
  
  private int D()
  {
    int i1 = 3;
    if (w != null) {
      i1 = w.getInt(SharedPreferenceKey.SNAP_PREFERRED_TIME.getKey(), 3);
    }
    return i1;
  }
  
  private void a(float paramFloat)
  {
    if (paramFloat == 0.0F) {
      a(8);
    }
    for (;;)
    {
      s.setAlpha(paramFloat);
      i.setAlpha(paramFloat);
      r.setAlpha(paramFloat);
      m.setAlpha(paramFloat);
      if (M.b()) {
        ((SendToBottomPanelView)M.a()).setAlpha(paramFloat);
      }
      return;
      a(0);
    }
  }
  
  private void a(int paramInt)
  {
    s.setVisibility(paramInt);
    i.setVisibility(paramInt);
    t.setVisibility(paramInt);
    r.setVisibility(paramInt);
    m.setVisibility(paramInt);
  }
  
  private void a(boolean paramBoolean)
  {
    Object localObject = o;
    if (paramBoolean)
    {
      i1 = 0;
      ((bgr)localObject).a(i1);
      localObject = i;
      if (!paramBoolean) {
        break label137;
      }
      i1 = 8;
      label28:
      ((ImageButton)localObject).setVisibility(i1);
      localObject = m;
      if (!paramBoolean) {
        break label142;
      }
    }
    label137:
    label142:
    for (int i1 = 8;; i1 = 0)
    {
      ((Button)localObject).setVisibility(i1);
      if (paramBoolean)
      {
        j.a().setBackgroundColor(g.getColor());
        C.a().setBackgroundColor(g.getLastColor());
        o.a(0);
        p.a(4);
        if (g.getNumberOfStrokes() <= 0) {
          break label147;
        }
        q.a(0);
        C.a(0);
      }
      return;
      i1 = 8;
      break;
      i1 = 0;
      break label28;
    }
    label147:
    C.a(8);
    q.a(8);
  }
  
  private void b(float paramFloat)
  {
    MediaMailingMetadata localMediaMailingMetadata = a.mMediaMailingMetadata;
    if ((r()) && (!localMediaMailingMetadata.d().isEmpty()))
    {
      if (paramFloat != 0.0F) {
        break label78;
      }
      if (M.b())
      {
        M.a(4);
        ((SendToBottomPanelView)M.a()).setClickable(false);
      }
    }
    for (;;)
    {
      ((SendToBottomPanelView)M.a()).setAlpha(paramFloat);
      return;
      label78:
      M.a(0);
      ((SendToBottomPanelView)M.a()).setClickable(true);
    }
  }
  
  private void b(boolean paramBoolean)
  {
    t.setClickable(paramBoolean);
    Object localObject = t;
    if (paramBoolean) {}
    for (float f1 = 1.0F;; f1 = 0.3F)
    {
      ((ImageButton)localObject).setAlpha(f1);
      localObject = u;
      if (!paramBoolean) {
        ((asv)localObject).a(1.0F);
      }
      mBounceEnabled = paramBoolean;
      return;
    }
  }
  
  private boolean r()
  {
    return (d != null) || (G != null) || (H != null);
  }
  
  private void t()
  {
    if (a.mIsChatMedia)
    {
      y.setVisibility(8);
      h.setVisibility(8);
      D.setVisibility(8);
    }
  }
  
  private void u()
  {
    ajl localajl = a.mPreviewConfiguration;
    if ((localajl != null) && (mShouldHideSystemUi)) {
      Z.a(new bdt(false));
    }
  }
  
  private void v()
  {
    Object localObject1 = a.mMediaMailingMetadata;
    if ((r()) && (!((MediaMailingMetadata)localObject1).d().isEmpty()))
    {
      ((SendToBottomPanelView)M.a()).setBackgroundColor(getResources().getColor(2131230723));
      ((SendToBottomPanelView)M.a()).setSendButtonOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          if (!n()) {
            return;
          }
          SnapPreviewFragment.u(SnapPreviewFragment.this).a("SNAP_SENT_DELAY", imClientId, "preview_screen");
          paramAnonymousView = imMediaMailingMetadata;
          if (!paramAnonymousView.d().isEmpty())
          {
            SnapPreviewFragment.a(SnapPreviewFragment.this, ajv.a(getActivity()));
            SnapPreviewFragment.v(SnapPreviewFragment.this).e();
          }
          aim localaim;
          if (imSnapType == Mediabryo.SnapType.SNAP)
          {
            paramAnonymousView = (ajk)paramAnonymousView;
            if (!mPostToStories.isEmpty())
            {
              localaim = SnapPreviewFragment.i(SnapPreviewFragment.this);
              if (paramAnonymousView.d().isEmpty()) {
                break label222;
              }
            }
          }
          label222:
          for (boolean bool = true;; bool = false)
          {
            AnalyticsEvents.a(localaim, true, bool, "SEND_TO_SCREEN");
            SnapPreviewFragment.w(SnapPreviewFragment.this).a(new bap(CameraDisplayState.SHOW));
            SnapPreviewFragment.w(SnapPreviewFragment.this).a(new bba());
            SnapPreviewFragment.w(SnapPreviewFragment.this).a(new bdn(SnapPreviewFragment.i(SnapPreviewFragment.this)));
            ((SendToBottomPanelView)SnapPreviewFragment.x(SnapPreviewFragment.this).a()).setSendButtonOnClickListener(null);
            return;
          }
        }
      });
      if (a.mIsChatMedia)
      {
        ((SendToBottomPanelView)M.a()).setClickable(false);
        ((SendToBottomPanelView)M.a()).setOnClickListener(null);
      }
      for (;;)
      {
        localObject4 = "";
        localObject3 = "";
        localObject5 = a.mMediaMailingMetadata;
        localObject1 = localObject3;
        localObject2 = localObject4;
        if (a.mSnapType != Mediabryo.SnapType.SNAP) {
          break;
        }
        localIterator = mPostToStories.iterator();
        for (;;)
        {
          localObject1 = localObject3;
          localObject2 = localObject4;
          if (!localIterator.hasNext()) {
            break;
          }
          localObject1 = (ajc)localIterator.next();
          localObject4 = (String)localObject4 + (String)localObject3 + mDisplayName;
          localObject3 = ", ";
        }
        ((SendToBottomPanelView)M.a()).setClickable(true);
        ((SendToBottomPanelView)M.a()).setOnClickListener(new View.OnClickListener()
        {
          public final void onClick(View paramAnonymousView)
          {
            if (!n()) {
              return;
            }
            SnapPreviewFragment.w(SnapPreviewFragment.this).a(new bdn(SnapPreviewFragment.i(SnapPreviewFragment.this), true));
            new EasyMetric("TAP_RECIPIENTS_IN_PREVIEW").d();
            ((SendToBottomPanelView)SnapPreviewFragment.x(SnapPreviewFragment.this).a()).setOnClickListener(null);
          }
        });
      }
      localObject3 = ((MediaMailingMetadata)localObject5).d().iterator();
      while (((Iterator)localObject3).hasNext())
      {
        localObject4 = (Friend)((Iterator)localObject3).next();
        localObject2 = (String)localObject2 + (String)localObject1 + ((Friend)localObject4).k();
        localObject1 = ", ";
      }
      ((SendToBottomPanelView)M.a()).setText((String)localObject2);
      B();
      A.setVisibility(8);
      if (!a.mIsChatMedia)
      {
        localObject1 = (SendToBottomPanelView)M.a();
        if ((c == null) || (!c.isStarted()))
        {
          f1 = avh.a(b) / 2.0F;
          localObject2 = ObjectAnimator.ofFloat(a, "translationY", new float[] { -1.0F * f1 });
          ((ObjectAnimator)localObject2).setDuration(200L);
          ((ObjectAnimator)localObject2).addListener(new SendToBottomPanelView.1((SendToBottomPanelView)localObject1));
          localObject3 = ObjectAnimator.ofFloat(b, "alpha", new float[] { 0.0F });
          ((ObjectAnimator)localObject3).setDuration(200L);
          ((ObjectAnimator)localObject3).setStartDelay(3000L);
          localObject4 = ObjectAnimator.ofFloat(a, "translationY", new float[] { f1 });
          localObject5 = new AnimatorSet();
          ((AnimatorSet)localObject5).play((Animator)localObject3).with((Animator)localObject4).after((Animator)localObject2);
          ((AnimatorSet)localObject5).addListener(new SendToBottomPanelView.2((SendToBottomPanelView)localObject1));
          c = ((Animator)localObject5);
          ((AnimatorSet)localObject5).start();
        }
      }
    }
    while (a.mSnapType != Mediabryo.SnapType.DISCOVER)
    {
      Object localObject4;
      Object localObject3;
      Object localObject5;
      Object localObject2;
      Iterator localIterator;
      float f1;
      return;
    }
    z();
    C();
    if (aut.a(a)) {
      y.setVisibility(4);
    }
    for (;;)
    {
      h.setVisibility(8);
      A.setVisibility(8);
      t.setVisibility(8);
      return;
      y.setVisibility(8);
    }
  }
  
  private void w()
  {
    if (getActivity() != null)
    {
      Window localWindow = H();
      if (localWindow != null)
      {
        WindowManager.LayoutParams localLayoutParams = localWindow.getAttributes();
        flags &= 0xFDFF;
        localWindow.setAttributes(localLayoutParams);
      }
    }
  }
  
  private void x()
  {
    Z.a(new bel(TitleBarManager.Visibility.HIDDEN));
    int i1;
    label299:
    boolean bool;
    label316:
    label336:
    no localno;
    EasyMetric localEasyMetric;
    if (aut.a(a))
    {
      y.setVisibility(4);
      h.setVisibility(8);
      D.setVisibility(0);
      if (getUserVisibleHint()) {
        Z.a(new baw(1));
      }
      s.setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          ((InputMethodManager)SnapPreviewFragment.a(SnapPreviewFragment.this, "input_method")).hideSoftInputFromWindow(SnapPreviewFragment.b(SnapPreviewFragment.this).getApplicationWindowToken(), 0);
          getActivity().onBackPressed();
        }
      });
      m.setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          if ((SnapPreviewFragment.c(SnapPreviewFragment.this).getCaptionView().i()) && (!SnapPreviewFragment.c(SnapPreviewFragment.this).getCaptionView().g()))
          {
            SnapPreviewFragment.c(SnapPreviewFragment.this).getCaptionView().f();
            return;
          }
          SnapPreviewFragment.c(SnapPreviewFragment.this).a(true);
        }
      });
      o.a(new bgr.a()
      {
        public final void a(View paramAnonymousView)
        {
          ((ImageButton)SnapPreviewFragment.e(SnapPreviewFragment.this).a()).setOnClickListener(new View.OnClickListener()
          {
            public final void onClick(View paramAnonymous2View)
            {
              SnapPreviewFragment.d(SnapPreviewFragment.this);
            }
          });
          ((ImageButton)SnapPreviewFragment.g(SnapPreviewFragment.this).a()).setOnClickListener(new View.OnClickListener()
          {
            public final void onClick(View paramAnonymous2View)
            {
              SnapPreviewFragment.f(SnapPreviewFragment.this);
            }
          });
        }
      });
      i.setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          AnalyticsEvents.i();
          SnapPreviewFragment.d(SnapPreviewFragment.this);
        }
      });
      t.setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          SnapPreviewFragment.h(SnapPreviewFragment.this);
          imMediaMailingMetadata.mSavedInGallery = true;
        }
      });
      z.a(new bgr.a()
      {
        public final void a(View paramAnonymousView)
        {
          SnapPreviewFragment.j(SnapPreviewFragment.this);
        }
      });
      y.setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          if (!SnapPreviewFragment.k(SnapPreviewFragment.this).c())
          {
            if (SnapPreviewFragment.l(SnapPreviewFragment.this)) {
              SnapPreviewFragment.d(SnapPreviewFragment.this);
            }
            SnapPreviewFragment.m(SnapPreviewFragment.this);
          }
        }
      });
      L.a(new bgr.a()
      {
        public final void a(View paramAnonymousView)
        {
          ((ListView)paramAnonymousView.findViewById(2131362727)).setAdapter(c);
        }
      });
      A.setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          if (ajx.J())
          {
            SnapPreviewFragment.n(SnapPreviewFragment.this).show();
            return;
          }
          if (ajq.a().d().size() > 1)
          {
            SnapPreviewFragment.o(SnapPreviewFragment.this);
            return;
          }
          SnapPreviewFragment.p(SnapPreviewFragment.this);
        }
      });
      v();
      i1 = D();
      B = i1;
      h.setText(String.valueOf(i1));
      I.setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          if (!SnapPreviewFragment.q(SnapPreviewFragment.this)) {
            SnapPreviewFragment.r(SnapPreviewFragment.this);
          }
          SnapPreviewFragment.s(SnapPreviewFragment.this);
        }
      });
      D.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener()
      {
        public final void onCheckedChanged(CompoundButton paramAnonymousCompoundButton, boolean paramAnonymousBoolean)
        {
          paramAnonymousCompoundButton = SnapPreviewFragment.c(SnapPreviewFragment.this);
          if (!paramAnonymousBoolean) {}
          for (paramAnonymousBoolean = true;; paramAnonymousBoolean = false)
          {
            paramAnonymousCompoundButton.setAudible(paramAnonymousBoolean);
            return;
          }
        }
      });
      b.getCaptionView().setIsVideoSnap(aut.a(a));
      if (R != null) {
        break label541;
      }
      b.setMediabryo(a);
      localObject = b;
      if (D.isChecked()) {
        break label560;
      }
      bool = true;
      ((SnapEditorView)localObject).setAudible(bool);
      localObject = m;
      if (!k) {
        break label565;
      }
      i1 = 8;
      ((Button)localObject).setVisibility(i1);
      if (b.getSwipeFilterType() == FilterPageType.TURN_ON_FILTERS_PAGE)
      {
        if (ad != null)
        {
          ad.a = true;
          ad = null;
        }
        i.setVisibility(8);
        r.setVisibility(8);
        s.setVisibility(8);
      }
      g.a(v);
      v = avh.d(getActivity());
      localno = U;
      bool = avh.b(v);
      if (mSnapCaptureMetric != null)
      {
        localEasyMetric = mSnapCaptureMetric;
        if (!bool) {
          break label570;
        }
      }
    }
    label541:
    label560:
    label565:
    label570:
    for (Object localObject = "portrait";; localObject = "landscape")
    {
      localEasyMetric.a("orientation", localObject).b(false);
      mSnapCaptureMetric = null;
      localno.b();
      O.a = a.h();
      return;
      if ((getUserVisibleHint()) && (a.mSnapType != Mediabryo.SnapType.DISCOVER)) {
        Z.a(new baw(-1));
      }
      t();
      break;
      b.a(R);
      R = null;
      break label299;
      bool = false;
      break label316;
      i1 = 0;
      break label336;
    }
  }
  
  private void y()
  {
    F.a(0);
  }
  
  private void z()
  {
    if (M.b())
    {
      ((SendToBottomPanelView)M.a()).setClickable(false);
      ((SendToBottomPanelView)M.a()).setOnClickListener(null);
    }
  }
  
  public final void a(ajc paramajc, boolean paramBoolean)
  {
    if (paramBoolean) {
      K.add(paramajc);
    }
    for (;;)
    {
      A();
      return;
      K.remove(paramajc);
    }
  }
  
  public final void a(SwipeImageView paramSwipeImageView)
  {
    if (ajx.ab()) {}
    FilterPageType localFilterPageType2;
    do
    {
      return;
      FilterPageType localFilterPageType1 = paramSwipeImageView.getLeftSwipeFilterPageType();
      localFilterPageType2 = paramSwipeImageView.getRightSwipeFilterPageType();
      if (localFilterPageType1 == FilterPageType.TURN_ON_FILTERS_PAGE)
      {
        a(1.0F - paramSwipeImageView.getScrollOffset());
        b(1.0F - paramSwipeImageView.getScrollOffset());
        return;
      }
    } while (localFilterPageType2 != FilterPageType.TURN_ON_FILTERS_PAGE);
    a(paramSwipeImageView.getScrollOffset());
    b(paramSwipeImageView.getScrollOffset());
  }
  
  public final void a(SwipeImageView paramSwipeImageView, boolean paramBoolean)
  {
    bgp.b(new aho.1(P));
    if (paramBoolean)
    {
      if (!F.c()) {
        break label48;
      }
      F.a(8);
      ajx.i(true);
    }
    while (ajx.ab())
    {
      return;
      label48:
      if (i.getVisibility() == 8)
      {
        if (ad != null)
        {
          ad.a = true;
          ad = null;
        }
        i.setVisibility(0);
        r.setVisibility(0);
        s.setVisibility(0);
      }
    }
    if (paramSwipeImageView.a(paramSwipeImageView.getPageIndex()) == FilterPageType.TURN_ON_FILTERS_PAGE)
    {
      a(0.0F);
      return;
    }
    a(1.0F);
  }
  
  public final boolean a(ajc paramajc)
  {
    return K.contains(paramajc);
  }
  
  protected final WindowConfiguration.StatusBarDrawMode b()
  {
    return WindowConfiguration.StatusBarDrawMode.DRAW_BEHIND;
  }
  
  protected final void e()
  {
    u();
    N.a("FIRST_MEDIA_OPENED");
    Y.b();
    w();
    J = false;
    if ((v != avh.d(getActivity())) || (R != null)) {
      x();
    }
    if (a != null)
    {
      v();
      t();
      a.f();
    }
    Z.a(new bel(TitleBarManager.Visibility.HIDDEN));
    SnapEditorView localSnapEditorView;
    boolean bool;
    if ((a != null) && (aut.a(a)))
    {
      b.a((ajm)a);
      localSnapEditorView = b;
      if (!D.isChecked())
      {
        bool = true;
        localSnapEditorView.setAudible(bool);
      }
    }
    for (;;)
    {
      localSnapEditorView = b;
      localSnapEditorView.a(c.b.a, false);
      return;
      bool = false;
      break;
      if (a.mSnapType != Mediabryo.SnapType.DISCOVER) {
        Z.a(new baw(-1));
      }
    }
  }
  
  public final boolean g()
  {
    if (L.c())
    {
      m();
      return true;
    }
    if (ab)
    {
      p();
      return true;
    }
    if ((l) || (b == null) || (b.getCaptionView() == null) || (g == null)) {
      return false;
    }
    Object localObject = b;
    if ((a.g()) && ((a instanceof FatCaptionView))) {
      a.a(true);
    }
    for (int i1 = 1; i1 != 0; i1 = 0) {
      return true;
    }
    if (g.c())
    {
      new aqb(getActivity(), getString(2131492920))
      {
        protected final void a()
        {
          SnapPreviewFragment.a(SnapPreviewFragment.this);
          FragmentActivity localFragmentActivity = getActivity();
          if (localFragmentActivity != null) {
            localFragmentActivity.onBackPressed();
          }
        }
        
        protected final void b() {}
      }.show();
      return true;
    }
    if ((a != null) && (aut.a(a)) && (e == null)) {
      CameraEventAnalytics.a().a(CameraEventAnalytics.CameraContext.CANCEL_PREVIEW);
    }
    if ((a == null) || (e != null)) {}
    for (;;)
    {
      Z.a(new bap(CameraDisplayState.SHOW));
      if (H == null) {
        break;
      }
      Z.a(new bas());
      return true;
      if (a.mSnapType == Mediabryo.SnapType.DISCOVER)
      {
        T.b(a);
      }
      else
      {
        localObject = S;
        aim localaim = a;
        b.b(localaim);
        if ((localaim instanceof ajm))
        {
          localObject = ((ajm)localaim).n();
          if (localObject != null) {
            axc.a((String)localObject);
          }
        }
      }
    }
    return false;
  }
  
  public final boolean g_()
  {
    return true;
  }
  
  public final void i()
  {
    R = b.a();
    x();
  }
  
  public final boolean l_()
  {
    return true;
  }
  
  public final boolean m()
  {
    if (!L.c()) {
      return false;
    }
    L.a(8);
    r.setVisibility(0);
    C();
    return true;
  }
  
  protected final boolean n()
  {
    boolean bool2 = false;
    if ((a == null) || ((a.h() == 0) && (a.mRawImageBitmap == null))) {
      bool1 = true;
    }
    Object localObject2;
    FragmentShader.Filter localFilter;
    int i1;
    ajm localajm;
    Bitmap localBitmap1;
    label293:
    label299:
    do
    {
      do
      {
        do
        {
          return bool1;
          a.c();
          localObject1 = getActivity();
          localObject2 = b.b.getCurrentPage();
          if (localObject2 != null) {
            ((arn)localObject2).i();
          }
          localObject1 = b.b((Context)localObject1);
          if (!aut.a(a)) {
            break;
          }
          b.c();
          bool1 = bool2;
        } while (a.mVideoUri == null);
        bool1 = bool2;
      } while (a.mVideoUri.getPath() == null);
      localFilter = b.getShaderFilter();
      a.a((Bitmap)localObject1);
      if (D.isChecked()) {
        a.i();
      }
      if ((a.mSnapType == Mediabryo.SnapType.SNAP) && (a.mVideoUri != null))
      {
        i1 = (int)(X.a(a.mVideoUri.getPath()) / 1000.0D);
        a.mTimerValueOrDuration = i1;
      }
      if (!(a instanceof ajm)) {
        break label665;
      }
      localajm = (ajm)a;
      if (a.mSnapType != Mediabryo.SnapType.DISCOVER) {
        break label649;
      }
      localBitmap1 = mFirstFrameBitmap;
      if (localBitmap1 != null) {
        break;
      }
      Timber.f("SnapPreviewFragment", "Videobryo has no first frame bitmap.", new Object[0]);
      if (ReleaseManager.f()) {
        throw new IllegalArgumentException("Videobryo has no first frame bitmap.");
      }
      i1 = 0;
      if (i1 != 0) {
        break label649;
      }
      i1 = 0;
      bool1 = bool2;
    } while (i1 == 0);
    label306:
    if (!b.getCaptionView().i()) {
      a.mCaptionText = b.getCaptionView().getText();
    }
    Object localObject1 = a;
    if (g.getNumberOfStrokes() > 0) {}
    for (boolean bool1 = true;; bool1 = false)
    {
      mHasDrawing = bool1;
      a.mSwipeFilterNumSingleSwipes = O.b;
      a.mSwipeFilterNumDoubleSwipes = O.c;
      a.mGeofilterImpressions = O.d;
      a.mCaptionStyleDescription = b.getCaptionStyleDescription();
      a.mCaptionAnalyticData = b.getCaptionAnalyticsDetails();
      a.mBaseFilter = O.e;
      a.mStackedFilter = O.f;
      return true;
      Bitmap localBitmap2 = mCompositeImageBitmap;
      int i2;
      if (localBitmap2 == null) {
        i2 = localBitmap1.getWidth();
      }
      for (i1 = localBitmap1.getHeight();; i1 = localBitmap2.getHeight())
      {
        localObject2 = aa.a(i2, i1, Bitmap.Config.ARGB_8888);
        localObject1 = localObject2;
        if (localObject2 == null) {
          localObject1 = aur.a(i2, i1, Bitmap.Config.ARGB_8888);
        }
        if (localObject1 != null) {
          break label596;
        }
        localObject1 = String.format("Failed to create bitmap for raw image (width=%d, height=%d)", new Object[] { Integer.valueOf(i2), Integer.valueOf(i1) });
        Timber.f("SnapPreviewFragment", (String)localObject1, new Object[0]);
        if (!ReleaseManager.f()) {
          break;
        }
        throw new IllegalArgumentException((String)localObject1);
        i2 = localBitmap2.getWidth();
      }
      i1 = 0;
      break label293;
      label596:
      localObject2 = new Canvas((Bitmap)localObject1);
      if (localBitmap1 != null) {
        ((Canvas)localObject2).drawBitmap(localBitmap1, 0.0F, 0.0F, null);
      }
      if (localBitmap2 != null) {
        ((Canvas)localObject2).drawBitmap(localBitmap2, 0.0F, 0.0F, null);
      }
      mRawImageBitmap = ((Bitmap)localObject1);
      i1 = 1;
      break label293;
      label649:
      mShaderFilter = localFilter;
      W.a(localajm);
      label665:
      i1 = 1;
      break label299;
      bool1 = bool2;
      if (localObject1 == null) {
        break;
      }
      if (localObject1 == null) {
        throw new NullPointerException("Image Snap with no image? Ruh-roh");
      }
      a.a((Bitmap)localObject1);
      a.mTimerValueOrDuration = B;
      break label306;
    }
  }
  
  public final int o()
  {
    return s.getBottom();
  }
  
  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    if (mFragmentLayout == null) {
      return;
    }
    paramBundle = getActivity();
    if (paramBundle != null) {
      w = PreferenceManager.getDefaultSharedPreferences(paramBundle);
    }
    s = ((ImageButton)c(2131362273));
    m = ((Button)c(2131362275));
    i = ((ImageButton)c(2131362274));
    t = ((ImageButton)c(2131362709));
    p = new bgr(mFragmentLayout, 2131362713, 2131362722);
    h = ((TextView)c(2131362715));
    y = c(2131362714);
    A = c(2131362716);
    E = new bgr(mFragmentLayout, 2131362717, 2131362725);
    F = new bgr(mFragmentLayout, 2131362718, 2131362728);
    D = ((CheckBox)c(2131362277));
    I = ((ImageButton)c(2131362278));
    L = new bgr(mFragmentLayout, 2131362719, 2131362726);
    M = new bgr(mFragmentLayout, 2131362720, 2131362615);
    o = new bgr(mFragmentLayout, 2131362712, 2131362703);
    j = new bgr(mFragmentLayout, 2131362712, 2131362704);
    C = new bgr(mFragmentLayout, 2131362712, 2131362706);
    n = new bgr(mFragmentLayout, 2131362712, 2131362705);
    q = new bgr(mFragmentLayout, 2131362712, 2131362707);
    s.setOnTouchListener(new asv(s));
    i.setOnTouchListener(new asv(i));
    y.setOnTouchListener(new asv(y));
    u = new asv(t);
    t.setOnTouchListener(u);
    A.setOnTouchListener(new asv(A));
    D.setOnTouchListener(new asv(D));
    I.setOnTouchListener(new asv(I));
    if ((ajx.d() == 0) && (!ajx.M())) {
      E.a(0);
    }
    for (;;)
    {
      z = new bgr(mFragmentLayout, 2131362721, 2131362730);
      x = new bgr(mFragmentLayout, 2131362721, 2131362731);
      r = c(2131362276);
      b = ((SnapEditorView)c(2131362702));
      b.a(paramBundle);
      b.setSnapPreviewRotationListener(this);
      b.setInterface(this);
      b.setSwipeImageViewAnalytics(O);
      b.setSwipeImageViewOnScrollListener(this);
      g = b.getCanvasView();
      x();
      g.setColor(g.getColor());
      c = new anh(getActivity(), ajq.a().d(), this);
      return;
      if (!ajx.O()) {
        y();
      }
    }
  }
  
  @boh
  public void onColorPickedEvent(bbc parambbc)
  {
    SnapCaptionView localSnapCaptionView = b.getCaptionView();
    if ((!(localSnapCaptionView instanceof FatCaptionView)) || (!localSnapCaptionView.g()))
    {
      g.setColor(mColor);
      j.a().setBackgroundColor(g.getColor());
    }
  }
  
  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
    i();
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    w();
    paramBundle = getActivity();
    N = DictionaryEasyMetric.a();
    if ((a == null) && ((paramBundle instanceof LandingPageActivity)))
    {
      paramBundle = ((LandingPageActivity)paramBundle).h();
      if ((paramBundle == null) || (!(mMediabryo instanceof aim)))
      {
        paramLayoutInflater = new ajj.a();
        mSnapType = Mediabryo.SnapType.SNAP;
        a = ((ajj.a)paramLayoutInflater).c();
        l = true;
        getActivity().onBackPressed();
        return mFragmentLayout;
      }
      a = mMediabryo;
    }
    if (a == null) {
      throw new NullPointerException();
    }
    mFragmentLayout = paramLayoutInflater.inflate(2130968735, paramViewGroup, false);
    f.mView = mFragmentLayout;
    if ((a.h() == 0) && (a.mRawImageBitmap == null)) {
      f.a();
    }
    return mFragmentLayout;
  }
  
  public void onDestroy()
  {
    super.onDestroy();
    if (a != null)
    {
      a.j();
      a = null;
    }
    WindowManager.LayoutParams localLayoutParams = H().getAttributes();
    flags |= 0x200;
    H().setAttributes(localLayoutParams);
  }
  
  public void onDestroyView()
  {
    super.onDestroyView();
    if (!b.getCaptionView().i()) {
      AnalyticsEvents.h();
    }
    if (g.getNumberOfStrokes() > 0) {
      AnalyticsEvents.b(g.getNumberOfStrokes());
    }
    if (O.b + O.c > 0) {
      AnalyticsEvents.a(a);
    }
    np.a();
    np.d(a);
    b.b();
    b = null;
    R = null;
    WindowManager.LayoutParams localLayoutParams = H().getAttributes();
    flags |= 0x200;
    H().setAttributes(localLayoutParams);
    Z.a(new baw(1));
  }
  
  @boh
  public void onDrawingEvent(DrawingEvent paramDrawingEvent)
  {
    if (ad != null)
    {
      ad.a = true;
      ad = null;
    }
    if (mDrawingEventType == DrawingEvent.DrawingEventType.STARTED_STROKE)
    {
      ad = new a((byte)0);
      ac.postDelayed(ad, 250L);
    }
    while (mDrawingEventType != DrawingEvent.DrawingEventType.COMPLETED_STROKE) {
      return;
    }
    if (ae != -1L)
    {
      float f2 = 1.0E12F * (float)(System.nanoTime() - ae) / 400.0F;
      ae = -1L;
      float f1 = f2;
      if (f2 > 1.0F) {
        f1 = 1.0F;
      }
      paramDrawingEvent = new AlphaAnimation(f1 * 0.0F, 1.0F);
      paramDrawingEvent.setDuration(400L);
      o.a().startAnimation(paramDrawingEvent);
      r.startAnimation(paramDrawingEvent);
      s.startAnimation(paramDrawingEvent);
      if (M.c()) {
        ((SendToBottomPanelView)M.a()).startAnimation(paramDrawingEvent);
      }
    }
    q.a(0);
    C.a(0);
    C.a().setBackgroundColor(g.getLastColor());
  }
  
  @boh
  public void onEditCaptionEvent(bbh parambbh)
  {
    E.a(8);
    ajx.N();
    i.setVisibility(0);
    p.a(4);
    F.a(8);
    SnapCaptionView localSnapCaptionView = b.getCaptionView();
    m.setBackgroundResource(2130838147);
    Button localButton = m;
    if (k) {}
    for (int i1 = 8;; i1 = 0)
    {
      localButton.setVisibility(i1);
      s.setBackgroundResource(2130837604);
      if (!mIsEditing) {
        break;
      }
      if ((localSnapCaptionView instanceof FatCaptionView))
      {
        s.setBackgroundResource(2130837537);
        g.setDrawingEnabled(false);
        o.a(4);
        i.setVisibility(4);
        q.a(8);
        C.a(8);
        p.a(0);
        m.setBackgroundResource(2130837660);
      }
      return;
    }
    u();
  }
  
  @boh
  public void onEnableFiltersEvent(bbi parambbi)
  {
    if (ad != null)
    {
      ad.a = true;
      ad = null;
    }
    a(1.0F);
    if (!E.c()) {
      y();
    }
    b.setMediabryo(a);
  }
  
  @boh
  public void onInChatSnapEvent(@cgb InChatSnapEvent paramInChatSnapEvent)
  {
    G = paramInChatSnapEvent;
    v();
    if (mCaption.length() > 0) {
      b.setCaptionText(mCaption);
    }
  }
  
  @boh
  public void onNoFilterEvent(bcl parambcl)
  {
    b.setMediabryo(a);
  }
  
  public void onPause()
  {
    super.onPause();
    if (a != null) {
      a.c();
    }
    if ((!getActivity().isChangingConfigurations()) && (b.getCaptionView() != null)) {
      b.getCaptionView().a(false);
    }
    R = b.a();
    b.c();
    b.g();
    Z.b(b.getCaptionView());
  }
  
  @boh
  public void onPostToStoriesUpdatedEvent(bco parambco)
  {
    if (c != null)
    {
      parambco = c;
      List localList = ajq.a().d();
      parambco.clear();
      parambco.addAll(localList);
      c.notifyDataSetChanged();
    }
  }
  
  @boh
  public void onQuickSnapEvent(@cgb QuickSnapEvent paramQuickSnapEvent)
  {
    H = paramQuickSnapEvent;
    v();
    if (mCaption.length() > 0) {
      b.setCaptionText(mCaption);
    }
  }
  
  public void onResume()
  {
    super.onResume();
    if (a != null) {
      a.b();
    }
    Z.c(b.getCaptionView());
    g.setDrawingEnabled(k);
    b.b(false);
    a(k);
  }
  
  @boh
  public void onUserLoadedEvent(ber paramber)
  {
    Q = user;
  }
  
  public final boolean p()
  {
    if (!z.b()) {
      return false;
    }
    if (!ab) {
      return false;
    }
    ab = false;
    Object localObject = AnimationUtils.loadAnimation(getActivity(), 2131034115);
    if (localObject != null) {
      ((RelativeLayout)z.a()).startAnimation((Animation)localObject);
    }
    r.setVisibility(0);
    localObject = new AlphaAnimation(0.0F, 1.0F);
    ((AlphaAnimation)localObject).setDuration(350L);
    r.startAnimation((Animation)localObject);
    z.a(8);
    B = ((SnapchatTimePicker)x.a()).getValue();
    h.setText(Integer.toString(B));
    localObject = w.edit();
    ((SharedPreferences.Editor)localObject).putInt(SharedPreferenceKey.SNAP_PREFERRED_TIME.getKey(), B);
    ((SharedPreferences.Editor)localObject).apply();
    return true;
  }
  
  public final void q()
  {
    if (ajx.ab()) {}
    while (ad == null) {
      return;
    }
    ad.a = true;
    ad = null;
  }
  
  final class a
    implements Runnable
  {
    boolean a = false;
    
    private a() {}
    
    public final void run()
    {
      if (!a) {
        SnapPreviewFragment.A(SnapPreviewFragment.this);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.preview.SnapPreviewFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */