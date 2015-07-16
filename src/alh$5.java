import android.media.MediaPlayer;
import android.media.MediaPlayer.OnCompletionListener;
import com.snapchat.android.model.chat.ChatMedia;

final class alh$5
  implements MediaPlayer.OnCompletionListener
{
  alh$5(alh paramalh) {}
  
  public final void onCompletion(MediaPlayer paramMediaPlayer)
  {
    alh.a(this$0);
    alh.b(this$0).d();
    alh.a(this$0, true);
    paramMediaPlayer.setLooping(true);
    paramMediaPlayer.start();
  }
}

/* Location:
 * Qualified Name:     alh.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */