package com.google.android.gms.common.data;

import java.util.ArrayList;

public abstract class zzg<T>
  extends AbstractDataBuffer<T>
{
  private boolean zzOi = false;
  private ArrayList<Integer> zzOj;
  
  protected zzg(DataHolder paramDataHolder)
  {
    super(paramDataHolder);
  }
  
  private void zziC()
  {
    for (;;)
    {
      int i;
      String str2;
      try
      {
        if (zzOi) {
          break label190;
        }
        int j = zzMd.getCount();
        zzOj = new ArrayList();
        if (j <= 0) {
          break label185;
        }
        zzOj.add(Integer.valueOf(0));
        String str3 = zziB();
        i = zzMd.zzax(0);
        String str1 = zzMd.zzc(str3, 0, i);
        i = 1;
        if (i >= j) {
          break label185;
        }
        int k = zzMd.zzax(i);
        str2 = zzMd.zzc(str3, i, k);
        if (str2 == null) {
          throw new NullPointerException("Missing value for markerColumn: " + str3 + ", at row: " + i + ", for window: " + k);
        }
      }
      finally {}
      if (!str2.equals(localObject1))
      {
        zzOj.add(Integer.valueOf(i));
        Object localObject2 = str2;
        break label193;
        label185:
        zzOi = true;
        label190:
        return;
      }
      label193:
      i += 1;
    }
  }
  
  public final T get(int paramInt)
  {
    zziC();
    return (T)zzj(zzaA(paramInt), zzaB(paramInt));
  }
  
  public int getCount()
  {
    zziC();
    return zzOj.size();
  }
  
  int zzaA(int paramInt)
  {
    if ((paramInt < 0) || (paramInt >= zzOj.size())) {
      throw new IllegalArgumentException("Position " + paramInt + " is out of bounds for this buffer");
    }
    return ((Integer)zzOj.get(paramInt)).intValue();
  }
  
  protected int zzaB(int paramInt)
  {
    int j;
    if ((paramInt < 0) || (paramInt == zzOj.size()))
    {
      j = 0;
      return j;
    }
    if (paramInt == zzOj.size() - 1) {}
    for (int i = zzMd.getCount() - ((Integer)zzOj.get(paramInt)).intValue();; i = ((Integer)zzOj.get(paramInt + 1)).intValue() - ((Integer)zzOj.get(paramInt)).intValue())
    {
      j = i;
      if (i != 1) {
        break;
      }
      paramInt = zzaA(paramInt);
      int k = zzMd.zzax(paramInt);
      String str = zziD();
      j = i;
      if (str == null) {
        break;
      }
      j = i;
      if (zzMd.zzc(str, paramInt, k) != null) {
        break;
      }
      return 0;
    }
  }
  
  protected abstract String zziB();
  
  protected String zziD()
  {
    return null;
  }
  
  protected abstract T zzj(int paramInt1, int paramInt2);
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.data.zzg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */