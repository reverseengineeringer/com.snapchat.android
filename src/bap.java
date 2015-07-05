import com.snapchat.android.camera.model.CameraModel.CameraType;
import com.snapchat.android.util.eventbus.CameraDisplayState;

public final class bap
{
  @cgc
  public final CameraModel.CameraType cameraToResume;
  public final CameraDisplayState displayState;
  
  public bap(@cgb CameraDisplayState paramCameraDisplayState)
  {
    this(paramCameraDisplayState, null);
  }
  
  public bap(@cgb CameraDisplayState paramCameraDisplayState, @cgc CameraModel.CameraType paramCameraType)
  {
    displayState = ((CameraDisplayState)ck.a(paramCameraDisplayState));
    cameraToResume = paramCameraType;
  }
  
  public final boolean a()
  {
    return displayState != CameraDisplayState.CLOSE;
  }
}

/* Location:
 * Qualified Name:     bap
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */