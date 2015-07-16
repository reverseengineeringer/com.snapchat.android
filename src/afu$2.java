import android.media.MediaPlayer;
import android.media.MediaPlayer.OnPreparedListener;
import com.snapchat.android.ui.TextureVideoView;

final class afu$2
  implements MediaPlayer.OnPreparedListener
{
  afu$2(afu paramafu) {}
  
  public final void onPrepared(MediaPlayer paramMediaPlayer)
  {
    a.j = paramMediaPlayer.getVideoWidth();
    a.k = paramMediaPlayer.getVideoHeight();
    a.h = paramMediaPlayer.getDuration();
    a.f = 2;
    a.i = 0;
    a.g = 0;
    final afq localafq = a.e;
    if (localafq != null)
    {
      if (!a.a) {
        a.b.postDelayed(new Runnable()
        {
          public final void run()
          {
            localafq.b();
          }
        }, 250L);
      }
      return;
    }
    paramMediaPlayer.setLooping(a.d);
  }
}

/* Location:
 * Qualified Name:     afu.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */