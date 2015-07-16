import android.hardware.Camera;
import android.hardware.Camera.CameraInfo;

public final class wg
{
  public static double a(@chc yd paramyd)
  {
    return heightPixels / widthPixels;
  }
  
  public static int a(int paramInt1, int paramInt2)
  {
    if (paramInt1 > paramInt2) {
      return paramInt2;
    }
    if (paramInt1 < 0) {
      return 0;
    }
    return paramInt1;
  }
  
  @chd
  public static Camera a(int paramInt)
  {
    try
    {
      Camera localCamera = Camera.open(paramInt);
      return localCamera;
    }
    catch (RuntimeException localRuntimeException) {}
    return null;
  }
  
  public static Camera.CameraInfo[] a()
  {
    int j = Camera.getNumberOfCameras();
    Camera.CameraInfo[] arrayOfCameraInfo = new Camera.CameraInfo[j];
    int i = 0;
    while (i < j)
    {
      arrayOfCameraInfo[i] = new Camera.CameraInfo();
      Camera.getCameraInfo(i, arrayOfCameraInfo[i]);
      i += 1;
    }
    return arrayOfCameraInfo;
  }
}

/* Location:
 * Qualified Name:     wg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */