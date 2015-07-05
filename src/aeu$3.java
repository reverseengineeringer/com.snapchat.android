import android.media.MediaPlayer;
import android.media.MediaPlayer.OnInfoListener;

final class aeu$3
  implements MediaPlayer.OnInfoListener
{
  aeu$3(aeu paramaeu) {}
  
  public final boolean onInfo(MediaPlayer paramMediaPlayer, int paramInt1, int paramInt2)
  {
    paramMediaPlayer = a.e;
    if ((paramMediaPlayer != null) && (a.a) && (paramInt1 == 3)) {
      paramMediaPlayer.b();
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     aeu.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */