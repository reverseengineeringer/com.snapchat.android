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

@TargetApi(16)
final class aoz$a
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
  
  public aoz$a()
  {
    this(new Handler());
  }
  
  private aoz$a(Handler paramHandler)
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

/* Location:
 * Qualified Name:     aoz.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */