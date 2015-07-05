import android.media.MediaPlayer;
import android.media.MediaPlayer.OnPreparedListener;

final class afr$1
  implements MediaPlayer.OnPreparedListener
{
  afr$1(afr paramafr, boolean paramBoolean) {}
  
  public final void onPrepared(MediaPlayer paramMediaPlayer)
  {
    paramMediaPlayer.setLooping(true);
    if (a) {
      paramMediaPlayer.setVolume(0.0F, 0.0F);
    }
  }
}

/* Location:
 * Qualified Name:     afr.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */