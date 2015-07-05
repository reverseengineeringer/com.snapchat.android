import android.media.MediaPlayer;
import android.media.MediaPlayer.OnBufferingUpdateListener;

final class aoz$a$1
  implements Runnable
{
  aoz$a$1(aoz.a parama, MediaPlayer.OnBufferingUpdateListener paramOnBufferingUpdateListener, MediaPlayer paramMediaPlayer, int paramInt) {}
  
  public final void run()
  {
    a.onBufferingUpdate(b, c);
  }
}

/* Location:
 * Qualified Name:     aoz.a.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */