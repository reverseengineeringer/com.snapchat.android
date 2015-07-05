package com.google.android.gms.internal;

public class zzwp
{
  private final byte[] zzaHo = new byte['Ā'];
  private int zzaHp;
  private int zzaHq;
  
  public zzwp(byte[] paramArrayOfByte)
  {
    int j = 0;
    while (j < 256)
    {
      zzaHo[j] = ((byte)j);
      j += 1;
    }
    int k = 0;
    j = 0;
    while (j < 256)
    {
      k = k + zzaHo[j] + paramArrayOfByte[(j % paramArrayOfByte.length)] & 0xFF;
      int i = zzaHo[j];
      zzaHo[j] = zzaHo[k];
      zzaHo[k] = i;
      j += 1;
    }
    zzaHp = 0;
    zzaHq = 0;
  }
  
  public void zzs(byte[] paramArrayOfByte)
  {
    int m = zzaHp;
    int k = zzaHq;
    int j = 0;
    while (j < paramArrayOfByte.length)
    {
      m = m + 1 & 0xFF;
      k = k + zzaHo[m] & 0xFF;
      int i = zzaHo[m];
      zzaHo[m] = zzaHo[k];
      zzaHo[k] = i;
      paramArrayOfByte[j] = ((byte)(paramArrayOfByte[j] ^ zzaHo[(zzaHo[m] + zzaHo[k] & 0xFF)]));
      j += 1;
    }
    zzaHp = m;
    zzaHq = k;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzwp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */