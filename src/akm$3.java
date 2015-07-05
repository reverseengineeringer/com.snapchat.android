import android.media.MediaPlayer;
import android.media.MediaPlayer.OnPreparedListener;
import com.snapchat.android.Timber;
import com.snapchat.android.model.chat.ChatMedia;
import com.snapchat.android.ui.TextureVideoView;

final class akm$3
  implements MediaPlayer.OnPreparedListener
{
  akm$3(akm paramakm) {}
  
  public final void onPrepared(MediaPlayer paramMediaPlayer)
  {
    Timber.a("ChatVideoItemProxy", "[%d] Chat video prepared %s", new Object[] { Integer.valueOf(akm.a(this$0)), akm.b(this$0).d() });
    int i = paramMediaPlayer.getVideoWidth();
    int j = paramMediaPlayer.getVideoHeight();
    if ((i <= 0) || (j <= 0))
    {
      akm.f(this$0).a();
      paramMediaPlayer = String.format("[%d] Video %s could not be loaded due to invalid dimensions: %d x %d", new Object[] { Integer.valueOf(akm.a(this$0)), akm.b(this$0).d(), Integer.valueOf(i), Integer.valueOf(j) });
      akm.a(this$0, paramMediaPlayer, 1);
    }
    do
    {
      return;
      akm.a(this$0, 2);
      akm.i(this$0);
      akm.a(this$0, false);
      if (!akm.b(this$0).M()) {
        paramMediaPlayer.setVolume(0.0F, 0.0F);
      }
    } while (akm.e(this$0) != 3);
    this$0.c();
  }
}

/* Location:
 * Qualified Name:     akm.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */