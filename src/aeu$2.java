import android.media.MediaPlayer;
import android.media.MediaPlayer.OnPreparedListener;
import com.snapchat.android.ui.TextureVideoView;

final class aeu$2
  implements MediaPlayer.OnPreparedListener
{
  aeu$2(aeu paramaeu) {}
  
  public final void onPrepared(MediaPlayer paramMediaPlayer)
  {
    a.h = paramMediaPlayer.getVideoWidth();
    a.i = paramMediaPlayer.getVideoHeight();
    a.g = paramMediaPlayer.getDuration();
    final aeq localaeq = a.e;
    if (localaeq != null)
    {
      if (!a.a) {
        a.b.postDelayed(new Runnable()
        {
          public final void run()
          {
            localaeq.b();
          }
        }, 250L);
      }
      return;
    }
    paramMediaPlayer.setLooping(a.d);
  }
}

/* Location:
 * Qualified Name:     aeu.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */