package com.snapchat.android.ui;

import aji;
import ajr;
import akh;
import aku;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.media.MediaPlayer;
import android.media.MediaPlayer.OnErrorListener;
import android.media.MediaPlayer.OnPreparedListener;
import android.media.MediaPlayer.OnSeekCompleteListener;
import android.os.Bundle;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnPreDrawListener;
import android.widget.FrameLayout;
import android.widget.ImageView;
import aok;
import apz;
import aqc;
import aqc.a;
import aqd;
import aqe;
import aqf;
import aqn;
import aqr;
import arx;
import asb;
import asc;
import ase;
import asm;
import asr;
import asu;
import asv;
import ata;
import ate;
import aue;
import avp;
import avq;
import awj;
import ban;
import bbo;
import bci;
import bcw;
import bhp;
import bpi;
import chc;
import chd;
import com.snapchat.android.camera.transcoding.TranscodingPreferencesWrapper;
import com.snapchat.android.model.Mediabryo;
import com.snapchat.android.ui.caption.CaptionTypeEnums;
import com.snapchat.android.ui.caption.FatCaptionView;
import com.snapchat.android.ui.caption.FatCenterCaptionView;
import com.snapchat.android.ui.caption.SnapCaptionView;
import com.snapchat.android.ui.caption.VanillaCaptionView;
import com.snapchat.android.ui.swipefilters.FilterPageType;
import com.snapchat.android.util.AlertDialogUtils;
import com.snapchat.android.util.PhotoEffectTask;
import com.snapchat.videotranscoder.video.FragmentShader.Filter;
import com.squareup.otto.Bus;
import cs;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;
import nt;
import nu;
import ow;
import pa;
import xt;

@awj
public class SnapEditorView
  extends FrameLayout
  implements aqc.a, aqd, aqr, VideoFilterView.d
{
  private boolean A = true;
  private MediaPlayer B;
  private int C;
  @chd
  private View.OnTouchListener D = null;
  private b E;
  private CaptionTypeEnums F = CaptionTypeEnums.NON_FAT_VANILLA_CAPTION_TYPE;
  private Mediabryo G;
  private Set<Integer> H = new CopyOnWriteArraySet();
  public SnapCaptionView a;
  public SwipeImageView b;
  public aqe c;
  private final Bus d;
  private final xt e;
  private final ban f;
  private final TranscodingPreferencesWrapper g;
  private final apz h;
  private FitWidthViewGroup i;
  private ImageView j;
  private CanvasViewBase k;
  private ImageView l;
  private SwipeViewState m;
  private asr n;
  private aqc o;
  private asb p;
  private FrameLayout q;
  private SnapVideoView r;
  private VideoFilterView s;
  private aqf t;
  private DisplayMetrics u;
  private asv<asm> v;
  private pa w;
  private View x;
  private Bitmap y;
  private Bitmap z;
  
  public SnapEditorView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, bbo.a(), xt.a(), new ban(), TranscodingPreferencesWrapper.a(), apz.a());
  }
  
  protected SnapEditorView(@chc Context paramContext, @chc AttributeSet paramAttributeSet, @chc Bus paramBus, @chc xt paramxt, @chc ban paramban, @chc TranscodingPreferencesWrapper paramTranscodingPreferencesWrapper, @chc apz paramapz)
  {
    super(paramContext, paramAttributeSet);
    d = paramBus;
    e = paramxt;
    f = paramban;
    g = paramTranscodingPreferencesWrapper;
    h = paramapz;
  }
  
  private void a(final Bitmap paramBitmap, boolean paramBoolean1, boolean paramBoolean2)
  {
    if (paramBitmap == null) {
      throw new NullPointerException();
    }
    if (z == null) {}
    for (int i1 = 1; (i1 == 0) && (!paramBoolean1) && (!paramBoolean2); i1 = 0) {
      return;
    }
    removeView(i);
    y = paramBitmap;
    z = avp.c(y, getContext());
    if ((i1 != 0) || (paramBoolean1))
    {
      if (!b.a(z)) {
        break label227;
      }
      n.a();
      n.a(0, G.mShouldEnableVisualFilters, G.mShouldEnableSmartFilters, G.mSnapType);
    }
    for (;;)
    {
      if (paramBoolean2)
      {
        paramBitmap = avp.a(z, getContext());
        paramBitmap = new avq(new Drawable[] { new ColorDrawable(0), new BitmapDrawable(getResources(), paramBitmap) })
        {
          public final void a()
          {
            SnapEditorView.a(SnapEditorView.this).a(paramBitmap);
            SnapEditorView.b(SnapEditorView.this).setVisibility(8);
          }
        };
        l.setImageDrawable(paramBitmap);
        l.setVisibility(0);
        paramBitmap.startTransition(800);
      }
      if (G == null) {
        break;
      }
      setPreviewConfiguration(G.mPreviewConfiguration);
      return;
      label227:
      if (paramBoolean1)
      {
        i1 = getResourcesgetConfigurationorientation;
        paramBitmap = v.a().iterator();
        while (paramBitmap.hasNext()) {
          ((asm)paramBitmap.next()).a(i1, getContext());
        }
      }
      b.a();
    }
  }
  
  private static void a(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, boolean paramBoolean)
  {
    if (paramBoolean)
    {
      paramLayoutInflater.inflate(2130968779, paramViewGroup);
      return;
    }
    paramLayoutInflater.inflate(2130968780, paramViewGroup);
  }
  
  private void a(final Mediabryo paramMediabryo, final int paramInt)
  {
    if (s != null) {
      s.setVisibility(4);
    }
    if (r != null)
    {
      r.setVisibility(0);
      r.setVideoURI(mVideoUri);
      r.setMediaController(null);
      r.setOnPreparedListener(new MediaPlayer.OnPreparedListener()
      {
        public final void onPrepared(MediaPlayer paramAnonymousMediaPlayer)
        {
          SnapEditorView.a(SnapEditorView.this, paramAnonymousMediaPlayer);
          paramAnonymousMediaPlayer.setLooping(true);
          paramAnonymousMediaPlayer.setOnSeekCompleteListener(new MediaPlayer.OnSeekCompleteListener()
          {
            public final void onSeekComplete(MediaPlayer paramAnonymous2MediaPlayer) {}
          });
          SnapEditorView.b(SnapEditorView.this, paramAnonymousMediaPlayer);
          SnapEditorView.c(SnapEditorView.this).requestLayout();
          setAudible(SnapEditorView.d(SnapEditorView.this));
        }
      });
      r.setOnErrorListener(new MediaPlayer.OnErrorListener()
      {
        public final boolean onError(MediaPlayer paramAnonymousMediaPlayer, int paramAnonymousInt1, int paramAnonymousInt2)
        {
          aok.a(paramAnonymousInt1);
          paramAnonymousInt1 = paramInt;
          if (paramInt > 0)
          {
            SnapEditorView.c(SnapEditorView.this).stopPlayback();
            SnapEditorView.c(SnapEditorView.this).postDelayed(new Runnable()
            {
              public final void run()
              {
                SnapEditorView.a(SnapEditorView.this, b, a - 1);
              }
            }, 500L);
            return true;
          }
          return false;
        }
      });
      r.start();
    }
  }
  
  private void a(@chc Mediabryo paramMediabryo, @chc TranscodingPreferencesWrapper paramTranscodingPreferencesWrapper)
  {
    paramTranscodingPreferencesWrapper.b(false);
    i.removeAllViews();
    a((LayoutInflater)getContext().getSystemService("layout_inflater"), i, false);
    r = getSnapVideoView();
    s = null;
    a(paramMediabryo, 2);
  }
  
  private int getFilteredPageCount()
  {
    int i2 = v.b();
    int i1 = i2;
    if (i2 > 0)
    {
      i1 = i2;
      if ((v.a(0) instanceof ate)) {
        i1 = i2 - 1;
      }
    }
    return i1;
  }
  
  private void setPreviewConfiguration(@chd akh paramakh)
  {
    if (paramakh == null) {}
    do
    {
      return;
      i.setGravity(mGravity);
      int i1 = mWidth;
      int i2 = mHeight;
      if ((i1 >= 0) && (i2 >= 0))
      {
        if (r != null) {
          r.setVideoAspect(i1, i2);
        }
        if (s != null) {
          s.setVideoAspect(i1, i2);
        }
      }
    } while (!mShouldHideSystemUi);
    a.e();
  }
  
  private void setVolumeMediaPlayer(boolean paramBoolean)
  {
    if (B == null) {
      return;
    }
    if (paramBoolean) {
      try
      {
        B.setVolume(1.0F, 1.0F);
        return;
      }
      catch (IllegalStateException localIllegalStateException)
      {
        B = null;
        return;
      }
    }
    B.setVolume(0.0F, 0.0F);
  }
  
  private void setVolumeVideoFilterView(boolean paramBoolean)
  {
    if (s != null)
    {
      if (paramBoolean)
      {
        s.setVolume(1.0F);
        return;
      }
      s.setVolume(0.0F);
      return;
    }
    setVolumeMediaPlayer(paramBoolean);
  }
  
  public final a a()
  {
    a locala = new a();
    a = c.b.c;
    b = c.b.a;
    c = G;
    d = F.ordinal();
    return locala;
  }
  
  public final void a(float paramFloat)
  {
    aqc localaqc = o;
    c.h = paramFloat;
    if (c.c()) {
      a.a(false);
    }
    c.i = SwipeViewState.MotionState.NOT_MOVING;
  }
  
  public final void a(int paramInt, boolean paramBoolean)
  {
    Object localObject1 = v.a(paramInt);
    if (localObject1 != null)
    {
      ((asm)localObject1).g();
      if (((localObject1 instanceof ata)) && ((G instanceof aji)))
      {
        localObject1 = (ata)localObject1;
        aji localaji = (aji)G;
        int i1 = getFilteredPageCount();
        String str = b.mFilterId;
        nt localnt = mGeofilterSwipeMetaData;
        Object localObject2 = (nu)mData.get(str);
        localObject1 = localObject2;
        if (localObject2 == null)
        {
          localObject2 = mData;
          localObject1 = new nu(str);
          ((Map)localObject2).put(str, localObject1);
        }
        filterIndexCount = i1;
        filterIndexPos = paramInt;
        if (paramBoolean) {
          filterCount += 1L;
        }
        if (!viewTimeStopwatch.a) {
          viewTimeStopwatch.a();
        }
        localObject1 = mGeofilterSwipeMetaData;
        mGeofilterIndexPos = paramInt;
        mGeofilterIndexCount = i1;
      }
    }
  }
  
  public final void a(@chc aku paramaku)
  {
    i.setVisibility(0);
    i.removeAllViews();
    n.a(1, mShouldEnableVisualFilters, mShouldEnableSmartFilters, mSnapType);
    if ((xt.b()) && (mShouldEnableVisualFilters)) {}
    for (boolean bool = true;; bool = false)
    {
      a((LayoutInflater)getContext().getSystemService("layout_inflater"), i, bool);
      if (!bool) {
        break label240;
      }
      s = getVideoFilterView();
      s.setUnrecoverableErrorListener(this);
      if (s != null) {
        break;
      }
      throw new RuntimeException("Tried to play video with decoder, but VideoFilterView was null!");
    }
    if (!s.a(mVideoUri, paramaku.q()))
    {
      f.a(new ow("Failed to open video!"));
      a(paramaku, g);
    }
    for (;;)
    {
      if (mOverlayBitmap != null)
      {
        j = new FitWidthImageView(getContext());
        j.setImageBitmap(mOverlayBitmap);
        i.addView(j);
      }
      setPreviewConfiguration(mPreviewConfiguration);
      return;
      s.setVisibility(0);
      s.setSwipeVideoViewController(t);
      s.b();
      continue;
      label240:
      r = getSnapVideoView();
      a(paramaku, 2);
    }
  }
  
  public final void a(Context paramContext)
  {
    d.c(this);
    x = h.a(2130968734);
    addView(x);
    a = new VanillaCaptionView(paramContext);
    a.setInterface(this);
    a.setCaptionEditTextOnTouchListener(D);
    q = ((FrameLayout)x.findViewById(2131362698));
    q.removeAllViews();
    q.addView(a);
    u = paramContext.getResources().getDisplayMetrics();
    m = new SwipeViewState();
    setFilterPageStore(new asv());
    setSwipePageController(new aqe(v, m));
    b = ((SwipeImageView)x.findViewById(2131362697));
    SwipeImageView localSwipeImageView = b;
    FrameLayout localFrameLayout = new FrameLayout(paramContext);
    localSwipeImageView.removeAllViews();
    c = null;
    d = false;
    f = false;
    e = localFrameLayout;
    localSwipeImageView.addView(e);
    o = new aqc(c, b, m);
    o.a(this);
    b.setFilterPageProvider(v);
    b.setSwipeState(m);
    n = new asr(paramContext, b, v);
    o.a(n);
    d.c(n);
    t = new aqf(v, m);
    o.a(t);
    i = ((FitWidthViewGroup)x.findViewById(2131362696));
    i.removeAllViews();
    l = new ImageView(paramContext);
    l.setVisibility(8);
    b.addView(l);
    k = new LegacyCanvasView(paramContext);
    b.addView(k);
    C = ViewConfiguration.get(paramContext).getScaledTouchSlop();
    p = new asb(C, this, new ase());
  }
  
  public final void a(MotionEvent paramMotionEvent)
  {
    asm localasm = b.getCurrentPage();
    if (localasm == null) {}
    for (boolean bool = false; bool; bool = localasm.a(paramMotionEvent))
    {
      b.dispatchTouchEvent(paramMotionEvent);
      return;
    }
    if (a.g())
    {
      a.a(true);
      return;
    }
    a.a(paramMotionEvent);
  }
  
  public final void a(a parama)
  {
    if (parama == null) {}
    do
    {
      return;
      setMediabryo(c);
      aqe localaqe = c;
      int i1 = a;
      b.c = i1;
      b.d = i1;
      localaqe = c;
      i1 = b;
      b.a = i1;
      b.b = i1;
      F = CaptionTypeEnums.values()[d];
    } while (F == CaptionTypeEnums.NON_FAT_VANILLA_CAPTION_TYPE);
    a(false);
  }
  
  public final void a(SwipeImageView paramSwipeImageView) {}
  
  public final void a(SwipeImageView paramSwipeImageView, boolean paramBoolean)
  {
    asm localasm;
    pa localpa;
    if (paramBoolean) {
      if (w != null)
      {
        paramBoolean = m.l;
        paramSwipeImageView = v.a(c.b.a);
        localasm = v.a(c.b.c);
        localpa = w;
        if (!paramBoolean) {
          break label113;
        }
        c += 1;
      }
    }
    for (;;)
    {
      if (paramSwipeImageView != null) {
        localpa.a(paramSwipeImageView, e);
      }
      if (localasm != null) {
        localpa.a(localasm, f);
      }
      b(true);
      return;
      label113:
      b += 1;
    }
  }
  
  public final void a(String paramString)
  {
    new PhotoEffectTask(paramString, getContext()) {}.execute(new Bitmap[] { y });
  }
  
  public final void a(final boolean paramBoolean)
  {
    final Bundle localBundle = a.a();
    final SnapCaptionView localSnapCaptionView = a;
    if (paramBoolean)
    {
      d.b(a);
      F = CaptionTypeEnums.values()[((F.ordinal() + 1) % CaptionTypeEnums.values().length)];
    }
    final Object localObject = F;
    Context localContext = getContext();
    switch (aqq.1.a[localObject.ordinal()])
    {
    default: 
      throw new IllegalArgumentException(String.format("[%s] Caption Type is not valid", new Object[] { localObject }));
    case 1: 
      localObject = new VanillaCaptionView(localContext);
    }
    for (;;)
    {
      a = ((SnapCaptionView)localObject);
      a.setCaptionEditTextOnTouchListener(D);
      if (paramBoolean)
      {
        a.j();
        localObject = G.mPreviewConfiguration;
        if ((localObject != null) && (mShouldHideSystemUi)) {
          a.e();
        }
      }
      d.c(a);
      a.setInterface(this);
      localObject = getViewTreeObserver();
      ((ViewTreeObserver)localObject).addOnPreDrawListener(new ViewTreeObserver.OnPreDrawListener()
      {
        public final boolean onPreDraw()
        {
          SnapEditorView.e(SnapEditorView.this).a(localBundle, paramBoolean);
          if (localObject.isAlive()) {
            localObject.removeOnPreDrawListener(this);
          }
          SnapEditorView.f(SnapEditorView.this).removeView(localSnapCaptionView);
          return false;
        }
      });
      q.addView(a);
      return;
      localObject = new FatCaptionView(localContext);
      continue;
      localObject = new FatCenterCaptionView(localContext);
    }
  }
  
  public final void a(boolean paramBoolean, float paramFloat)
  {
    aqc localaqc = o;
    int i2 = u.widthPixels;
    c.g = paramFloat;
    Object localObject;
    if (!c.c())
    {
      localObject = d.iterator();
      while (((Iterator)localObject).hasNext()) {
        ((aqc.a)((Iterator)localObject).next()).q();
      }
      c.d();
      localObject = a;
      b.m = paramBoolean;
      if ((!b.l) || (paramBoolean)) {
        break label205;
      }
      b.d = 0;
      b.b = 0;
      localObject = c;
      if (!c.a()) {
        break label277;
      }
    }
    label205:
    label277:
    for (int i1 = i2;; i1 = 0)
    {
      e = i1;
      c.i = SwipeViewState.MotionState.SWIPING;
      c.b();
      c.n = 0.5F;
      b.invalidate();
      localaqc.a(i2);
      return;
      if (paramBoolean)
      {
        i1 = ((aqe)localObject).a(b.c, b.a());
        b.d = i1;
        break;
      }
      i1 = ((aqe)localObject).a(b.a, b.a());
      b.b = i1;
      break;
    }
  }
  
  @chd
  public final Bitmap b(@chc Context paramContext)
  {
    k.destroyDrawingCache();
    bhp.a();
    Object localObject;
    int i1;
    if ((z == null) && (k.getNumberOfStrokes() <= 0) && (a.i()) && (j == null))
    {
      localObject = b;
      if (b.a == 0)
      {
        if (b.f != 0)
        {
          i1 = 1;
          if (i1 == 0) {
            break label101;
          }
        }
      }
      else
      {
        i1 = 1;
        label77:
        if ((i1 != 0) || (b.findViewById(2131361794) != null)) {
          break label106;
        }
      }
    }
    label101:
    label106:
    do
    {
      return null;
      i1 = 0;
      break;
      i1 = 0;
      break label77;
      b.setVisibilityOfPreviewOnlyContent(4);
      localObject = aue.a(getWidth(), getHeight(), new View[] { j, b, a });
      b.setVisibilityOfPreviewOnlyContent(0);
    } while (localObject == null);
    return avp.a((Bitmap)localObject, G.a(paramContext));
  }
  
  public final void b()
  {
    d.b(this);
    d.b(n);
    n.b();
    v.d();
    k.a();
    G.l();
    G = null;
    y = null;
    z = null;
    h.a(2130968734, x);
    x = null;
  }
  
  public final void b(boolean paramBoolean)
  {
    a(c.b.a, paramBoolean);
    a(c.b.c, paramBoolean);
  }
  
  public final void c()
  {
    if ((s != null) && (s.getFilterRenderingTask() != null)) {
      s.a();
    }
    if (r != null) {
      r.stopPlayback();
    }
  }
  
  public final boolean d()
  {
    aqe localaqe = c;
    return a.b(b.a) == FilterPageType.UNFILTERED;
  }
  
  public final void e()
  {
    aqc localaqc = o;
    int i2 = u.widthPixels;
    c.i = SwipeViewState.MotionState.AUTO_SCROLLING;
    SwipeViewState localSwipeViewState = c;
    int i1;
    if (g < e)
    {
      i1 = 1;
      if (i1 == 0) {
        break label91;
      }
    }
    label91:
    for (c.g = (i2 * -0.05F);; c.g = (i2 * 1.05F))
    {
      c.n = 0.2F;
      b.invalidate();
      localaqc.a(i2);
      return;
      i1 = 0;
      break;
    }
  }
  
  public final boolean f()
  {
    return a.g();
  }
  
  public final void g()
  {
    Object localObject2 = v.a(c.b.a);
    int i1;
    Object localObject1;
    int i2;
    if (localObject2 != null)
    {
      ((asm)localObject2).h();
      if (((localObject2 instanceof ata)) && ((G instanceof aji)))
      {
        i1 = getFilteredPageCount();
        localObject1 = (aji)G;
        i2 = c.b.a;
        localObject2 = b.mFilterId;
        localObject1 = (nu)mGeofilterSwipeMetaData.mData.get(localObject2);
        if (localObject1 != null) {
          break label129;
        }
        new StringBuilder("Item for ").append((String)localObject2).append(" is null.");
      }
    }
    return;
    label129:
    filterIndexCount = i1;
    filterIndexPos = i2;
    ((nu)localObject1).a();
  }
  
  public CanvasViewBase getCanvasView()
  {
    return k;
  }
  
  public aqn getCaptionAnalyticsDetails()
  {
    return a.getCaptionAnalyticsDetails();
  }
  
  public String getCaptionStyleDescription()
  {
    if (a.i()) {
      return "0";
    }
    switch (7.a[F.ordinal()])
    {
    default: 
      return "Index out of bounds D:";
    case 1: 
      return "1";
    case 2: 
      return "2";
    }
    return "3";
  }
  
  public SnapCaptionView getCaptionView()
  {
    return a;
  }
  
  public int getPreviewCloseButtonBottom()
  {
    return E.o();
  }
  
  public FragmentShader.Filter getShaderFilter()
  {
    aqf localaqf = t;
    if (d > 0.5D) {
      return b;
    }
    return c;
  }
  
  @chd
  protected SnapVideoView getSnapVideoView()
  {
    return (SnapVideoView)findViewById(2131362829);
  }
  
  public FilterPageType getSwipeFilterType()
  {
    return b.a(b.getPageIndex());
  }
  
  @chd
  protected VideoFilterView getVideoFilterView()
  {
    return (VideoFilterView)findViewById(2131362828);
  }
  
  public final void h()
  {
    bhp.a(new Runnable()
    {
      public final void run()
      {
        SnapEditorView.a(SnapEditorView.this, SnapEditorView.g(SnapEditorView.this), SnapEditorView.h(SnapEditorView.this));
      }
    });
  }
  
  @bpi
  public void onEnableFiltersEvent(bci parambci)
  {
    m.c = 0;
    m.d = 0;
    m.b = 0;
    m.a = 0;
    n.a();
    n.a(G.h(), G.mShouldEnableVisualFilters, G.mShouldEnableSmartFilters, G.mSnapType);
  }
  
  @bpi
  public void onHelloWorldEvent(bcw parambcw)
  {
    parambcw = b.findViewById(2131361794);
    if (parambcw == null)
    {
      parambcw = getContext();
      KarelView localKarelView = new KarelView(parambcw);
      localKarelView.setId(2131361794);
      b.addView(localKarelView);
      AlertDialogUtils.a(2131493501, parambcw);
      return;
    }
    b.removeView(parambcw);
  }
  
  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    return true;
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    int i2 = 0;
    boolean bool2 = true;
    boolean bool1;
    if ((E != null) && (E.m())) {
      bool1 = false;
    }
    int i1;
    asb localasb;
    int i3;
    int i4;
    do
    {
      do
      {
        do
        {
          do
          {
            return bool1;
            if ((E != null) && (E.p())) {
              return false;
            }
            if (k.getDrawingEnabled())
            {
              k.dispatchTouchEvent(paramMotionEvent);
              return true;
            }
            i1 = paramMotionEvent.getAction();
            if (H.contains(Integer.valueOf(paramMotionEvent.getPointerId(0))))
            {
              if ((i1 == 1) || (i1 == 3))
              {
                paramMotionEvent.getPointerId(0);
                H.remove(Integer.valueOf(paramMotionEvent.getPointerId(0)));
              }
              i1 = 1;
            }
            while ((i1 != 0) && (getSwipeFilterType() != FilterPageType.TURN_ON_FILTERS_PAGE))
            {
              a.dispatchTouchEvent(paramMotionEvent);
              return true;
              if ((i1 == 0) && (a.b(paramMotionEvent)))
              {
                paramMotionEvent.getPointerId(0);
                H.add(Integer.valueOf(paramMotionEvent.getPointerId(0)));
                i1 = 1;
              }
              else
              {
                i1 = 0;
              }
            }
            bool1 = bool2;
          } while (a.h());
          localasb = p;
          i3 = paramMotionEvent.getActionMasked();
          i1 = paramMotionEvent.getActionIndex();
          i4 = paramMotionEvent.getPointerId(i1);
          if (i1 <= 1) {
            break;
          }
          bool1 = bool2;
        } while (i3 == 0);
        bool1 = bool2;
      } while (i3 == 5);
      bool1 = bool2;
    } while (i3 == 2);
    Object localObject;
    if (i3 == 0)
    {
      i1 = 1;
      localObject = c;
      e = paramMotionEvent.getActionIndex();
      c = paramMotionEvent.getX(e);
      f = paramMotionEvent.getPointerId(e);
      if (b[1] != -1)
      {
        int i5 = paramMotionEvent.findPointerIndex(b[1]);
        if (i5 != -1) {
          d = paramMotionEvent.getX(i5);
        }
      }
      if ((i1 == 0) && (i3 != 5)) {
        break label484;
      }
      if (i1 == 0) {
        break label479;
      }
      i1 = i2;
      label387:
      paramMotionEvent = a.a(d, c, i1);
    }
    for (;;)
    {
      label409:
      bool1 = bool2;
      if (paramMotionEvent == null) {
        break;
      }
      localObject = e;
      switch (asc.1.a[paramMotionEvent.ordinal()])
      {
      default: 
        paramMotionEvent = null;
      }
      for (;;)
      {
        a = paramMotionEvent;
        return true;
        i1 = 0;
        break;
        label479:
        i1 = 1;
        break label387;
        label484:
        if (i3 == 2)
        {
          i1 = paramMotionEvent.getPointerCount();
          paramMotionEvent = a.a(d, c, i1, b);
          break label409;
        }
        if ((i3 != 1) && (i3 != 6) && (i3 != 3)) {
          break label635;
        }
        localObject = c;
        if ((i4 < 0) || (i4 >= 2)) {}
        for (;;)
        {
          paramMotionEvent = a.a(d, c, paramMotionEvent);
          break;
          b[i4] = -1;
        }
        paramMotionEvent = c;
        continue;
        paramMotionEvent = b;
        continue;
        paramMotionEvent = d;
        continue;
        paramMotionEvent = e;
      }
      label635:
      paramMotionEvent = null;
    }
  }
  
  public final void q()
  {
    g();
  }
  
  public void setAudible(boolean paramBoolean)
  {
    A = paramBoolean;
    if (xt.b())
    {
      setVolumeVideoFilterView(paramBoolean);
      return;
    }
    setVolumeMediaPlayer(paramBoolean);
  }
  
  public void setCaptionEditTextOnTouchListener(@chd View.OnTouchListener paramOnTouchListener)
  {
    a.setCaptionEditTextOnTouchListener(paramOnTouchListener);
    D = paramOnTouchListener;
  }
  
  public void setCaptionText(String paramString)
  {
    a.setText(paramString);
  }
  
  protected void setFilterPageStore(@chc asv<asm> paramasv)
  {
    v = paramasv;
  }
  
  public void setInterface(b paramb)
  {
    E = paramb;
  }
  
  public void setMediabryo(Mediabryo paramMediabryo)
  {
    if ((a != null) && (a.d())) {}
    for (boolean bool = true;; bool = false)
    {
      G = paramMediabryo;
      if ((paramMediabryo.h() == 0) && (mRawImageBitmap != null)) {
        a(mRawImageBitmap, bool, false);
      }
      return;
    }
  }
  
  public void setSnapPreviewRotationListener(SwipeImageView.a parama)
  {
    b.setSnapPreviewRotationListener(parama);
  }
  
  public void setSwipeImageViewAnalytics(pa parampa)
  {
    w = parampa;
  }
  
  public void setSwipeImageViewOnScrollListener(aqc.a parama)
  {
    o.a(parama);
  }
  
  protected void setSwipePageController(@chc aqe paramaqe)
  {
    c = paramaqe;
  }
  
  public final class a
  {
    int a;
    int b;
    Mediabryo c;
    int d;
    
    public a() {}
  }
  
  public static abstract interface b
  {
    public abstract boolean m();
    
    public abstract int o();
    
    public abstract boolean p();
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.ui.SnapEditorView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */