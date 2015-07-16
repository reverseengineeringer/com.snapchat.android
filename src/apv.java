import android.annotation.TargetApi;
import android.media.MediaPlayer;
import android.media.MediaPlayer.OnBufferingUpdateListener;
import android.media.MediaPlayer.OnCompletionListener;
import android.media.MediaPlayer.OnErrorListener;
import android.media.MediaPlayer.OnInfoListener;
import android.media.MediaPlayer.OnPreparedListener;
import android.media.MediaPlayer.OnSeekCompleteListener;
import android.media.MediaPlayer.OnTimedTextListener;
import android.media.MediaPlayer.OnVideoSizeChangedListener;
import android.media.TimedText;
import android.os.Handler;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;

public final class apv
  extends MediaPlayer
{
  private static int a = 0;
  private final apv.a b;
  private final Executor c;
  private final int d;
  private final Runnable e = new Runnable()
  {
    public final void run()
    {
      apv.a(apv.this);
    }
  };
  private final Runnable f = new Runnable()
  {
    public final void run()
    {
      apv.b(apv.this);
    }
  };
  private final Runnable g = new Runnable()
  {
    public final void run()
    {
      apv.c(apv.this);
    }
  };
  private final Runnable h = new Runnable()
  {
    public final void run()
    {
      apv.d(apv.this);
    }
  };
  private final Runnable i = new Runnable()
  {
    public final void run()
    {
      apv.e(apv.this);
    }
  };
  private final Runnable j = new Runnable()
  {
    public final void run()
    {
      apv.f(apv.this);
    }
  };
  
  public apv()
  {
    this(new apv.a(), avf.MEDIA_PLAYER_SERIAL_EXECUTOR);
    bhp.a();
  }
  
  private apv(apv.a parama, ExecutorService paramExecutorService)
  {
    c = paramExecutorService;
    b = parama;
    int k = a;
    a = k + 1;
    d = k;
  }
  
  public final int getVideoHeight()
  {
    try
    {
      int k = super.getVideoHeight();
      return k;
    }
    catch (IllegalStateException localIllegalStateException) {}
    return 0;
  }
  
  public final int getVideoWidth()
  {
    try
    {
      int k = super.getVideoWidth();
      return k;
    }
    catch (IllegalStateException localIllegalStateException) {}
    return 0;
  }
  
  public final void pause()
  {
    int k = d;
    bhp.a();
    c.execute(h);
  }
  
  public final void prepareAsync()
  {
    int k = d;
    bhp.a();
    c.execute(e);
  }
  
  public final void release()
  {
    int k = d;
    bhp.a();
    c.execute(i);
  }
  
  public final void reset()
  {
    int k = d;
    bhp.a();
    c.execute(j);
  }
  
  public final void seekTo(final int paramInt)
  {
    int k = d;
    bhp.a();
    c.execute(new Runnable()
    {
      public final void run()
      {
        apv.a(apv.this, paramInt);
      }
    });
  }
  
  public final void setOnBufferingUpdateListener(MediaPlayer.OnBufferingUpdateListener paramOnBufferingUpdateListener)
  {
    b.c = paramOnBufferingUpdateListener;
    super.setOnBufferingUpdateListener(b);
  }
  
  public final void setOnCompletionListener(MediaPlayer.OnCompletionListener paramOnCompletionListener)
  {
    b.b = paramOnCompletionListener;
    super.setOnCompletionListener(b);
  }
  
  public final void setOnErrorListener(MediaPlayer.OnErrorListener paramOnErrorListener)
  {
    b.g = paramOnErrorListener;
    super.setOnErrorListener(b);
  }
  
  public final void setOnInfoListener(MediaPlayer.OnInfoListener paramOnInfoListener)
  {
    b.h = paramOnInfoListener;
    super.setOnInfoListener(b);
  }
  
  public final void setOnPreparedListener(MediaPlayer.OnPreparedListener paramOnPreparedListener)
  {
    b.a = paramOnPreparedListener;
    super.setOnPreparedListener(b);
  }
  
  public final void setOnSeekCompleteListener(MediaPlayer.OnSeekCompleteListener paramOnSeekCompleteListener)
  {
    b.d = paramOnSeekCompleteListener;
    super.setOnSeekCompleteListener(b);
  }
  
  @TargetApi(16)
  public final void setOnTimedTextListener(MediaPlayer.OnTimedTextListener paramOnTimedTextListener)
  {
    b.f = paramOnTimedTextListener;
    super.setOnTimedTextListener(b);
  }
  
  public final void setOnVideoSizeChangedListener(MediaPlayer.OnVideoSizeChangedListener paramOnVideoSizeChangedListener)
  {
    b.e = paramOnVideoSizeChangedListener;
    super.setOnVideoSizeChangedListener(b);
  }
  
  public final void start()
  {
    int k = d;
    bhp.a();
    c.execute(f);
  }
  
  public final void stop()
  {
    int k = d;
    bhp.a();
    c.execute(g);
  }
  
  @TargetApi(16)
  static final class a
    implements MediaPlayer.OnBufferingUpdateListener, MediaPlayer.OnCompletionListener, MediaPlayer.OnErrorListener, MediaPlayer.OnInfoListener, MediaPlayer.OnPreparedListener, MediaPlayer.OnSeekCompleteListener, MediaPlayer.OnTimedTextListener, MediaPlayer.OnVideoSizeChangedListener
  {
    MediaPlayer.OnPreparedListener a;
    MediaPlayer.OnCompletionListener b;
    MediaPlayer.OnBufferingUpdateListener c;
    MediaPlayer.OnSeekCompleteListener d;
    MediaPlayer.OnVideoSizeChangedListener e;
    MediaPlayer.OnTimedTextListener f;
    MediaPlayer.OnErrorListener g;
    MediaPlayer.OnInfoListener h;
    private final Handler i;
    
    public a()
    {
      this(new Handler());
    }
    
    private a(Handler paramHandler)
    {
      i = paramHandler;
    }
    
    public final void onBufferingUpdate(final MediaPlayer paramMediaPlayer, final int paramInt)
    {
      final MediaPlayer.OnBufferingUpdateListener localOnBufferingUpdateListener = c;
      if (localOnBufferingUpdateListener != null) {
        i.post(new Runnable()
        {
          public final void run()
          {
            localOnBufferingUpdateListener.onBufferingUpdate(paramMediaPlayer, paramInt);
          }
        });
      }
    }
    
    public final void onCompletion(final MediaPlayer paramMediaPlayer)
    {
      final MediaPlayer.OnCompletionListener localOnCompletionListener = b;
      if (localOnCompletionListener != null) {
        i.post(new Runnable()
        {
          public final void run()
          {
            localOnCompletionListener.onCompletion(paramMediaPlayer);
          }
        });
      }
    }
    
    public final boolean onError(final MediaPlayer paramMediaPlayer, final int paramInt1, final int paramInt2)
    {
      final MediaPlayer.OnErrorListener localOnErrorListener = g;
      if (localOnErrorListener != null) {
        i.post(new Runnable()
        {
          public final void run()
          {
            localOnErrorListener.onError(paramMediaPlayer, paramInt1, paramInt2);
          }
        });
      }
      return true;
    }
    
    public final boolean onInfo(final MediaPlayer paramMediaPlayer, final int paramInt1, final int paramInt2)
    {
      final MediaPlayer.OnInfoListener localOnInfoListener = h;
      if (localOnInfoListener != null) {
        i.post(new Runnable()
        {
          public final void run()
          {
            localOnInfoListener.onInfo(paramMediaPlayer, paramInt1, paramInt2);
          }
        });
      }
      return true;
    }
    
    public final void onPrepared(final MediaPlayer paramMediaPlayer)
    {
      final MediaPlayer.OnPreparedListener localOnPreparedListener = a;
      if (localOnPreparedListener != null) {
        i.post(new Runnable()
        {
          public final void run()
          {
            localOnPreparedListener.onPrepared(paramMediaPlayer);
          }
        });
      }
    }
    
    public final void onSeekComplete(final MediaPlayer paramMediaPlayer)
    {
      final MediaPlayer.OnSeekCompleteListener localOnSeekCompleteListener = d;
      if (localOnSeekCompleteListener != null) {
        i.post(new Runnable()
        {
          public final void run()
          {
            localOnSeekCompleteListener.onSeekComplete(paramMediaPlayer);
          }
        });
      }
    }
    
    public final void onTimedText(final MediaPlayer paramMediaPlayer, final TimedText paramTimedText)
    {
      final MediaPlayer.OnTimedTextListener localOnTimedTextListener = f;
      if (localOnTimedTextListener != null) {
        i.post(new Runnable()
        {
          public final void run()
          {
            localOnTimedTextListener.onTimedText(paramMediaPlayer, paramTimedText);
          }
        });
      }
    }
    
    public final void onVideoSizeChanged(final MediaPlayer paramMediaPlayer, final int paramInt1, final int paramInt2)
    {
      final MediaPlayer.OnVideoSizeChangedListener localOnVideoSizeChangedListener = e;
      if (localOnVideoSizeChangedListener != null) {
        i.post(new Runnable()
        {
          public final void run()
          {
            localOnVideoSizeChangedListener.onVideoSizeChanged(paramMediaPlayer, paramInt1, paramInt2);
          }
        });
      }
    }
  }
}

/* Location:
 * Qualified Name:     apv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */