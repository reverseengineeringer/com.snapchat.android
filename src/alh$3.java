import android.media.MediaPlayer;
import android.media.MediaPlayer.OnPreparedListener;
import com.snapchat.android.model.chat.ChatMedia;
import com.snapchat.android.ui.TextureVideoView;

final class alh$3
  implements MediaPlayer.OnPreparedListener
{
  alh$3(alh paramalh) {}
  
  public final void onPrepared(MediaPlayer paramMediaPlayer)
  {
    alh.a(this$0);
    alh.b(this$0).d();
    int i = paramMediaPlayer.getVideoWidth();
    int j = paramMediaPlayer.getVideoHeight();
    if ((i <= 0) || (j <= 0))
    {
      alh.f(this$0).a();
      String.format("[%d] Video %s could not be loaded due to invalid dimensions: %d x %d", new Object[] { Integer.valueOf(alh.a(this$0)), alh.b(this$0).d(), Integer.valueOf(i), Integer.valueOf(j) });
      alh.b(this$0, 1);
    }
    do
    {
      return;
      alh.a(this$0, 2);
      alh.i(this$0);
      alh.a(this$0, false);
      if (!alh.b(this$0).N()) {
        paramMediaPlayer.setVolume(0.0F, 0.0F);
      }
    } while (alh.e(this$0) != 3);
    this$0.c();
  }
}

/* Location:
 * Qualified Name:     alh.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */