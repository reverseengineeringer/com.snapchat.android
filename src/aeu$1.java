import android.media.MediaPlayer;
import android.media.MediaPlayer.OnCompletionListener;
import com.snapchat.android.ui.TextureVideoView;

final class aeu$1
  implements MediaPlayer.OnCompletionListener
{
  aeu$1(aeu paramaeu) {}
  
  public final void onCompletion(MediaPlayer paramMediaPlayer)
  {
    paramMediaPlayer = a.e;
    if (paramMediaPlayer != null) {
      paramMediaPlayer.r_();
    }
    if (a.d) {
      a.b.start();
    }
  }
}

/* Location:
 * Qualified Name:     aeu.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */