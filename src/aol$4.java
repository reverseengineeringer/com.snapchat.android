import android.media.MediaPlayer;
import android.media.MediaPlayer.OnCompletionListener;
import com.snapchat.android.rendering.SnapMediaRenderer.a;

final class aol$4
  implements MediaPlayer.OnCompletionListener
{
  aol$4(aol paramaol) {}
  
  public final void onCompletion(MediaPlayer paramMediaPlayer)
  {
    if (paramMediaPlayer.isLooping())
    {
      aol.b(a);
      return;
    }
    aol.b(a);
    aol.e(a).b();
  }
}

/* Location:
 * Qualified Name:     aol.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */