import android.media.MediaPlayer;
import android.media.MediaPlayer.OnCompletionListener;
import com.snapchat.android.Timber;
import com.snapchat.android.rendering.SnapMediaRenderer.a;

final class ano$4
  implements MediaPlayer.OnCompletionListener
{
  ano$4(ano paramano) {}
  
  public final void onCompletion(MediaPlayer paramMediaPlayer)
  {
    if (paramMediaPlayer.isLooping())
    {
      Timber.c(ano.e(), "SNAP-VIEW: Completed %s but skipped callback because video is looping", new Object[] { ano.b(a) });
      return;
    }
    Timber.c(ano.e(), "SNAP-VIEW: Completed %s", new Object[] { ano.b(a) });
    ano.e(a).b();
  }
}

/* Location:
 * Qualified Name:     ano.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */