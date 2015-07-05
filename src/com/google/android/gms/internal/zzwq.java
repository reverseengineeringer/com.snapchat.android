package com.google.android.gms.internal;

public final class zzwq
{
  private final byte[] buffer;
  private int zzaHr;
  private int zzaHs;
  private int zzaHt;
  private int zzaHu;
  private int zzaHv;
  private int zzaHw = Integer.MAX_VALUE;
  private int zzaHx;
  private int zzaHy = 64;
  private int zzaHz = 67108864;
  
  private zzwq(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    buffer = paramArrayOfByte;
    zzaHr = paramInt1;
    zzaHs = (paramInt1 + paramInt2);
    zzaHu = paramInt1;
  }
  
  public static long zzK(long paramLong)
  {
    return paramLong >>> 1 ^ -(1L & paramLong);
  }
  
  public static zzwq zza(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    return new zzwq(paramArrayOfByte, paramInt1, paramInt2);
  }
  
  public static int zzio(int paramInt)
  {
    return paramInt >>> 1 ^ -(paramInt & 0x1);
  }
  
  public static zzwq zzt(byte[] paramArrayOfByte)
  {
    return zza(paramArrayOfByte, 0, paramArrayOfByte.length);
  }
  
  private void zzvF()
  {
    zzaHs += zzaHt;
    int i = zzaHs;
    if (i > zzaHw)
    {
      zzaHt = (i - zzaHw);
      zzaHs -= zzaHt;
      return;
    }
    zzaHt = 0;
  }
  
  public final int getPosition()
  {
    return zzaHu - zzaHr;
  }
  
  public final byte[] readBytes()
  {
    int i = zzvB();
    if ((i <= zzaHs - zzaHu) && (i > 0))
    {
      byte[] arrayOfByte = new byte[i];
      System.arraycopy(buffer, zzaHu, arrayOfByte, 0, i);
      zzaHu = (i + zzaHu);
      return arrayOfByte;
    }
    return zzis(i);
  }
  
  public final double readDouble()
  {
    return Double.longBitsToDouble(zzvE());
  }
  
  public final float readFloat()
  {
    return Float.intBitsToFloat(zzvD());
  }
  
  public final String readString()
  {
    int i = zzvB();
    if ((i <= zzaHs - zzaHu) && (i > 0))
    {
      String str = new String(buffer, zzaHu, i, "UTF-8");
      zzaHu = (i + zzaHu);
      return str;
    }
    return new String(zzis(i), "UTF-8");
  }
  
  public final void zza(zzwy paramzzwy)
  {
    int i = zzvB();
    if (zzaHx >= zzaHy) {
      throw zzwx.zzvW();
    }
    i = zzip(i);
    zzaHx += 1;
    paramzzwy.zzb(this);
    zzim(0);
    zzaHx -= 1;
    zziq(i);
  }
  
  public final void zza(zzwy paramzzwy, int paramInt)
  {
    if (zzaHx >= zzaHy) {
      throw zzwx.zzvW();
    }
    zzaHx += 1;
    paramzzwy.zzb(this);
    zzim(zzxb.zzD(paramInt, 4));
    zzaHx -= 1;
  }
  
  public final void zzim(int paramInt)
  {
    if (zzaHv != paramInt) {
      throw zzwx.zzvU();
    }
  }
  
  public final boolean zzin(int paramInt)
  {
    switch (zzxb.zziH(paramInt))
    {
    default: 
      throw zzwx.zzvV();
    case 0: 
      zzvx();
      return true;
    case 1: 
      zzvE();
      return true;
    case 2: 
      zzit(zzvB());
      return true;
    case 3: 
      zzvv();
      zzim(zzxb.zzD(zzxb.zziI(paramInt), 4));
      return true;
    case 4: 
      return false;
    }
    zzvD();
    return true;
  }
  
  public final int zzip(int paramInt)
  {
    if (paramInt < 0) {
      throw zzwx.zzvR();
    }
    paramInt = zzaHu + paramInt;
    int i = zzaHw;
    if (paramInt > i) {
      throw zzwx.zzvQ();
    }
    zzaHw = paramInt;
    zzvF();
    return i;
  }
  
  public final void zziq(int paramInt)
  {
    zzaHw = paramInt;
    zzvF();
  }
  
  public final void zzir(int paramInt)
  {
    if (paramInt > zzaHu - zzaHr) {
      throw new IllegalArgumentException("Position " + paramInt + " is beyond current " + (zzaHu - zzaHr));
    }
    if (paramInt < 0) {
      throw new IllegalArgumentException("Bad position " + paramInt);
    }
    zzaHu = (zzaHr + paramInt);
  }
  
  public final byte[] zzis(int paramInt)
  {
    if (paramInt < 0) {
      throw zzwx.zzvR();
    }
    if (zzaHu + paramInt > zzaHw)
    {
      zzit(zzaHw - zzaHu);
      throw zzwx.zzvQ();
    }
    if (paramInt <= zzaHs - zzaHu)
    {
      byte[] arrayOfByte = new byte[paramInt];
      System.arraycopy(buffer, zzaHu, arrayOfByte, 0, paramInt);
      zzaHu += paramInt;
      return arrayOfByte;
    }
    throw zzwx.zzvQ();
  }
  
  public final void zzit(int paramInt)
  {
    if (paramInt < 0) {
      throw zzwx.zzvR();
    }
    if (zzaHu + paramInt > zzaHw)
    {
      zzit(zzaHw - zzaHu);
      throw zzwx.zzvQ();
    }
    if (paramInt <= zzaHs - zzaHu)
    {
      zzaHu += paramInt;
      return;
    }
    throw zzwx.zzvQ();
  }
  
  public final long zzvA()
  {
    return zzK(zzvC());
  }
  
  public final int zzvB()
  {
    int i = zzvI();
    if (i >= 0) {}
    int k;
    do
    {
      return i;
      i &= 0x7F;
      j = zzvI();
      if (j >= 0) {
        return i | j << 7;
      }
      i |= (j & 0x7F) << 7;
      j = zzvI();
      if (j >= 0) {
        return i | j << 14;
      }
      i |= (j & 0x7F) << 14;
      k = zzvI();
      if (k >= 0) {
        return i | k << 21;
      }
      j = zzvI();
      k = i | (k & 0x7F) << 21 | j << 28;
      i = k;
    } while (j >= 0);
    int j = 0;
    for (;;)
    {
      if (j >= 5) {
        break label133;
      }
      i = k;
      if (zzvI() >= 0) {
        break;
      }
      j += 1;
    }
    label133:
    throw zzwx.zzvS();
  }
  
  public final long zzvC()
  {
    int i = 0;
    long l = 0L;
    while (i < 64)
    {
      int j = zzvI();
      l |= (j & 0x7F) << i;
      if ((j & 0x80) == 0) {
        return l;
      }
      i += 7;
    }
    throw zzwx.zzvS();
  }
  
  public final int zzvD()
  {
    return zzvI() & 0xFF | (zzvI() & 0xFF) << 8 | (zzvI() & 0xFF) << 16 | (zzvI() & 0xFF) << 24;
  }
  
  public final long zzvE()
  {
    int i = zzvI();
    int j = zzvI();
    int k = zzvI();
    int m = zzvI();
    int n = zzvI();
    int i1 = zzvI();
    int i2 = zzvI();
    int i3 = zzvI();
    long l = i;
    return (j & 0xFF) << 8 | l & 0xFF | (k & 0xFF) << 16 | (m & 0xFF) << 24 | (n & 0xFF) << 32 | (i1 & 0xFF) << 40 | (i2 & 0xFF) << 48 | (i3 & 0xFF) << 56;
  }
  
  public final int zzvG()
  {
    if (zzaHw == Integer.MAX_VALUE) {
      return -1;
    }
    int i = zzaHu;
    return zzaHw - i;
  }
  
  public final boolean zzvH()
  {
    return zzaHu == zzaHs;
  }
  
  public final byte zzvI()
  {
    if (zzaHu == zzaHs) {
      throw zzwx.zzvQ();
    }
    byte[] arrayOfByte = buffer;
    int i = zzaHu;
    zzaHu = (i + 1);
    return arrayOfByte[i];
  }
  
  public final int zzvu()
  {
    if (zzvH())
    {
      zzaHv = 0;
      return 0;
    }
    zzaHv = zzvB();
    if (zzaHv == 0) {
      throw zzwx.zzvT();
    }
    return zzaHv;
  }
  
  public final void zzvv()
  {
    int i;
    do
    {
      i = zzvu();
    } while ((i != 0) && (zzin(i)));
  }
  
  public final long zzvw()
  {
    return zzvC();
  }
  
  public final int zzvx()
  {
    return zzvB();
  }
  
  public final boolean zzvy()
  {
    return zzvB() != 0;
  }
  
  public final int zzvz()
  {
    return zzio(zzvB());
  }
  
  public final byte[] zzx(int paramInt1, int paramInt2)
  {
    if (paramInt2 == 0) {
      return zzxb.zzaHV;
    }
    byte[] arrayOfByte = new byte[paramInt2];
    int i = zzaHr;
    System.arraycopy(buffer, i + paramInt1, arrayOfByte, 0, paramInt2);
    return arrayOfByte;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzwq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */