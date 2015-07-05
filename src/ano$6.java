import android.media.MediaPlayer;
import android.media.MediaPlayer.OnErrorListener;
import com.snapchat.android.Timber;

final class ano$6
  implements MediaPlayer.OnErrorListener
{
  public final boolean onError(MediaPlayer paramMediaPlayer, int paramInt1, int paramInt2)
  {
    Timber.e(ano.e(), "SNAP-VIEW: onError: %s extra=%d", new Object[] { ann.a(paramInt1), Integer.valueOf(paramInt2) });
    return true;
  }
}

/* Location:
 * Qualified Name:     ano.6
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */