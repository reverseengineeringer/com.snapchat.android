import android.media.MediaPlayer;
import android.media.MediaPlayer.OnCompletionListener;
import android.media.MediaPlayer.OnErrorListener;
import android.media.MediaPlayer.OnInfoListener;
import android.media.MediaPlayer.OnPreparedListener;
import com.snapchat.android.Timber;
import com.snapchat.android.ui.TextureVideoView;

public final class aeu
{
  final boolean a;
  TextureVideoView b;
  public String c;
  public boolean d;
  public aeq e;
  int f = 2;
  public int g = -1;
  public float h = 0.0F;
  public float i = 0.0F;
  protected MediaPlayer.OnCompletionListener j = new MediaPlayer.OnCompletionListener()
  {
    public final void onCompletion(MediaPlayer paramAnonymousMediaPlayer)
    {
      paramAnonymousMediaPlayer = e;
      if (paramAnonymousMediaPlayer != null) {
        paramAnonymousMediaPlayer.r_();
      }
      if (d) {
        b.start();
      }
    }
  };
  protected MediaPlayer.OnPreparedListener k = new MediaPlayer.OnPreparedListener()
  {
    public final void onPrepared(MediaPlayer paramAnonymousMediaPlayer)
    {
      h = paramAnonymousMediaPlayer.getVideoWidth();
      i = paramAnonymousMediaPlayer.getVideoHeight();
      g = paramAnonymousMediaPlayer.getDuration();
      final aeq localaeq = e;
      if (localaeq != null)
      {
        if (!a) {
          b.postDelayed(new Runnable()
          {
            public final void run()
            {
              localaeq.b();
            }
          }, 250L);
        }
        return;
      }
      paramAnonymousMediaPlayer.setLooping(d);
    }
  };
  protected MediaPlayer.OnInfoListener l = new MediaPlayer.OnInfoListener()
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
  protected MediaPlayer.OnErrorListener m = new MediaPlayer.OnErrorListener()
  {
    public final boolean onError(MediaPlayer paramAnonymousMediaPlayer, int paramAnonymousInt1, int paramAnonymousInt2)
    {
      paramAnonymousMediaPlayer = String.format("Error=%s extra=%d", new Object[] { ann.a(paramAnonymousInt1), Integer.valueOf(paramAnonymousInt2) });
      Timber.f("VideoViewController", paramAnonymousMediaPlayer, new Object[0]);
      if (f > 0)
      {
        paramAnonymousMediaPlayer = aeu.this;
        f -= 1;
        Timber.c("VideoViewController", "Retrying the media player following an error, %d retries remain", new Object[] { Integer.valueOf(f) });
        b.post(new Runnable()
        {
          public final void run()
          {
            b();
            a();
          }
        });
      }
      aeq localaeq;
      do
      {
        return true;
        Timber.c("VideoViewController", "Aborting retry following an error, %d retries were attempted", new Object[] { Integer.valueOf(2) });
        localaeq = e;
      } while (localaeq == null);
      localaeq.a(paramAnonymousMediaPlayer);
      return true;
    }
  };
  private int n = 0;
  
  public aeu(boolean paramBoolean) {}
  
  private aeu(boolean paramBoolean1, boolean paramBoolean2)
  {
    d = paramBoolean1;
    a = paramBoolean2;
  }
  
  @avl
  public final void a()
  {
    if (c == null)
    {
      Timber.f("VideoViewController", "Calling start on an uninitialized controller.", new Object[0]);
      return;
    }
    b.setVideoPath(c);
    b.start();
  }
  
  public final void a(@cgb TextureVideoView paramTextureVideoView, boolean paramBoolean)
  {
    f = 2;
    b = paramTextureVideoView;
    d = paramBoolean;
    b.setOnPreparedListener(k);
    b.setOnCompletionListener(j);
    b.setOnInfoListener(l);
    b.setOnErrorListener(m);
  }
  
  @avl
  public final void b()
  {
    n = 0;
    b.a();
    b.b();
  }
}

/* Location:
 * Qualified Name:     aeu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */