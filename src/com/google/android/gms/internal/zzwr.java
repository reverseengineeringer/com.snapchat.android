package com.google.android.gms.internal;

import java.io.IOException;
import java.nio.BufferOverflowException;
import java.nio.ByteBuffer;
import java.nio.ReadOnlyBufferException;

public final class zzwr
{
  private final ByteBuffer zzaHA;
  
  private zzwr(ByteBuffer paramByteBuffer)
  {
    zzaHA = paramByteBuffer;
  }
  
  private zzwr(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    this(ByteBuffer.wrap(paramArrayOfByte, paramInt1, paramInt2));
  }
  
  public static int zzA(int paramInt1, int paramInt2)
  {
    return zziz(paramInt1) + zziw(paramInt2);
  }
  
  public static int zzB(int paramInt1, int paramInt2)
  {
    return zziz(paramInt1) + zzix(paramInt2);
  }
  
  public static int zzN(long paramLong)
  {
    return zzQ(paramLong);
  }
  
  public static int zzO(long paramLong)
  {
    return zzQ(zzS(paramLong));
  }
  
  public static int zzQ(long paramLong)
  {
    if ((0xFFFFFFFFFFFFFF80 & paramLong) == 0L) {
      return 1;
    }
    if ((0xFFFFFFFFFFFFC000 & paramLong) == 0L) {
      return 2;
    }
    if ((0xFFFFFFFFFFE00000 & paramLong) == 0L) {
      return 3;
    }
    if ((0xFFFFFFFFF0000000 & paramLong) == 0L) {
      return 4;
    }
    if ((0xFFFFFFF800000000 & paramLong) == 0L) {
      return 5;
    }
    if ((0xFFFFFC0000000000 & paramLong) == 0L) {
      return 6;
    }
    if ((0xFFFE000000000000 & paramLong) == 0L) {
      return 7;
    }
    if ((0xFF00000000000000 & paramLong) == 0L) {
      return 8;
    }
    if ((0x8000000000000000 & paramLong) == 0L) {
      return 9;
    }
    return 10;
  }
  
  public static long zzS(long paramLong)
  {
    return paramLong << 1 ^ paramLong >> 63;
  }
  
  private static int zza(CharSequence paramCharSequence)
  {
    int m = paramCharSequence.length();
    int i = 0;
    while ((i < m) && (paramCharSequence.charAt(i) < '')) {
      i += 1;
    }
    for (;;)
    {
      int k = i;
      int j;
      if (j < m)
      {
        k = paramCharSequence.charAt(j);
        if (k < 2048)
        {
          j += 1;
          i = (127 - k >>> 31) + i;
        }
        else
        {
          k = i + zza(paramCharSequence, j);
        }
      }
      else
      {
        if (k < m) {
          throw new IllegalArgumentException("UTF-8 length does not fit in int: " + (k + 4294967296L));
        }
        return k;
        j = i;
        i = m;
      }
    }
  }
  
  private static int zza(CharSequence paramCharSequence, int paramInt)
  {
    int m = paramCharSequence.length();
    int i = 0;
    if (paramInt < m)
    {
      int n = paramCharSequence.charAt(paramInt);
      int j;
      if (n < 2048)
      {
        i += (127 - n >>> 31);
        j = paramInt;
      }
      for (;;)
      {
        paramInt = j + 1;
        break;
        int k = i + 2;
        i = k;
        j = paramInt;
        if (55296 <= n)
        {
          i = k;
          j = paramInt;
          if (n <= 57343)
          {
            if (Character.codePointAt(paramCharSequence, paramInt) < 65536) {
              throw new IllegalArgumentException("Unpaired surrogate at index " + paramInt);
            }
            j = paramInt + 1;
            i = k;
          }
        }
      }
    }
    return i;
  }
  
  private static int zza(CharSequence paramCharSequence, byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    int k = paramCharSequence.length();
    int j = 0;
    int m = paramInt1 + paramInt2;
    paramInt2 = j;
    while ((paramInt2 < k) && (paramInt2 + paramInt1 < m))
    {
      j = paramCharSequence.charAt(paramInt2);
      if (j >= 128) {
        break;
      }
      paramArrayOfByte[(paramInt1 + paramInt2)] = ((byte)j);
      paramInt2 += 1;
    }
    if (paramInt2 == k) {
      return paramInt1 + k;
    }
    paramInt1 += paramInt2;
    if (paramInt2 < k)
    {
      int i = paramCharSequence.charAt(paramInt2);
      if ((i < 128) && (paramInt1 < m))
      {
        j = paramInt1 + 1;
        paramArrayOfByte[paramInt1] = ((byte)i);
        paramInt1 = j;
      }
      for (;;)
      {
        paramInt2 += 1;
        break;
        if ((i < 2048) && (paramInt1 <= m - 2))
        {
          j = paramInt1 + 1;
          paramArrayOfByte[paramInt1] = ((byte)(i >>> 6 | 0x3C0));
          paramInt1 = j + 1;
          paramArrayOfByte[j] = ((byte)(i & 0x3F | 0x80));
        }
        else
        {
          int n;
          if (((i < 55296) || (57343 < i)) && (paramInt1 <= m - 3))
          {
            j = paramInt1 + 1;
            paramArrayOfByte[paramInt1] = ((byte)(i >>> 12 | 0x1E0));
            n = j + 1;
            paramArrayOfByte[j] = ((byte)(i >>> 6 & 0x3F | 0x80));
            paramInt1 = n + 1;
            paramArrayOfByte[n] = ((byte)(i & 0x3F | 0x80));
          }
          else
          {
            if (paramInt1 > m - 4) {
              break label439;
            }
            j = paramInt2;
            char c;
            if (paramInt2 + 1 != paramCharSequence.length())
            {
              paramInt2 += 1;
              c = paramCharSequence.charAt(paramInt2);
              if (!Character.isSurrogatePair(i, c)) {
                j = paramInt2;
              }
            }
            else
            {
              throw new IllegalArgumentException("Unpaired surrogate at index " + (j - 1));
            }
            j = Character.toCodePoint(i, c);
            n = paramInt1 + 1;
            paramArrayOfByte[paramInt1] = ((byte)(j >>> 18 | 0xF0));
            paramInt1 = n + 1;
            paramArrayOfByte[n] = ((byte)(j >>> 12 & 0x3F | 0x80));
            n = paramInt1 + 1;
            paramArrayOfByte[paramInt1] = ((byte)(j >>> 6 & 0x3F | 0x80));
            paramInt1 = n + 1;
            paramArrayOfByte[n] = ((byte)(j & 0x3F | 0x80));
          }
        }
      }
      label439:
      throw new ArrayIndexOutOfBoundsException("Failed writing " + i + " at index " + paramInt1);
    }
    return paramInt1;
  }
  
  private static void zza(CharSequence paramCharSequence, ByteBuffer paramByteBuffer)
  {
    if (paramByteBuffer.isReadOnly()) {
      throw new ReadOnlyBufferException();
    }
    if (paramByteBuffer.hasArray()) {
      try
      {
        paramByteBuffer.position(zza(paramCharSequence, paramByteBuffer.array(), paramByteBuffer.arrayOffset() + paramByteBuffer.position(), paramByteBuffer.remaining()) - paramByteBuffer.arrayOffset());
        return;
      }
      catch (ArrayIndexOutOfBoundsException paramCharSequence)
      {
        paramByteBuffer = new BufferOverflowException();
        paramByteBuffer.initCause(paramCharSequence);
        throw paramByteBuffer;
      }
    }
    zzb(paramCharSequence, paramByteBuffer);
  }
  
  public static int zzai(boolean paramBoolean)
  {
    return 1;
  }
  
  public static int zzb(int paramInt, double paramDouble)
  {
    return zziz(paramInt) + zzf(paramDouble);
  }
  
  public static int zzb(int paramInt, zzwy paramzzwy)
  {
    return zziz(paramInt) * 2 + zzd(paramzzwy);
  }
  
  public static int zzb(int paramInt, byte[] paramArrayOfByte)
  {
    return zziz(paramInt) + zzw(paramArrayOfByte);
  }
  
  public static zzwr zzb(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    return new zzwr(paramArrayOfByte, paramInt1, paramInt2);
  }
  
  private static void zzb(CharSequence paramCharSequence, ByteBuffer paramByteBuffer)
  {
    int m = paramCharSequence.length();
    int j = 0;
    if (j < m)
    {
      int i = paramCharSequence.charAt(j);
      if (i < 128) {
        paramByteBuffer.put((byte)i);
      }
      for (;;)
      {
        j += 1;
        break;
        if (i < 2048)
        {
          paramByteBuffer.put((byte)(i >>> 6 | 0x3C0));
          paramByteBuffer.put((byte)(i & 0x3F | 0x80));
        }
        else if ((i < 55296) || (57343 < i))
        {
          paramByteBuffer.put((byte)(i >>> 12 | 0x1E0));
          paramByteBuffer.put((byte)(i >>> 6 & 0x3F | 0x80));
          paramByteBuffer.put((byte)(i & 0x3F | 0x80));
        }
        else
        {
          int k = j;
          char c;
          if (j + 1 != paramCharSequence.length())
          {
            j += 1;
            c = paramCharSequence.charAt(j);
            if (!Character.isSurrogatePair(i, c)) {
              k = j;
            }
          }
          else
          {
            throw new IllegalArgumentException("Unpaired surrogate at index " + (k - 1));
          }
          k = Character.toCodePoint(i, c);
          paramByteBuffer.put((byte)(k >>> 18 | 0xF0));
          paramByteBuffer.put((byte)(k >>> 12 & 0x3F | 0x80));
          paramByteBuffer.put((byte)(k >>> 6 & 0x3F | 0x80));
          paramByteBuffer.put((byte)(k & 0x3F | 0x80));
        }
      }
    }
  }
  
  public static int zzc(int paramInt, float paramFloat)
  {
    return zziz(paramInt) + zzg(paramFloat);
  }
  
  public static int zzc(int paramInt, zzwy paramzzwy)
  {
    return zziz(paramInt) + zze(paramzzwy);
  }
  
  public static int zzc(int paramInt, boolean paramBoolean)
  {
    return zziz(paramInt) + zzai(paramBoolean);
  }
  
  public static int zzd(int paramInt, long paramLong)
  {
    return zziz(paramInt) + zzN(paramLong);
  }
  
  public static int zzd(zzwy paramzzwy)
  {
    return paramzzwy.zzvY();
  }
  
  public static int zzdM(String paramString)
  {
    int i = zza(paramString);
    return i + zziB(i);
  }
  
  public static int zze(int paramInt, long paramLong)
  {
    return zziz(paramInt) + zzO(paramLong);
  }
  
  public static int zze(zzwy paramzzwy)
  {
    int i = paramzzwy.zzvY();
    return i + zziB(i);
  }
  
  public static int zzf(double paramDouble)
  {
    return 8;
  }
  
  public static int zzg(float paramFloat)
  {
    return 4;
  }
  
  public static int zziB(int paramInt)
  {
    if ((paramInt & 0xFFFFFF80) == 0) {
      return 1;
    }
    if ((paramInt & 0xC000) == 0) {
      return 2;
    }
    if ((0xFFE00000 & paramInt) == 0) {
      return 3;
    }
    if ((0xF0000000 & paramInt) == 0) {
      return 4;
    }
    return 5;
  }
  
  public static int zziD(int paramInt)
  {
    return paramInt << 1 ^ paramInt >> 31;
  }
  
  public static int zziw(int paramInt)
  {
    if (paramInt >= 0) {
      return zziB(paramInt);
    }
    return 10;
  }
  
  public static int zzix(int paramInt)
  {
    return zziB(zziD(paramInt));
  }
  
  public static int zziz(int paramInt)
  {
    return zziB(zzxb.zzD(paramInt, 0));
  }
  
  public static int zzj(int paramInt, String paramString)
  {
    return zziz(paramInt) + zzdM(paramString);
  }
  
  public static zzwr zzu(byte[] paramArrayOfByte)
  {
    return zzb(paramArrayOfByte, 0, paramArrayOfByte.length);
  }
  
  public static int zzw(byte[] paramArrayOfByte)
  {
    return zziB(paramArrayOfByte.length) + paramArrayOfByte.length;
  }
  
  public final void zzC(int paramInt1, int paramInt2)
  {
    zziA(zzxb.zzD(paramInt1, paramInt2));
  }
  
  public final void zzL(long paramLong)
  {
    zzP(paramLong);
  }
  
  public final void zzM(long paramLong)
  {
    zzP(zzS(paramLong));
  }
  
  public final void zzP(long paramLong)
  {
    for (;;)
    {
      if ((0xFFFFFFFFFFFFFF80 & paramLong) == 0L)
      {
        zziy((int)paramLong);
        return;
      }
      zziy((int)paramLong & 0x7F | 0x80);
      paramLong >>>= 7;
    }
  }
  
  public final void zzR(long paramLong)
  {
    zziy((int)paramLong & 0xFF);
    zziy((int)(paramLong >> 8) & 0xFF);
    zziy((int)(paramLong >> 16) & 0xFF);
    zziy((int)(paramLong >> 24) & 0xFF);
    zziy((int)(paramLong >> 32) & 0xFF);
    zziy((int)(paramLong >> 40) & 0xFF);
    zziy((int)(paramLong >> 48) & 0xFF);
    zziy((int)(paramLong >> 56) & 0xFF);
  }
  
  public final void zza(int paramInt, double paramDouble)
  {
    zzC(paramInt, 1);
    zze(paramDouble);
  }
  
  public final void zza(int paramInt, zzwy paramzzwy)
  {
    zzC(paramInt, 2);
    zzc(paramzzwy);
  }
  
  public final void zza(int paramInt, byte[] paramArrayOfByte)
  {
    zzC(paramInt, 2);
    zzv(paramArrayOfByte);
  }
  
  public final void zzah(boolean paramBoolean)
  {
    if (paramBoolean) {}
    for (int i = 1;; i = 0)
    {
      zziy(i);
      return;
    }
  }
  
  public final void zzb(byte paramByte)
  {
    if (!zzaHA.hasRemaining()) {
      throw new zza(zzaHA.position(), zzaHA.limit());
    }
    zzaHA.put(paramByte);
  }
  
  public final void zzb(int paramInt, float paramFloat)
  {
    zzC(paramInt, 5);
    zzf(paramFloat);
  }
  
  public final void zzb(int paramInt, long paramLong)
  {
    zzC(paramInt, 0);
    zzL(paramLong);
  }
  
  public final void zzb(int paramInt, String paramString)
  {
    zzC(paramInt, 2);
    zzdL(paramString);
  }
  
  public final void zzb(int paramInt, boolean paramBoolean)
  {
    zzC(paramInt, 0);
    zzah(paramBoolean);
  }
  
  public final void zzb(zzwy paramzzwy)
  {
    paramzzwy.zza(this);
  }
  
  public final void zzc(int paramInt, long paramLong)
  {
    zzC(paramInt, 0);
    zzM(paramLong);
  }
  
  public final void zzc(zzwy paramzzwy)
  {
    zziA(paramzzwy.zzvX());
    paramzzwy.zza(this);
  }
  
  public final void zzc(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (zzaHA.remaining() >= paramInt2)
    {
      zzaHA.put(paramArrayOfByte, paramInt1, paramInt2);
      return;
    }
    throw new zza(zzaHA.position(), zzaHA.limit());
  }
  
  public final void zzdL(String paramString)
  {
    try
    {
      int i = zziB(paramString.length());
      if (i == zziB(paramString.length() * 3))
      {
        int j = zzaHA.position();
        zzaHA.position(j + i);
        zza(paramString, zzaHA);
        int k = zzaHA.position();
        zzaHA.position(j);
        zziA(k - j - i);
        zzaHA.position(k);
        return;
      }
      zziA(zza(paramString));
      zza(paramString, zzaHA);
      return;
    }
    catch (BufferOverflowException paramString)
    {
      throw new zza(zzaHA.position(), zzaHA.limit());
    }
  }
  
  public final void zze(double paramDouble)
  {
    zzR(Double.doubleToLongBits(paramDouble));
  }
  
  public final void zzf(float paramFloat)
  {
    zziC(Float.floatToIntBits(paramFloat));
  }
  
  public final void zziA(int paramInt)
  {
    for (;;)
    {
      if ((paramInt & 0xFFFFFF80) == 0)
      {
        zziy(paramInt);
        return;
      }
      zziy(paramInt & 0x7F | 0x80);
      paramInt >>>= 7;
    }
  }
  
  public final void zziC(int paramInt)
  {
    zziy(paramInt & 0xFF);
    zziy(paramInt >> 8 & 0xFF);
    zziy(paramInt >> 16 & 0xFF);
    zziy(paramInt >> 24 & 0xFF);
  }
  
  public final void zziu(int paramInt)
  {
    if (paramInt >= 0)
    {
      zziA(paramInt);
      return;
    }
    zzP(paramInt);
  }
  
  public final void zziv(int paramInt)
  {
    zziA(zziD(paramInt));
  }
  
  public final void zziy(int paramInt)
  {
    zzb((byte)paramInt);
  }
  
  public final void zzv(byte[] paramArrayOfByte)
  {
    zziA(paramArrayOfByte.length);
    zzx(paramArrayOfByte);
  }
  
  public final int zzvJ()
  {
    return zzaHA.remaining();
  }
  
  public final void zzvK()
  {
    if (zzvJ() != 0) {
      throw new IllegalStateException("Did not write as much data as expected.");
    }
  }
  
  public final void zzx(byte[] paramArrayOfByte)
  {
    zzc(paramArrayOfByte, 0, paramArrayOfByte.length);
  }
  
  public final void zzy(int paramInt1, int paramInt2)
  {
    zzC(paramInt1, 0);
    zziu(paramInt2);
  }
  
  public final void zzz(int paramInt1, int paramInt2)
  {
    zzC(paramInt1, 0);
    zziv(paramInt2);
  }
  
  public static class zza
    extends IOException
  {
    zza(int paramInt1, int paramInt2)
    {
      super();
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzwr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */