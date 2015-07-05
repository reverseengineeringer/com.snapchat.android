package com.snapchat.android.ui;

import aim;
import aiv;
import ajl;
import ajm;
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
import ann;
import apd;
import apg;
import apg.a;
import aph;
import api;
import apj;
import apo;
import aps;
import aqy;
import arc;
import ard;
import arf;
import arn;
import ars;
import arv;
import arw;
import asb;
import asf;
import atf;
import aur;
import aus;
import avl;
import azo;
import ban;
import bbi;
import bbw;
import bgp;
import boh;
import cgb;
import cgc;
import cn;
import com.snapchat.android.Timber;
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
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;
import nc;
import nd;
import of;
import oj;
import wy;

@avl
public class SnapEditorView
  extends FrameLayout
  implements apg.a, aph, aps, VideoFilterView.d
{
  private boolean A = true;
  private MediaPlayer B;
  private int C;
  @cgc
  private View.OnTouchListener D = null;
  private b E;
  private CaptionTypeEnums F = CaptionTypeEnums.NON_FAT_VANILLA_CAPTION_TYPE;
  private Mediabryo G;
  private Set<Integer> H = new CopyOnWriteArraySet();
  public SnapCaptionView a;
  public SwipeImageView b;
  public api c;
  private final Bus d;
  private final wy e;
  private final azo f;
  private final TranscodingPreferencesWrapper g;
  private final apd h;
  private FitWidthViewGroup i;
  private ImageView j;
  private CanvasViewBase k;
  private ImageView l;
  private SwipeViewState m;
  private ars n;
  private apg o;
  private arc p;
  private FrameLayout q;
  private SnapVideoView r;
  private VideoFilterView s;
  private apj t;
  private DisplayMetrics u;
  private arw<arn> v;
  private oj w;
  private View x;
  private Bitmap y;
  private Bitmap z;
  
  public SnapEditorView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, ban.a(), wy.a(), new azo(), TranscodingPreferencesWrapper.a(), apd.a());
  }
  
  protected SnapEditorView(@cgb Context paramContext, @cgb AttributeSet paramAttributeSet, @cgb Bus paramBus, @cgb wy paramwy, @cgb azo paramazo, @cgb TranscodingPreferencesWrapper paramTranscodingPreferencesWrapper, @cgb apd paramapd)
  {
    super(paramContext, paramAttributeSet);
    d = paramBus;
    e = paramwy;
    f = paramazo;
    g = paramTranscodingPreferencesWrapper;
    h = paramapd;
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
    z = aur.c(y, getContext());
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
        paramBitmap = aur.a(z, getContext());
        paramBitmap = new aus(new Drawable[] { new ColorDrawable(0), new BitmapDrawable(getResources(), paramBitmap) })
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
          ((arn)paramBitmap.next()).a(i1, getContext());
        }
      }
      b.a();
    }
  }
  
  private static void a(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, boolean paramBoolean)
  {
    if (paramBoolean)
    {
      paramLayoutInflater.inflate(2130968777, paramViewGroup);
      return;
    }
    paramLayoutInflater.inflate(2130968778, paramViewGroup);
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
          Timber.f("SnapEditorView", "Media player onError what=%s extra=%d retryCount=%d", new Object[] { ann.a(paramAnonymousInt1), Integer.valueOf(paramAnonymousInt2), Integer.valueOf(paramInt) });
          if (paramInt > 0)
          {
            Timber.c("SnapEditorView", "Retrying video playback following error", new Object[0]);
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
  
  private void a(@cgb Mediabryo paramMediabryo, @cgb TranscodingPreferencesWrapper paramTranscodingPreferencesWrapper)
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
      if ((v.a(0) instanceof asf)) {
        i1 = i2 - 1;
      }
    }
    return i1;
  }
  
  private void setPreviewConfiguration(@cgc ajl paramajl)
  {
    if (paramajl == null) {}
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
    apg localapg = o;
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
      ((arn)localObject1).g();
      if (((localObject1 instanceof asb)) && ((G instanceof aim)))
      {
        localObject1 = (asb)localObject1;
        aim localaim = (aim)G;
        int i1 = getFilteredPageCount();
        String str = b.mFilterId;
        nc localnc = mGeofilterSwipeMetaData;
        Object localObject2 = (nd)mData.get(str);
        localObject1 = localObject2;
        if (localObject2 == null)
        {
          localObject2 = mData;
          localObject1 = new nd(str);
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
  
  public final void a(@cgb ajm paramajm)
  {
    i.setVisibility(0);
    i.removeAllViews();
    n.a(1, mShouldEnableVisualFilters, mShouldEnableSmartFilters, mSnapType);
    if ((wy.b()) && (mShouldEnableVisualFilters)) {}
    for (boolean bool = true;; bool = false)
    {
      a((LayoutInflater)getContext().getSystemService("layout_inflater"), i, bool);
      if (!bool) {
        break label253;
      }
      s = getVideoFilterView();
      s.setUnrecoverableErrorListener(this);
      if (s != null) {
        break;
      }
      throw new RuntimeException("Tried to play video with decoder, but VideoFilterView was null!");
    }
    if (!s.a(mVideoUri, paramajm.q()))
    {
      f.a(new of("Failed to open video!"));
      a(paramajm, g);
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
      Timber.c("SnapEditorView", "SnapPreviewFragment Editor playing video 1", new Object[0]);
      s.setSwipeVideoViewController(t);
      s.b();
      continue;
      label253:
      r = getSnapVideoView();
      a(paramajm, 2);
    }
  }
  
  public final void a(Context paramContext)
  {
    d.c(this);
    x = h.a(2130968732);
    addView(x);
    a = new VanillaCaptionView(paramContext);
    a.setInterface(this);
    a.setCaptionEditTextOnTouchListener(D);
    q = ((FrameLayout)x.findViewById(2131362699));
    q.removeAllViews();
    q.addView(a);
    u = paramContext.getResources().getDisplayMetrics();
    m = new SwipeViewState();
    setFilterPageStore(new arw());
    setSwipePageController(new api(v, m));
    b = ((SwipeImageView)x.findViewById(2131362698));
    SwipeImageView localSwipeImageView = b;
    FrameLayout localFrameLayout = new FrameLayout(paramContext);
    localSwipeImageView.removeAllViews();
    c = null;
    d = false;
    f = false;
    e = localFrameLayout;
    localSwipeImageView.addView(e);
    o = new apg(c, b, m);
    o.a(this);
    b.setFilterPageProvider(v);
    b.setSwipeState(m);
    n = new ars(paramContext, b, v);
    o.a(n);
    d.c(n);
    t = new apj(v, m);
    o.a(t);
    i = ((FitWidthViewGroup)x.findViewById(2131362697));
    i.removeAllViews();
    l = new ImageView(paramContext);
    l.setVisibility(8);
    b.addView(l);
    k = new LegacyCanvasView(paramContext);
    b.addView(k);
    C = ViewConfiguration.get(paramContext).getScaledTouchSlop();
    p = new arc(C, this, new arf());
  }
  
  public final void a(MotionEvent paramMotionEvent)
  {
    arn localarn = b.getCurrentPage();
    if (localarn == null) {}
    for (boolean bool = false; bool; bool = localarn.a(paramMotionEvent))
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
      api localapi = c;
      int i1 = a;
      b.c = i1;
      b.d = i1;
      localapi = c;
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
    arn localarn;
    oj localoj;
    if (paramBoolean) {
      if (w != null)
      {
        paramBoolean = m.l;
        paramSwipeImageView = v.a(c.b.a);
        localarn = v.a(c.b.c);
        localoj = w;
        if (!paramBoolean) {
          break label113;
        }
        c += 1;
      }
    }
    for (;;)
    {
      if (paramSwipeImageView != null) {
        localoj.a(paramSwipeImageView, e);
      }
      if (localarn != null) {
        localoj.a(localarn, f);
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
    switch (apr.1.a[localObject.ordinal()])
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
    apg localapg = o;
    int i2 = u.widthPixels;
    c.g = paramFloat;
    Object localObject;
    if (!c.c())
    {
      localObject = d.iterator();
      while (((Iterator)localObject).hasNext()) {
        ((apg.a)((Iterator)localObject).next()).q();
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
      localapg.a(i2);
      return;
      if (paramBoolean)
      {
        i1 = ((api)localObject).a(b.c, b.a());
        b.d = i1;
        break;
      }
      i1 = ((api)localObject).a(b.a, b.a());
      b.b = i1;
      break;
    }
  }
  
  @cgc
  public final Bitmap b(@cgb Context paramContext)
  {
    k.destroyDrawingCache();
    bgp.a();
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
        if ((i1 != 0) || (b.findViewById(2131361793) != null)) {
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
      localObject = atf.a(getWidth(), getHeight(), new View[] { j, b, a });
      b.setVisibilityOfPreviewOnlyContent(0);
    } while (localObject == null);
    return aur.a((Bitmap)localObject, G.a(paramContext));
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
    h.a(2130968732, x);
    x = null;
  }
  
  public final void b(boolean paramBoolean)
  {
    a(c.b.a, paramBoolean);
    a(c.b.c, paramBoolean);
  }
  
  public final void c()
  {
    if ((s != null) && (s.getFilterRenderingTask() != null))
    {
      Timber.c("SnapEditorView", "Stopping playback!", new Object[0]);
      s.a();
    }
    if (r != null) {
      r.stopPlayback();
    }
  }
  
  public final boolean d()
  {
    api localapi = c;
    return a.b(b.a) == FilterPageType.UNFILTERED;
  }
  
  public final void e()
  {
    apg localapg = o;
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
      localapg.a(i2);
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
      ((arn)localObject2).h();
      if (((localObject2 instanceof asb)) && ((G instanceof aim)))
      {
        i1 = getFilteredPageCount();
        localObject1 = (aim)G;
        i2 = c.b.a;
        localObject2 = b.mFilterId;
        localObject1 = (nd)mGeofilterSwipeMetaData.mData.get(localObject2);
        if (localObject1 != null) {
          break label141;
        }
        Timber.e(nc.TAG, "Item for " + (String)localObject2 + " is null.", new Object[0]);
      }
    }
    return;
    label141:
    filterIndexCount = i1;
    filterIndexPos = i2;
    ((nd)localObject1).a();
  }
  
  public CanvasViewBase getCanvasView()
  {
    return k;
  }
  
  public apo getCaptionAnalyticsDetails()
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
    apj localapj = t;
    if (d > 0.5D) {
      return b;
    }
    return c;
  }
  
  @cgc
  protected SnapVideoView getSnapVideoView()
  {
    return (SnapVideoView)findViewById(2131362836);
  }
  
  public FilterPageType getSwipeFilterType()
  {
    return b.a(b.getPageIndex());
  }
  
  @cgc
  protected VideoFilterView getVideoFilterView()
  {
    return (VideoFilterView)findViewById(2131362835);
  }
  
  public final void h()
  {
    bgp.a(new Runnable()
    {
      public final void run()
      {
        SnapEditorView.a(SnapEditorView.this, SnapEditorView.g(SnapEditorView.this), SnapEditorView.h(SnapEditorView.this));
      }
    });
  }
  
  @boh
  public void onEnableFiltersEvent(bbi parambbi)
  {
    m.c = 0;
    m.d = 0;
    m.b = 0;
    m.a = 0;
    n.a();
    n.a(G.h(), G.mShouldEnableVisualFilters, G.mShouldEnableSmartFilters, G.mSnapType);
  }
  
  @boh
  public void onHelloWorldEvent(bbw parambbw)
  {
    parambbw = b.findViewById(2131361793);
    if (parambbw == null)
    {
      parambbw = getContext();
      KarelView localKarelView = new KarelView(parambbw);
      localKarelView.setId(2131361793);
      b.addView(localKarelView);
      AlertDialogUtils.a(2131493501, parambbw);
      return;
    }
    b.removeView(parambbw);
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
    arc localarc;
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
                Timber.c("SnapEditorView", "Remove pointerId %d", new Object[] { Integer.valueOf(paramMotionEvent.getPointerId(0)) });
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
                Timber.c("SnapEditorView", "Add pointerId %d", new Object[] { Integer.valueOf(paramMotionEvent.getPointerId(0)) });
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
          localarc = p;
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
        break label520;
      }
      if (i1 == 0) {
        break label515;
      }
      i1 = i2;
      label423:
      paramMotionEvent = a.a(d, c, i1);
    }
    for (;;)
    {
      label445:
      bool1 = bool2;
      if (paramMotionEvent == null) {
        break;
      }
      localObject = e;
      switch (ard.1.a[paramMotionEvent.ordinal()])
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
        label515:
        i1 = 1;
        break label423;
        label520:
        if (i3 == 2)
        {
          i1 = paramMotionEvent.getPointerCount();
          paramMotionEvent = a.a(d, c, i1, b);
          break label445;
        }
        if ((i3 != 1) && (i3 != 6) && (i3 != 3)) {
          break label671;
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
      label671:
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
    if (wy.b())
    {
      setVolumeVideoFilterView(paramBoolean);
      return;
    }
    setVolumeMediaPlayer(paramBoolean);
  }
  
  public void setCaptionEditTextOnTouchListener(@cgc View.OnTouchListener paramOnTouchListener)
  {
    a.setCaptionEditTextOnTouchListener(paramOnTouchListener);
    D = paramOnTouchListener;
  }
  
  public void setCaptionText(String paramString)
  {
    a.setText(paramString);
  }
  
  protected void setFilterPageStore(@cgb arw<arn> paramarw)
  {
    v = paramarw;
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
  
  public void setSwipeImageViewAnalytics(oj paramoj)
  {
    w = paramoj;
  }
  
  public void setSwipeImageViewOnScrollListener(apg.a parama)
  {
    o.a(parama);
  }
  
  protected void setSwipePageController(@cgb api paramapi)
  {
    c = paramapi;
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