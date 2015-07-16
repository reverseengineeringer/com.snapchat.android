import android.media.MediaPlayer;
import android.media.MediaPlayer.OnCompletionListener;
import com.snapchat.android.ui.TextureVideoView;

final class afu$1
  implements MediaPlayer.OnCompletionListener
{
  afu$1(afu paramafu) {}
  
  public final void onCompletion(MediaPlayer paramMediaPlayer)
  {
    paramMediaPlayer = a.e;
    if (paramMediaPlayer != null) {
      paramMediaPlayer.p_();
    }
    paramMediaPlayer = a;
    i += 1;
    if (a.d) {
      a.b.start();
    }
  }
}

/* Location:
 * Qualified Name:     afu.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */