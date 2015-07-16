import com.snapchat.android.camera.model.CameraModel.CameraType;
import com.snapchat.android.util.eventbus.CameraDisplayState;

public final class bbq
{
  @chd
  public final CameraModel.CameraType cameraToResume;
  public final CameraDisplayState displayState;
  
  public bbq(@chc CameraDisplayState paramCameraDisplayState)
  {
    this(paramCameraDisplayState, null);
  }
  
  public bbq(@chc CameraDisplayState paramCameraDisplayState, @chd CameraModel.CameraType paramCameraType)
  {
    displayState = ((CameraDisplayState)co.a(paramCameraDisplayState));
    cameraToResume = paramCameraType;
  }
  
  public final boolean a()
  {
    return displayState != CameraDisplayState.CLOSE;
  }
}

/* Location:
 * Qualified Name:     bbq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */