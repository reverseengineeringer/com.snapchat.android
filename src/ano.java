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
import com.snapchat.android.Timber;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.rendering.SnapMediaRenderer;
import com.snapchat.android.rendering.SnapMediaRenderer.ErrorCode;
import com.snapchat.android.rendering.SnapMediaRenderer.a;
import com.snapchat.android.ui.SnapVideoView;
import com.snapchat.android.ui.WideTextView;
import com.snapchat.android.util.debug.ReleaseManager;
import com.snapchat.android.util.eventbus.CameraDisplayState;
import com.squareup.otto.Bus;

public final class ano
  implements SnapMediaRenderer
{
  protected static final MediaPlayer.OnErrorListener e = new MediaPlayer.OnErrorListener()
  {
    public final boolean onError(MediaPlayer paramAnonymousMediaPlayer, int paramAnonymousInt1, int paramAnonymousInt2)
    {
      Timber.e(ano.e(), "SNAP-VIEW: onError: %s extra=%d", new Object[] { ann.a(paramAnonymousInt1), Integer.valueOf(paramAnonymousInt2) });
      return true;
    }
  };
  private static String f = "VideoSnapRenderer";
  protected final MediaPlayer.OnInfoListener a = new MediaPlayer.OnInfoListener()
  {
    public final boolean onInfo(MediaPlayer paramAnonymousMediaPlayer, int paramAnonymousInt1, int paramAnonymousInt2)
    {
      Timber.c(ano.e(), "SNAP-VIEW: onInfo: %s extra=%d", new Object[] { ann.b(paramAnonymousInt1), Integer.valueOf(paramAnonymousInt2) });
      if (paramAnonymousInt1 == 3) {
        ano.a(ano.this);
      }
      return false;
    }
  };
  protected final MediaPlayer.OnPreparedListener b = new MediaPlayer.OnPreparedListener()
  {
    public final void onPrepared(MediaPlayer paramAnonymousMediaPlayer)
    {
      Timber.c(ano.e(), "SNAP-VIEW: Prepared %s, duration:%d width:%d height:%d", new Object[] { ano.b(ano.this).d(), Integer.valueOf(paramAnonymousMediaPlayer.getDuration()), Integer.valueOf(paramAnonymousMediaPlayer.getVideoWidth()), Integer.valueOf(paramAnonymousMediaPlayer.getVideoHeight()) });
      ano.a(ano.this, paramAnonymousMediaPlayer);
      ano.d(ano.this).setLooping(ano.c(ano.this));
      if (ano.b(ano.this).ak() == 2) {
        ano.d(ano.this).setVolume(0.0F, 0.0F);
      }
      paramAnonymousMediaPlayer = new aue(paramAnonymousMediaPlayer.getVideoWidth(), paramAnonymousMediaPlayer.getVideoHeight());
      ano.a(ano.this, paramAnonymousMediaPlayer);
      ano.a(ano.this, ano.b(ano.this), paramAnonymousMediaPlayer);
      ano.e(ano.this).a(ano.d(ano.this).getDuration(), ano.d(ano.this).getVideoWidth(), ano.d(ano.this).getVideoHeight());
      if (asu.SUPPORTS_MEDIA_INFO_VIDEO_RENDERING_START) {
        ano.d(ano.this).setOnInfoListener(a);
      }
    }
  };
  protected final MediaPlayer.OnCompletionListener c = new MediaPlayer.OnCompletionListener()
  {
    public final void onCompletion(MediaPlayer paramAnonymousMediaPlayer)
    {
      if (paramAnonymousMediaPlayer.isLooping())
      {
        Timber.c(ano.e(), "SNAP-VIEW: Completed %s but skipped callback because video is looping", new Object[] { ano.b(ano.this) });
        return;
      }
      Timber.c(ano.e(), "SNAP-VIEW: Completed %s", new Object[] { ano.b(ano.this) });
      ano.e(ano.this).b();
    }
  };
  protected final MediaPlayer.OnErrorListener d = new MediaPlayer.OnErrorListener()
  {
    public final boolean onError(MediaPlayer paramAnonymousMediaPlayer, int paramAnonymousInt1, int paramAnonymousInt2)
    {
      Timber.f(ano.e(), "SNAP-VIEW: onError: %s extra=%d snap=%s", new Object[] { ann.a(paramAnonymousInt1), Integer.valueOf(paramAnonymousInt2), ano.b(ano.this) });
      if ((paramAnonymousInt1 == 1) && (!ano.f(ano.this)) && (ano.g(ano.this) != null))
      {
        Timber.c(ano.e(), "SNAP-VIEW: onError resetting media player and retrying, snap=%s", new Object[] { ano.b(ano.this) });
        ano.h(ano.this);
        ano.a(ano.this, null);
        ano.i(ano.this).setVideoPath(ano.g(ano.this));
        if (ano.j(ano.this)) {
          ano.i(ano.this).start();
        }
        return true;
      }
      ano.e(ano.this).a(SnapMediaRenderer.ErrorCode.PLAYBACK_ERROR);
      AnalyticsEvents.b(paramAnonymousInt1, paramAnonymousInt2);
      return true;
    }
  };
  private final Context g;
  private final LayoutInflater h;
  private final Bus i;
  private final awt j;
  private final anp k;
  private ViewGroup l;
  private View m;
  private SnapVideoView n;
  private ImageView o;
  private WideTextView p;
  private SnapMediaRenderer.a q;
  private MediaPlayer r;
  private boolean s;
  private boolean t;
  private aje u;
  private anq v;
  private String w;
  private boolean x;
  
  public ano(@cgb Context paramContext)
  {
    this(paramContext, (LayoutInflater)paramContext.getSystemService("layout_inflater"), ban.a(), new awt(), new anp(paramContext));
  }
  
  private ano(Context paramContext, LayoutInflater paramLayoutInflater, Bus paramBus, awt paramawt, anp paramanp)
  {
    g = paramContext;
    h = paramLayoutInflater;
    i = paramBus;
    j = paramawt;
    k = paramanp;
  }
  
  private static boolean a(aje paramaje)
  {
    return (paramaje.U() == 1L) || (paramaje.U() == 2L);
  }
  
  private void f()
  {
    AnalyticsEvents.d(u instanceof ajr);
    q.a();
  }
  
  private void g()
  {
    bgp.a();
    o.setImageBitmap(null);
    if (v != null)
    {
      v.e();
      v = null;
    }
  }
  
  public final void a()
  {
    Timber.c(f, "SNAP-VIEW: Start %s", new Object[] { u });
    bgp.a();
    if (u == null)
    {
      if (ReleaseManager.f()) {
        throw new RuntimeException("Start called for null snap");
      }
    }
    else
    {
      m.bringToFront();
      o.setVisibility(0);
      n.setVisibility(0);
      n.start();
      s = true;
      if (!asu.SUPPORTS_MEDIA_INFO_VIDEO_RENDERING_START) {
        f();
      }
    }
  }
  
  public final void a(@cgb aje paramaje, boolean paramBoolean, @cgb SnapMediaRenderer.a parama)
  {
    int i1 = 1;
    Timber.c(f, "SNAP-VIEW: Prepare %s", new Object[] { paramaje });
    bgp.a();
    q = parama;
    u = paramaje;
    t = paramBoolean;
    x = false;
    if ("mounted".equals(Environment.getExternalStorageState())) {}
    while (i1 == 0)
    {
      q.a(SnapMediaRenderer.ErrorCode.EXTERNAL_STORAGE_REQUIRED);
      return;
      i1 = 0;
    }
    if (axa.sExternalCacheDirectory == null) {
      axa.a(SnapchatApplication.b().getCacheDir(), SnapchatApplication.b().getExternalCacheDir());
    }
    i.a(new bap(CameraDisplayState.CLOSE));
    l.setVisibility(0);
    if (n.getVisibility() == 8) {
      n.setVisibility(4);
    }
    n.setOnCompletionListener(c);
    n.setOnErrorListener(d);
    n.setOnPreparedListener(b);
    parama = k;
    b = new anp.1(parama, paramaje, new anp.a()
    {
      public final void a(anq paramAnonymousanq)
      {
        Timber.c(ano.e(), "SNAP-VIEW: Async loading complete for %s", new Object[] { paramAnonymousanq.a() });
        ano.a(ano.this, paramAnonymousanq);
      }
    });
    b.executeOnExecutor(a, new Void[0]);
  }
  
  public final void a(@cgb ViewGroup paramViewGroup)
  {
    l = paramViewGroup;
    m = h.inflate(2130968744, l, false);
    n = ((SnapVideoView)m.findViewById(2131362732));
    o = ((ImageView)m.findViewById(2131362733));
    p = ((WideTextView)m.findViewById(2131362735));
    l.addView(m);
  }
  
  public final void a(boolean paramBoolean)
  {
    Timber.c(f, "SNAP-VIEW: Toggle pause %s (%b)", new Object[] { u, Boolean.valueOf(paramBoolean) });
    bgp.a();
    if (paramBoolean) {
      n.pause();
    }
    while (!s) {
      return;
    }
    n.start();
  }
  
  public final void b()
  {
    Timber.c(f, "SNAP-VIEW: Stop %s", new Object[] { u });
    bgp.a();
    anp localanp = k;
    if (b != null)
    {
      b.cancel(false);
      b = null;
    }
    q = null;
    u = null;
    w = null;
    s = false;
    g();
    if (r != null)
    {
      r.setOnInfoListener(null);
      r = null;
    }
    n.setOnPreparedListener(null);
    n.setOnCompletionListener(null);
    n.setOnErrorListener(e);
    n.stopPlayback();
    o.setVisibility(8);
  }
  
  public final void c()
  {
    Timber.c(f, "SNAP-VIEW: Show %s", new Object[] { u });
    bgp.a();
    o.setVisibility(0);
    n.setVisibility(0);
    if (p.getText().length() != 0)
    {
      p.setVisibility(0);
      return;
    }
    p.setVisibility(4);
  }
  
  public final void d()
  {
    Timber.c(f, "SNAP-VIEW: Hide %s", new Object[] { u });
    bgp.a();
    o.setVisibility(8);
    n.setVisibility(8);
    p.setVisibility(8);
    g();
  }
}

/* Location:
 * Qualified Name:     ano
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */