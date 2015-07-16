import android.media.MediaPlayer;
import android.media.MediaPlayer.OnCompletionListener;

final class afs$1
  implements MediaPlayer.OnCompletionListener
{
  afs$1(afs paramafs) {}
  
  public final void onCompletion(MediaPlayer paramMediaPlayer)
  {
    paramMediaPlayer = a;
    g += 1;
    paramMediaPlayer = a.d;
    if (paramMediaPlayer != null) {
      paramMediaPlayer.p_();
    }
  }
}

/* Location:
 * Qualified Name:     afs.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */