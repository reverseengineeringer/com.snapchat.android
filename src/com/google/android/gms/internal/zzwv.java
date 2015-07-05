package com.google.android.gms.internal;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

class zzwv
  implements Cloneable
{
  private zzwt<?, ?> zzaHI;
  private Object zzaHJ;
  private List<zzxa> zzaHK = new ArrayList();
  
  private byte[] toByteArray()
  {
    byte[] arrayOfByte = new byte[zzc()];
    zza(zzwr.zzu(arrayOfByte));
    return arrayOfByte;
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool2 = false;
    boolean bool1;
    if (paramObject == this) {
      bool1 = true;
    }
    do
    {
      do
      {
        return bool1;
        bool1 = bool2;
      } while (!(paramObject instanceof zzwv));
      paramObject = (zzwv)paramObject;
      if ((zzaHJ == null) || (zzaHJ == null)) {
        break;
      }
      bool1 = bool2;
    } while (zzaHI != zzaHI);
    if (!zzaHI.zzaHC.isArray()) {
      return zzaHJ.equals(zzaHJ);
    }
    if ((zzaHJ instanceof byte[])) {
      return Arrays.equals((byte[])zzaHJ, (byte[])zzaHJ);
    }
    if ((zzaHJ instanceof int[])) {
      return Arrays.equals((int[])zzaHJ, (int[])zzaHJ);
    }
    if ((zzaHJ instanceof long[])) {
      return Arrays.equals((long[])zzaHJ, (long[])zzaHJ);
    }
    if ((zzaHJ instanceof float[])) {
      return Arrays.equals((float[])zzaHJ, (float[])zzaHJ);
    }
    if ((zzaHJ instanceof double[])) {
      return Arrays.equals((double[])zzaHJ, (double[])zzaHJ);
    }
    if ((zzaHJ instanceof boolean[])) {
      return Arrays.equals((boolean[])zzaHJ, (boolean[])zzaHJ);
    }
    return Arrays.deepEquals((Object[])zzaHJ, (Object[])zzaHJ);
    if ((zzaHK != null) && (zzaHK != null)) {
      return zzaHK.equals(zzaHK);
    }
    try
    {
      bool1 = Arrays.equals(toByteArray(), ((zzwv)paramObject).toByteArray());
      return bool1;
    }
    catch (IOException paramObject)
    {
      throw new IllegalStateException((Throwable)paramObject);
    }
  }
  
  public int hashCode()
  {
    try
    {
      int i = Arrays.hashCode(toByteArray());
      return i + 527;
    }
    catch (IOException localIOException)
    {
      throw new IllegalStateException(localIOException);
    }
  }
  
  void zza(zzwr paramzzwr)
  {
    if (zzaHJ != null) {
      zzaHI.zza(zzaHJ, paramzzwr);
    }
    for (;;)
    {
      return;
      Iterator localIterator = zzaHK.iterator();
      while (localIterator.hasNext()) {
        ((zzxa)localIterator.next()).zza(paramzzwr);
      }
    }
  }
  
  void zza(zzxa paramzzxa)
  {
    zzaHK.add(paramzzxa);
  }
  
  <T> T zzb(zzwt<?, T> paramzzwt)
  {
    if (zzaHJ != null)
    {
      if (zzaHI != paramzzwt) {
        throw new IllegalStateException("Tried to getExtension with a differernt Extension.");
      }
    }
    else
    {
      zzaHI = paramzzwt;
      zzaHJ = paramzzwt.zzx(zzaHK);
      zzaHK = null;
    }
    return (T)zzaHJ;
  }
  
  int zzc()
  {
    int j;
    if (zzaHJ != null)
    {
      j = zzaHI.zzF(zzaHJ);
      return j;
    }
    Iterator localIterator = zzaHK.iterator();
    for (int i = 0;; i = ((zzxa)localIterator.next()).zzc() + i)
    {
      j = i;
      if (!localIterator.hasNext()) {
        break;
      }
    }
  }
  
  public final zzwv zzvP()
  {
    int i = 0;
    zzwv localzzwv = new zzwv();
    try
    {
      zzaHI = zzaHI;
      if (zzaHK == null) {
        zzaHK = null;
      }
      for (;;)
      {
        if (zzaHJ == null) {
          return localzzwv;
        }
        if (!(zzaHJ instanceof zzwy)) {
          break;
        }
        zzaHJ = ((zzwy)zzaHJ).zzvN();
        return localzzwv;
        zzaHK.addAll(zzaHK);
      }
      if (!(zzaHJ instanceof byte[])) {
        break label119;
      }
    }
    catch (CloneNotSupportedException localCloneNotSupportedException)
    {
      throw new AssertionError(localCloneNotSupportedException);
    }
    zzaHJ = ((byte[])zzaHJ).clone();
    return localCloneNotSupportedException;
    label119:
    Object localObject1;
    Object localObject2;
    if ((zzaHJ instanceof byte[][]))
    {
      localObject1 = (byte[][])zzaHJ;
      localObject2 = new byte[localObject1.length][];
      zzaHJ = localObject2;
      i = 0;
      while (i < localObject1.length)
      {
        localObject2[i] = ((byte[])localObject1[i].clone());
        i += 1;
      }
    }
    if ((zzaHJ instanceof boolean[]))
    {
      zzaHJ = ((boolean[])zzaHJ).clone();
      return localCloneNotSupportedException;
    }
    if ((zzaHJ instanceof int[]))
    {
      zzaHJ = ((int[])zzaHJ).clone();
      return localCloneNotSupportedException;
    }
    if ((zzaHJ instanceof long[]))
    {
      zzaHJ = ((long[])zzaHJ).clone();
      return localCloneNotSupportedException;
    }
    if ((zzaHJ instanceof float[]))
    {
      zzaHJ = ((float[])zzaHJ).clone();
      return localCloneNotSupportedException;
    }
    if ((zzaHJ instanceof double[]))
    {
      zzaHJ = ((double[])zzaHJ).clone();
      return localCloneNotSupportedException;
    }
    if ((zzaHJ instanceof zzwy[]))
    {
      localObject1 = (zzwy[])zzaHJ;
      localObject2 = new zzwy[localObject1.length];
      zzaHJ = localObject2;
      while (i < localObject1.length)
      {
        localObject2[i] = localObject1[i].zzvN();
        i += 1;
      }
    }
    return localCloneNotSupportedException;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzwv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */