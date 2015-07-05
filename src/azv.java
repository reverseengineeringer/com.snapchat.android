import android.app.Activity;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;

public final class azv
  implements SensorEventListener
{
  public static final int NUMBER_OF_DATA_POINTS = 20;
  protected static final int SHAKE_COUNT_THRESHOLD = 2;
  private static final float THRESHOLD = 18.0F;
  public Activity mActivity;
  private int mBufferIndex;
  private float[] mBufferX = new float[20];
  private float[] mBufferY = new float[20];
  private float[] mBufferZ = new float[20];
  public azv.a mBugReporter;
  public boolean mCanSendReports;
  private boolean mIsBufferFilled = false;
  public SensorManager mSensorManager;
  private int mShakeCount;
  
  private static float a(float[] paramArrayOfFloat, float paramFloat1, float paramFloat2)
  {
    int j = paramArrayOfFloat.length;
    int i = 0;
    float f;
    if (i < j)
    {
      f = paramArrayOfFloat[i];
      if (f >= paramFloat1) {
        break label82;
      }
      paramFloat1 = f;
    }
    label79:
    label82:
    for (;;)
    {
      i += 1;
      break;
      j = paramArrayOfFloat.length;
      i = 0;
      if (i < j)
      {
        f = paramArrayOfFloat[i];
        if (f <= paramFloat2) {
          break label79;
        }
        paramFloat2 = f;
      }
      for (;;)
      {
        i += 1;
        break;
        return Math.abs(paramFloat2 - paramFloat1);
      }
    }
  }
  
  private void c()
  {
    mIsBufferFilled = false;
    mBufferIndex = 0;
  }
  
  public final void a()
  {
    mSensorManager.unregisterListener(this);
  }
  
  public final void b()
  {
    c();
    mCanSendReports = true;
  }
  
  public final void onAccuracyChanged(Sensor paramSensor, int paramInt) {}
  
  public final void onSensorChanged(SensorEvent paramSensorEvent)
  {
    int i = 1;
    float[] arrayOfFloat = new float[3];
    arrayOfFloat[0] = values[0];
    arrayOfFloat[1] = values[1];
    arrayOfFloat[2] = values[2];
    mBufferX[mBufferIndex] = arrayOfFloat[0];
    mBufferY[mBufferIndex] = arrayOfFloat[1];
    mBufferZ[mBufferIndex] = arrayOfFloat[2];
    mBufferIndex += 1;
    if (mBufferIndex == mBufferX.length)
    {
      mIsBufferFilled = true;
      mBufferIndex = 0;
    }
    if (mIsBufferFilled)
    {
      float f1 = a(mBufferX, Float.MAX_VALUE, Float.MIN_VALUE);
      float f2 = a(mBufferY, Float.MAX_VALUE, Float.MIN_VALUE);
      float f3 = a(mBufferZ, Float.MAX_VALUE, Float.MIN_VALUE);
      if ((f1 <= 18.0F) && (f2 <= 18.0F) && (f3 <= 18.0F)) {
        break label247;
      }
      if (mShakeCount > 2)
      {
        mShakeCount = 0;
        if ((i != 0) && (mCanSendReports))
        {
          mCanSendReports = false;
          if (mBugReporter != null) {
            mBugReporter.a(mActivity, this);
          }
        }
        return;
      }
      mShakeCount += 1;
      c();
    }
    for (;;)
    {
      i = 0;
      break;
      label247:
      mShakeCount = 0;
    }
  }
  
  public static abstract interface a
  {
    public abstract void a(Activity paramActivity, azv paramazv);
  }
}

/* Location:
 * Qualified Name:     azv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */