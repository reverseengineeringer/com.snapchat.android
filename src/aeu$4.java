import android.media.MediaPlayer;
import android.media.MediaPlayer.OnErrorListener;
import com.snapchat.android.Timber;
import com.snapchat.android.ui.TextureVideoView;

final class aeu$4
  implements MediaPlayer.OnErrorListener
{
  aeu$4(aeu paramaeu) {}
  
  public final boolean onError(MediaPlayer paramMediaPlayer, int paramInt1, int paramInt2)
  {
    paramMediaPlayer = String.format("Error=%s extra=%d", new Object[] { ann.a(paramInt1), Integer.valueOf(paramInt2) });
    Timber.f("VideoViewController", paramMediaPlayer, new Object[0]);
    if (a.f > 0)
    {
      paramMediaPlayer = a;
      f -= 1;
      Timber.c("VideoViewController", "Retrying the media player following an error, %d retries remain", new Object[] { Integer.valueOf(a.f) });
      a.b.post(new Runnable()
      {
        public final void run()
        {
          a.b();
          a.a();
        }
      });
    }
    aeq localaeq;
    do
    {
      return true;
      Timber.c("VideoViewController", "Aborting retry following an error, %d retries were attempted", new Object[] { Integer.valueOf(2) });
      localaeq = a.e;
    } while (localaeq == null);
    localaeq.a(paramMediaPlayer);
    return true;
  }
}

/* Location:
 * Qualified Name:     aeu.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */