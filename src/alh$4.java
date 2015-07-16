import android.media.MediaPlayer;
import android.media.MediaPlayer.OnErrorListener;
import com.snapchat.android.model.chat.ChatMedia;

final class alh$4
  implements MediaPlayer.OnErrorListener
{
  alh$4(alh paramalh) {}
  
  public final boolean onError(MediaPlayer paramMediaPlayer, int paramInt1, int paramInt2)
  {
    String.format("[%d] Chat video error %s what(%d) extra(%d)", new Object[] { Integer.valueOf(alh.a(this$0)), alh.b(this$0).d(), Integer.valueOf(paramInt1), Integer.valueOf(paramInt2) });
    alh.b(this$0, paramInt1);
    return true;
  }
}

/* Location:
 * Qualified Name:     alh.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */