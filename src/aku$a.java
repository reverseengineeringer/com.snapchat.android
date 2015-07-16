import android.graphics.Bitmap;
import com.snapchat.videotranscoder.video.FragmentShader.Filter;

public final class aku$a
  extends aji.a<a>
{
  public Bitmap mFirstFrameBitmap;
  FragmentShader.Filter mShaderFilter = FragmentShader.Filter.NORMAL;
  aki mSnapWomb;
  oh mSnapbryoAnalytics;
  xp mTranscodingState = new xp();
  
  public final a a(aku paramaku)
  {
    super.a(paramaku);
    mTranscodingState = aku.a(paramaku);
    mShaderFilter = aku.b(paramaku);
    mFirstFrameBitmap = aku.c(paramaku);
    return this;
  }
  
  public final aku c()
  {
    super.a();
    if (mSnapbryoAnalytics == null) {
      mSnapbryoAnalytics = new oh();
    }
    if (mSnapWomb == null) {
      mSnapWomb = aki.a();
    }
    return new aku(this);
  }
}

/* Location:
 * Qualified Name:     aku.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */