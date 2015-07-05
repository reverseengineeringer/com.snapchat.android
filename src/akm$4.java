import android.media.MediaPlayer;
import android.media.MediaPlayer.OnErrorListener;
import com.snapchat.android.model.chat.ChatMedia;

final class akm$4
  implements MediaPlayer.OnErrorListener
{
  akm$4(akm paramakm) {}
  
  public final boolean onError(MediaPlayer paramMediaPlayer, int paramInt1, int paramInt2)
  {
    paramMediaPlayer = String.format("[%d] Chat video error %s what(%d) extra(%d)", new Object[] { Integer.valueOf(akm.a(this$0)), akm.b(this$0).d(), Integer.valueOf(paramInt1), Integer.valueOf(paramInt2) });
    akm.a(this$0, paramMediaPlayer, paramInt1);
    return true;
  }
}

/* Location:
 * Qualified Name:     akm.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */