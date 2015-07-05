package com.snapchat.android.scan;

import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import java.nio.ByteBuffer;
import java.nio.IntBuffer;

public class SnapScanResult$ScannerViewData
{
  private final boolean a;
  private final byte[] b;
  private final int c;
  private final int d;
  
  public SnapScanResult$ScannerViewData(boolean paramBoolean, byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    a = paramBoolean;
    b = paramArrayOfByte;
    c = paramInt1;
    d = paramInt2;
  }
  
  public Bitmap getScannerViewBitmapImage()
  {
    if ((a) && (b != null) && (d > 0) && (c > 0))
    {
      IntBuffer localIntBuffer = ByteBuffer.wrap(b).asIntBuffer();
      int[] arrayOfInt = new int[localIntBuffer.remaining()];
      localIntBuffer.get(arrayOfInt);
      return Bitmap.createBitmap(arrayOfInt, c, d, Bitmap.Config.ARGB_8888);
    }
    return null;
  }
  
  public byte[] getScannerViewImage()
  {
    return b;
  }
  
  public boolean hasScannerViewImage()
  {
    return a;
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.scan.SnapScanResult.ScannerViewData
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */