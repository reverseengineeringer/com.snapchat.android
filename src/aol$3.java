import android.media.MediaPlayer;
import android.media.MediaPlayer.OnPreparedListener;
import com.snapchat.android.rendering.SnapMediaRenderer.a;

final class aol$3
  implements MediaPlayer.OnPreparedListener
{
  aol$3(aol paramaol) {}
  
  public final void onPrepared(MediaPlayer paramMediaPlayer)
  {
    aol.b(a).d();
    paramMediaPlayer.getDuration();
    paramMediaPlayer.getVideoWidth();
    paramMediaPlayer.getVideoHeight();
    aol.a(a, paramMediaPlayer);
    aol.d(a).setLooping(aol.c(a));
    if (aol.b(a).ai() == 2) {
      aol.d(a).setVolume(0.0F, 0.0F);
    }
    paramMediaPlayer = new avc(paramMediaPlayer.getVideoWidth(), paramMediaPlayer.getVideoHeight());
    aol.a(a, paramMediaPlayer);
    aol.e(a).a(aol.d(a).getDuration(), aol.d(a).getVideoWidth(), aol.d(a).getVideoHeight());
    if (att.SUPPORTS_MEDIA_INFO_VIDEO_RENDERING_START) {
      aol.d(a).setOnInfoListener(a.a);
    }
  }
}

/* Location:
 * Qualified Name:     aol.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */