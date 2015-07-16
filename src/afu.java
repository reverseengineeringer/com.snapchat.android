import android.media.MediaPlayer;
import android.media.MediaPlayer.OnCompletionListener;
import android.media.MediaPlayer.OnErrorListener;
import android.media.MediaPlayer.OnInfoListener;
import android.media.MediaPlayer.OnPreparedListener;
import com.snapchat.android.ui.TextureVideoView;

public final class afu
{
  final boolean a;
  public TextureVideoView b;
  public String c;
  public boolean d;
  public afq e;
  int f = 2;
  int g = 0;
  public int h = -1;
  public int i = 0;
  public float j = 0.0F;
  public float k = 0.0F;
  protected MediaPlayer.OnCompletionListener l = new MediaPlayer.OnCompletionListener()
  {
    public final void onCompletion(MediaPlayer paramAnonymousMediaPlayer)
    {
      paramAnonymousMediaPlayer = e;
      if (paramAnonymousMediaPlayer != null) {
        paramAnonymousMediaPlayer.p_();
      }
      paramAnonymousMediaPlayer = afu.this;
      i += 1;
      if (d) {
        b.start();
      }
    }
  };
  protected MediaPlayer.OnPreparedListener m = new MediaPlayer.OnPreparedListener()
  {
    public final void onPrepared(MediaPlayer paramAnonymousMediaPlayer)
    {
      j = paramAnonymousMediaPlayer.getVideoWidth();
      k = paramAnonymousMediaPlayer.getVideoHeight();
      h = paramAnonymousMediaPlayer.getDuration();
      f = 2;
      i = 0;
      g = 0;
      final afq localafq = e;
      if (localafq != null)
      {
        if (!a) {
          b.postDelayed(new Runnable()
          {
            public final void run()
            {
              localafq.b();
            }
          }, 250L);
        }
        return;
      }
      paramAnonymousMediaPlayer.setLooping(d);
    }
  };
  protected MediaPlayer.OnInfoListener n = new MediaPlayer.OnInfoListener()
  {
    public final boolean onInfo(MediaPlayer paramAnonymousMediaPlayer, int paramAnonymousInt1, int paramAnonymousInt2)
    {
      paramAnonymousMediaPlayer = e;
      if ((paramAnonymousMediaPlayer != null) && (a) && (paramAnonymousInt1 == 3)) {
        paramAnonymousMediaPlayer.b();
      }
      return false;
    }
  };
  protected MediaPlayer.OnErrorListener o = new MediaPlayer.OnErrorListener()
  {
    public final boolean onError(MediaPlayer paramAnonymousMediaPlayer, int paramAnonymousInt1, int paramAnonymousInt2)
    {
      paramAnonymousMediaPlayer = String.format("Error=%s extra=%d", new Object[] { aok.a(paramAnonymousInt1), Integer.valueOf(paramAnonymousInt2) });
      if (f > 0)
      {
        paramAnonymousMediaPlayer = afu.this;
        f -= 1;
        paramAnonymousInt1 = f;
        b.post(new Runnable()
        {
          public final void run()
          {
            b();
            a();
          }
        });
      }
      afq localafq;
      do
      {
        return true;
        localafq = e;
      } while (localafq == null);
      localafq.a(paramAnonymousMediaPlayer);
      return true;
    }
  };
  
  public afu(boolean paramBoolean) {}
  
  private afu(boolean paramBoolean1, boolean paramBoolean2)
  {
    d = paramBoolean1;
    a = paramBoolean2;
  }
  
  @awj
  public final void a()
  {
    if (c == null) {
      return;
    }
    b.setVideoPath(c);
    b.start();
  }
  
  public final void a(@chc TextureVideoView paramTextureVideoView, boolean paramBoolean)
  {
    b = paramTextureVideoView;
    d = paramBoolean;
    b.setOnPreparedListener(m);
    b.setOnCompletionListener(l);
    b.setOnInfoListener(n);
    b.setOnErrorListener(o);
  }
  
  @awj
  public final void b()
  {
    g = 0;
    b.a();
    b.b();
  }
}

/* Location:
 * Qualified Name:     afu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */