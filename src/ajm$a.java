import android.graphics.Bitmap;
import com.snapchat.videotranscoder.video.FragmentShader.Filter;

public final class ajm$a
  extends aim.a<a>
{
  public Bitmap mFirstFrameBitmap;
  FragmentShader.Filter mShaderFilter = FragmentShader.Filter.NORMAL;
  ajn mSnapWomb;
  nq mSnapbryoAnalytics;
  wu mTranscodingState = new wu();
  
  public final a a(ajm paramajm)
  {
    super.a(paramajm);
    mTranscodingState = ajm.a(paramajm);
    mShaderFilter = ajm.b(paramajm);
    mFirstFrameBitmap = ajm.c(paramajm);
    return this;
  }
  
  public final ajm c()
  {
    super.a();
    if (mSnapbryoAnalytics == null) {
      mSnapbryoAnalytics = new nq();
    }
    if (mSnapWomb == null) {
      mSnapWomb = ajn.a();
    }
    return new ajm(this);
  }
}

/* Location:
 * Qualified Name:     ajm.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */