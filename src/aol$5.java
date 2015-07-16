import android.media.MediaPlayer;
import android.media.MediaPlayer.OnErrorListener;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.rendering.SnapMediaRenderer.ErrorCode;
import com.snapchat.android.rendering.SnapMediaRenderer.a;
import com.snapchat.android.ui.SnapVideoView;

final class aol$5
  implements MediaPlayer.OnErrorListener
{
  aol$5(aol paramaol) {}
  
  public final boolean onError(MediaPlayer paramMediaPlayer, int paramInt1, int paramInt2)
  {
    aok.a(paramInt1);
    aol.b(a);
    if ((paramInt1 == 1) && (!aol.f(a)) && (aol.g(a) != null))
    {
      aol.b(a);
      aol.h(a);
      aol.a(a, null);
      aol.i(a).setVideoPath(aol.g(a));
      if (aol.j(a)) {
        aol.i(a).start();
      }
      return true;
    }
    aol.e(a).a(SnapMediaRenderer.ErrorCode.PLAYBACK_ERROR);
    AnalyticsEvents.b(paramInt1, paramInt2);
    return true;
  }
}

/* Location:
 * Qualified Name:     aol.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */