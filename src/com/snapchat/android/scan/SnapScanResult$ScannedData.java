package com.snapchat.android.scan;

public class SnapScanResult$ScannedData
{
  private final boolean a;
  private int b;
  private final byte[] c;
  
  public SnapScanResult$ScannedData(boolean paramBoolean, int paramInt, byte[] paramArrayOfByte)
  {
    a = paramBoolean;
    b = paramInt;
    c = paramArrayOfByte;
  }
  
  public byte[] getSnapcodeMessage()
  {
    return c;
  }
  
  public int getSnapcodeVersion()
  {
    return b;
  }
  
  public boolean hasScannedData()
  {
    return a;
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.scan.SnapScanResult.ScannedData
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */