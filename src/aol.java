import android.content.Context;
import android.media.MediaPlayer;
import android.media.MediaPlayer.OnCompletionListener;
import android.media.MediaPlayer.OnErrorListener;
import android.media.MediaPlayer.OnInfoListener;
import android.media.MediaPlayer.OnPreparedListener;
import android.os.Environment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.rendering.SnapMediaRenderer;
import com.snapchat.android.rendering.SnapMediaRenderer.ErrorCode;
import com.snapchat.android.rendering.SnapMediaRenderer.a;
import com.snapchat.android.ui.SnapVideoView;
import com.snapchat.android.util.debug.ReleaseManager;
import com.snapchat.android.util.eventbus.CameraDisplayState;
import com.squareup.otto.Bus;

public final class aol
  implements SnapMediaRenderer
{
  protected static final MediaPlayer.OnErrorListener e = new MediaPlayer.OnErrorListener()
  {
    public final boolean onError(MediaPlayer paramAnonymousMediaPlayer, int paramAnonymousInt1, int paramAnonymousInt2)
    {
      aok.a(paramAnonymousInt1);
      return true;
    }
  };
  private static String f = "VideoSnapRenderer";
  protected final MediaPlayer.OnInfoListener a = new MediaPlayer.OnInfoListener()
  {
    public final boolean onInfo(MediaPlayer paramAnonymousMediaPlayer, int paramAnonymousInt1, int paramAnonymousInt2)
    {
      aok.b(paramAnonymousInt1);
      if (paramAnonymousInt1 == 3) {
        aol.a(aol.this);
      }
      return false;
    }
  };
  protected final MediaPlayer.OnPreparedListener b = new MediaPlayer.OnPreparedListener()
  {
    public final void onPrepared(MediaPlayer paramAnonymousMediaPlayer)
    {
      aol.b(aol.this).d();
      paramAnonymousMediaPlayer.getDuration();
      paramAnonymousMediaPlayer.getVideoWidth();
      paramAnonymousMediaPlayer.getVideoHeight();
      aol.a(aol.this, paramAnonymousMediaPlayer);
      aol.d(aol.this).setLooping(aol.c(aol.this));
      if (aol.b(aol.this).ai() == 2) {
        aol.d(aol.this).setVolume(0.0F, 0.0F);
      }
      paramAnonymousMediaPlayer = new avc(paramAnonymousMediaPlayer.getVideoWidth(), paramAnonymousMediaPlayer.getVideoHeight());
      aol.a(aol.this, paramAnonymousMediaPlayer);
      aol.e(aol.this).a(aol.d(aol.this).getDuration(), aol.d(aol.this).getVideoWidth(), aol.d(aol.this).getVideoHeight());
      if (att.SUPPORTS_MEDIA_INFO_VIDEO_RENDERING_START) {
        aol.d(aol.this).setOnInfoListener(a);
      }
    }
  };
  protected final MediaPlayer.OnCompletionListener c = new MediaPlayer.OnCompletionListener()
  {
    public final void onCompletion(MediaPlayer paramAnonymousMediaPlayer)
    {
      if (paramAnonymousMediaPlayer.isLooping())
      {
        aol.b(aol.this);
        return;
      }
      aol.b(aol.this);
      aol.e(aol.this).b();
    }
  };
  protected final MediaPlayer.OnErrorListener d = new MediaPlayer.OnErrorListener()
  {
    public final boolean onError(MediaPlayer paramAnonymousMediaPlayer, int paramAnonymousInt1, int paramAnonymousInt2)
    {
      aok.a(paramAnonymousInt1);
      aol.b(aol.this);
      if ((paramAnonymousInt1 == 1) && (!aol.f(aol.this)) && (aol.g(aol.this) != null))
      {
        aol.b(aol.this);
        aol.h(aol.this);
        aol.a(aol.this, null);
        aol.i(aol.this).setVideoPath(aol.g(aol.this));
        if (aol.j(aol.this)) {
          aol.i(aol.this).start();
        }
        return true;
      }
      aol.e(aol.this).a(SnapMediaRenderer.ErrorCode.PLAYBACK_ERROR);
      AnalyticsEvents.b(paramAnonymousInt1, paramAnonymousInt2);
      return true;
    }
  };
  private final LayoutInflater g;
  private final Bus h;
  private final axr i;
  private final aom j;
  private ViewGroup k;
  private View l;
  private SnapVideoView m;
  private ImageView n;
  private SnapMediaRenderer.a o;
  private MediaPlayer p;
  private boolean q;
  private boolean r;
  private aka s;
  private aon t;
  private String u;
  private boolean v;
  
  public aol(@chc Context paramContext)
  {
    this((LayoutInflater)paramContext.getSystemService("layout_inflater"), bbo.a(), new axr(), new aom(paramContext));
  }
  
  private aol(LayoutInflater paramLayoutInflater, Bus paramBus, axr paramaxr, aom paramaom)
  {
    g = paramLayoutInflater;
    h = paramBus;
    i = paramaxr;
    j = paramaom;
  }
  
  private void e()
  {
    AnalyticsEvents.d(s instanceof akl);
    o.a();
  }
  
  private void f()
  {
    bhp.a();
    n.setImageBitmap(null);
    if (t != null)
    {
      t.e();
      t = null;
    }
  }
  
  public final void a()
  {
    aka localaka = s;
    bhp.a();
    if (s == null)
    {
      if (ReleaseManager.f()) {
        throw new RuntimeException("Start called for null snap");
      }
    }
    else
    {
      l.bringToFront();
      n.setVisibility(0);
      m.setVisibility(0);
      m.start();
      q = true;
      if (!att.SUPPORTS_MEDIA_INFO_VIDEO_RENDERING_START) {
        e();
      }
    }
  }
  
  public final void a(@chc aka paramaka, boolean paramBoolean, @chc SnapMediaRenderer.a parama)
  {
    int i1 = 1;
    bhp.a();
    o = parama;
    s = paramaka;
    r = paramBoolean;
    v = false;
    if ("mounted".equals(Environment.getExternalStorageState())) {}
    while (i1 == 0)
    {
      o.a(SnapMediaRenderer.ErrorCode.EXTERNAL_STORAGE_REQUIRED);
      return;
      i1 = 0;
    }
    if (axy.sExternalCacheDirectory == null) {
      axy.a(SnapchatApplication.b().getCacheDir(), SnapchatApplication.b().getExternalCacheDir());
    }
    h.a(new bbq(CameraDisplayState.CLOSE));
    k.setVisibility(0);
    if (m.getVisibility() == 8) {
      m.setVisibility(4);
    }
    m.setOnCompletionListener(c);
    m.setOnErrorListener(d);
    m.setOnPreparedListener(b);
    parama = j;
    b = new aom.1(parama, paramaka, new aom.a()
    {
      public final void a(aon paramAnonymousaon)
      {
        paramAnonymousaon.a();
        aol.a(aol.this, paramAnonymousaon);
      }
    });
    b.executeOnExecutor(a, new Void[0]);
  }
  
  public final void a(@chc ViewGroup paramViewGroup)
  {
    k = paramViewGroup;
    l = g.inflate(2130968746, k, false);
    m = ((SnapVideoView)l.findViewById(2131362731));
    n = ((ImageView)l.findViewById(2131362732));
    k.addView(l);
  }
  
  public final void a(boolean paramBoolean)
  {
    aka localaka = s;
    bhp.a();
    if (paramBoolean) {
      m.pause();
    }
    while (!q) {
      return;
    }
    m.start();
  }
  
  public final void b()
  {
    Object localObject = s;
    bhp.a();
    localObject = j;
    if (b != null)
    {
      b.cancel(false);
      b = null;
    }
    o = null;
    s = null;
    u = null;
    q = false;
    f();
    if (p != null)
    {
      p.setOnInfoListener(null);
      p = null;
    }
    m.setOnPreparedListener(null);
    m.setOnCompletionListener(null);
    m.setOnErrorListener(e);
    m.stopPlayback();
    n.setVisibility(8);
  }
  
  public final void c()
  {
    aka localaka = s;
    bhp.a();
    n.setVisibility(0);
    m.setVisibility(0);
  }
  
  public final void d()
  {
    aka localaka = s;
    bhp.a();
    n.setVisibility(8);
    m.setVisibility(8);
    f();
  }
}

/* Location:
 * Qualified Name:     aol
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */