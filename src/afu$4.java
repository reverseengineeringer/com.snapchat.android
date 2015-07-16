import android.media.MediaPlayer;
import android.media.MediaPlayer.OnErrorListener;
import com.snapchat.android.ui.TextureVideoView;

final class afu$4
  implements MediaPlayer.OnErrorListener
{
  afu$4(afu paramafu) {}
  
  public final boolean onError(MediaPlayer paramMediaPlayer, int paramInt1, int paramInt2)
  {
    paramMediaPlayer = String.format("Error=%s extra=%d", new Object[] { aok.a(paramInt1), Integer.valueOf(paramInt2) });
    if (a.f > 0)
    {
      paramMediaPlayer = a;
      f -= 1;
      paramInt1 = a.f;
      a.b.post(new Runnable()
      {
        public final void run()
        {
          a.b();
          a.a();
        }
      });
    }
    afq localafq;
    do
    {
      return true;
      localafq = a.e;
    } while (localafq == null);
    localafq.a(paramMediaPlayer);
    return true;
  }
}

/* Location:
 * Qualified Name:     afu.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */