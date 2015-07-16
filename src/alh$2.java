import android.media.MediaPlayer;
import android.media.MediaPlayer.OnSeekCompleteListener;
import com.snapchat.android.model.chat.ChatMedia;
import com.snapchat.android.ui.TextureVideoView;
import com.snapchat.android.ui.chat.ChatDiscoverVideoPresenter;
import com.snapchat.android.ui.chat.ChatDiscoverVideoPresenter.VideoState;

final class alh$2
  implements MediaPlayer.OnSeekCompleteListener
{
  alh$2(alh paramalh) {}
  
  public final void onSeekComplete(MediaPlayer paramMediaPlayer)
  {
    if (alh.e(this$0) == 3)
    {
      alh.a(this$0);
      alh.b(this$0).d();
      alh.f(this$0).start();
      alh.g(this$0).a(ChatDiscoverVideoPresenter.VideoState.PLAYING);
      alh.a(this$0, 3);
      if (alh.h(this$0) != null) {
        alh.h(this$0).g();
      }
    }
  }
}

/* Location:
 * Qualified Name:     alh.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */