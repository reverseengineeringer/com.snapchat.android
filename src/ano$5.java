import android.media.MediaPlayer;
import android.media.MediaPlayer.OnErrorListener;
import com.snapchat.android.Timber;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.rendering.SnapMediaRenderer.ErrorCode;
import com.snapchat.android.rendering.SnapMediaRenderer.a;
import com.snapchat.android.ui.SnapVideoView;

final class ano$5
  implements MediaPlayer.OnErrorListener
{
  ano$5(ano paramano) {}
  
  public final boolean onError(MediaPlayer paramMediaPlayer, int paramInt1, int paramInt2)
  {
    Timber.f(ano.e(), "SNAP-VIEW: onError: %s extra=%d snap=%s", new Object[] { ann.a(paramInt1), Integer.valueOf(paramInt2), ano.b(a) });
    if ((paramInt1 == 1) && (!ano.f(a)) && (ano.g(a) != null))
    {
      Timber.c(ano.e(), "SNAP-VIEW: onError resetting media player and retrying, snap=%s", new Object[] { ano.b(a) });
      ano.h(a);
      ano.a(a, null);
      ano.i(a).setVideoPath(ano.g(a));
      if (ano.j(a)) {
        ano.i(a).start();
      }
      return true;
    }
    ano.e(a).a(SnapMediaRenderer.ErrorCode.PLAYBACK_ERROR);
    AnalyticsEvents.b(paramInt1, paramInt2);
    return true;
  }
}

/* Location:
 * Qualified Name:     ano.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */