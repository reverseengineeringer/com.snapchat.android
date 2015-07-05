import android.media.MediaPlayer;
import android.media.MediaPlayer.OnInfoListener;
import com.snapchat.android.Timber;

final class ano$2
  implements MediaPlayer.OnInfoListener
{
  ano$2(ano paramano) {}
  
  public final boolean onInfo(MediaPlayer paramMediaPlayer, int paramInt1, int paramInt2)
  {
    Timber.c(ano.e(), "SNAP-VIEW: onInfo: %s extra=%d", new Object[] { ann.b(paramInt1), Integer.valueOf(paramInt2) });
    if (paramInt1 == 3) {
      ano.a(a);
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     ano.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */