import android.media.MediaPlayer;
import android.media.MediaPlayer.OnCompletionListener;
import com.snapchat.android.Timber;
import com.snapchat.android.model.chat.ChatMedia;

final class akm$5
  implements MediaPlayer.OnCompletionListener
{
  akm$5(akm paramakm) {}
  
  public final void onCompletion(MediaPlayer paramMediaPlayer)
  {
    Timber.a("ChatVideoItemProxy", "[%d] Chat video playback completed %s", new Object[] { Integer.valueOf(akm.a(this$0)), akm.b(this$0).d() });
    akm.a(this$0, true);
    paramMediaPlayer.setLooping(true);
    paramMediaPlayer.start();
  }
}

/* Location:
 * Qualified Name:     akm.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */