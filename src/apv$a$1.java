import android.media.MediaPlayer;
import android.media.MediaPlayer.OnBufferingUpdateListener;

final class apv$a$1
  implements Runnable
{
  apv$a$1(apv.a parama, MediaPlayer.OnBufferingUpdateListener paramOnBufferingUpdateListener, MediaPlayer paramMediaPlayer, int paramInt) {}
  
  public final void run()
  {
    a.onBufferingUpdate(b, c);
  }
}

/* Location:
 * Qualified Name:     apv.a.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */