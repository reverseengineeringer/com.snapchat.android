package com.google.android.gms.internal;

class zzwu
  implements Cloneable
{
  private static final zzwv zzaHE = new zzwv();
  private int mSize;
  private boolean zzaHF = false;
  private int[] zzaHG;
  private zzwv[] zzaHH;
  
  public zzwu()
  {
    this(10);
  }
  
  public zzwu(int paramInt)
  {
    paramInt = idealIntArraySize(paramInt);
    zzaHG = new int[paramInt];
    zzaHH = new zzwv[paramInt];
    mSize = 0;
  }
  
  private void gc()
  {
    int m = mSize;
    int[] arrayOfInt = zzaHG;
    zzwv[] arrayOfzzwv = zzaHH;
    int i = 0;
    int k;
    for (int j = 0; i < m; j = k)
    {
      zzwv localzzwv = arrayOfzzwv[i];
      k = j;
      if (localzzwv != zzaHE)
      {
        if (i != j)
        {
          arrayOfInt[j] = arrayOfInt[i];
          arrayOfzzwv[j] = localzzwv;
          arrayOfzzwv[i] = null;
        }
        k = j + 1;
      }
      i += 1;
    }
    zzaHF = false;
    mSize = j;
  }
  
  private int idealByteArraySize(int paramInt)
  {
    int i = 4;
    for (;;)
    {
      int j = paramInt;
      if (i < 32)
      {
        if (paramInt <= (1 << i) - 12) {
          j = (1 << i) - 12;
        }
      }
      else {
        return j;
      }
      i += 1;
    }
  }
  
  private int idealIntArraySize(int paramInt)
  {
    return idealByteArraySize(paramInt * 4) / 4;
  }
  
  private boolean zza(int[] paramArrayOfInt1, int[] paramArrayOfInt2, int paramInt)
  {
    int i = 0;
    while (i < paramInt)
    {
      if (paramArrayOfInt1[i] != paramArrayOfInt2[i]) {
        return false;
      }
      i += 1;
    }
    return true;
  }
  
  private boolean zza(zzwv[] paramArrayOfzzwv1, zzwv[] paramArrayOfzzwv2, int paramInt)
  {
    int i = 0;
    while (i < paramInt)
    {
      if (!paramArrayOfzzwv1[i].equals(paramArrayOfzzwv2[i])) {
        return false;
      }
      i += 1;
    }
    return true;
  }
  
  private int zziG(int paramInt)
  {
    int j = mSize;
    int i = 0;
    j -= 1;
    while (i <= j)
    {
      int k = i + j >>> 1;
      int m = zzaHG[k];
      if (m < paramInt)
      {
        i = k + 1;
      }
      else
      {
        j = k;
        if (m <= paramInt) {
          return j;
        }
        j = k - 1;
      }
    }
    j = i ^ 0xFFFFFFFF;
    return j;
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == this) {}
    do
    {
      return true;
      if (!(paramObject instanceof zzwu)) {
        return false;
      }
      paramObject = (zzwu)paramObject;
      if (size() != ((zzwu)paramObject).size()) {
        return false;
      }
    } while ((zza(zzaHG, zzaHG, mSize)) && (zza(zzaHH, zzaHH, mSize)));
    return false;
  }
  
  public int hashCode()
  {
    if (zzaHF) {
      gc();
    }
    int j = 17;
    int i = 0;
    while (i < mSize)
    {
      j = (j * 31 + zzaHG[i]) * 31 + zzaHH[i].hashCode();
      i += 1;
    }
    return j;
  }
  
  public boolean isEmpty()
  {
    return size() == 0;
  }
  
  public int size()
  {
    if (zzaHF) {
      gc();
    }
    return mSize;
  }
  
  public void zza(int paramInt, zzwv paramzzwv)
  {
    int i = zziG(paramInt);
    if (i >= 0)
    {
      zzaHH[i] = paramzzwv;
      return;
    }
    int j = i ^ 0xFFFFFFFF;
    if ((j < mSize) && (zzaHH[j] == zzaHE))
    {
      zzaHG[j] = paramInt;
      zzaHH[j] = paramzzwv;
      return;
    }
    i = j;
    if (zzaHF)
    {
      i = j;
      if (mSize >= zzaHG.length)
      {
        gc();
        i = zziG(paramInt) ^ 0xFFFFFFFF;
      }
    }
    if (mSize >= zzaHG.length)
    {
      j = idealIntArraySize(mSize + 1);
      int[] arrayOfInt = new int[j];
      zzwv[] arrayOfzzwv = new zzwv[j];
      System.arraycopy(zzaHG, 0, arrayOfInt, 0, zzaHG.length);
      System.arraycopy(zzaHH, 0, arrayOfzzwv, 0, zzaHH.length);
      zzaHG = arrayOfInt;
      zzaHH = arrayOfzzwv;
    }
    if (mSize - i != 0)
    {
      System.arraycopy(zzaHG, i, zzaHG, i + 1, mSize - i);
      System.arraycopy(zzaHH, i, zzaHH, i + 1, mSize - i);
    }
    zzaHG[i] = paramInt;
    zzaHH[i] = paramzzwv;
    mSize += 1;
  }
  
  public zzwv zziE(int paramInt)
  {
    paramInt = zziG(paramInt);
    if ((paramInt < 0) || (zzaHH[paramInt] == zzaHE)) {
      return null;
    }
    return zzaHH[paramInt];
  }
  
  public zzwv zziF(int paramInt)
  {
    if (zzaHF) {
      gc();
    }
    return zzaHH[paramInt];
  }
  
  public final zzwu zzvO()
  {
    int i = 0;
    int j = size();
    zzwu localzzwu = new zzwu(j);
    System.arraycopy(zzaHG, 0, zzaHG, 0, j);
    while (i < j)
    {
      if (zzaHH[i] != null) {
        zzaHH[i] = zzaHH[i].zzvP();
      }
      i += 1;
    }
    mSize = j;
    return localzzwu;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzwu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */