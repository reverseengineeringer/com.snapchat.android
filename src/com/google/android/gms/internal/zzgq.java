package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.Collections;
import java.util.List;

@zzgi
public final class zzgq
  implements SafeParcelable
{
  public static final zzgr CREATOR = new zzgr();
  public final int errorCode;
  public final int orientation;
  public final int versionCode;
  public final List<String> zzst;
  public final List<String> zzsu;
  public final long zzsx;
  public final String zzus;
  public final String zzwG;
  public final long zzwH;
  public final boolean zzwI;
  public final long zzwJ;
  public final List<String> zzwK;
  public final String zzwL;
  public final long zzwM;
  public final String zzwN;
  public final boolean zzwO;
  public final String zzwP;
  public final String zzwQ;
  public final boolean zzwR;
  public final boolean zzwS;
  public final boolean zzwT;
  public final boolean zzwU;
  public final boolean zzwv;
  
  public zzgq(int paramInt)
  {
    this(11, null, null, null, paramInt, null, -1L, false, -1L, null, -1L, -1, null, -1L, null, false, null, null, false, false, false, true, false);
  }
  
  public zzgq(int paramInt, long paramLong)
  {
    this(11, null, null, null, paramInt, null, -1L, false, -1L, null, paramLong, -1, null, -1L, null, false, null, null, false, false, false, true, false);
  }
  
  zzgq(int paramInt1, String paramString1, String paramString2, List<String> paramList1, int paramInt2, List<String> paramList2, long paramLong1, boolean paramBoolean1, long paramLong2, List<String> paramList3, long paramLong3, int paramInt3, String paramString3, long paramLong4, String paramString4, boolean paramBoolean2, String paramString5, String paramString6, boolean paramBoolean3, boolean paramBoolean4, boolean paramBoolean5, boolean paramBoolean6, boolean paramBoolean7)
  {
    versionCode = paramInt1;
    zzus = paramString1;
    zzwG = paramString2;
    if (paramList1 != null)
    {
      paramString1 = Collections.unmodifiableList(paramList1);
      zzst = paramString1;
      errorCode = paramInt2;
      if (paramList2 == null) {
        break label175;
      }
      paramString1 = Collections.unmodifiableList(paramList2);
      label52:
      zzsu = paramString1;
      zzwH = paramLong1;
      zzwI = paramBoolean1;
      zzwJ = paramLong2;
      if (paramList3 == null) {
        break label180;
      }
    }
    label175:
    label180:
    for (paramString1 = Collections.unmodifiableList(paramList3);; paramString1 = null)
    {
      zzwK = paramString1;
      zzsx = paramLong3;
      orientation = paramInt3;
      zzwL = paramString3;
      zzwM = paramLong4;
      zzwN = paramString4;
      zzwO = paramBoolean2;
      zzwP = paramString5;
      zzwQ = paramString6;
      zzwR = paramBoolean3;
      zzwS = paramBoolean4;
      zzwv = paramBoolean5;
      zzwT = paramBoolean6;
      zzwU = paramBoolean7;
      return;
      paramString1 = null;
      break;
      paramString1 = null;
      break label52;
    }
  }
  
  public zzgq(String paramString1, String paramString2, List<String> paramList1, List<String> paramList2, long paramLong1, boolean paramBoolean1, long paramLong2, List<String> paramList3, long paramLong3, int paramInt, String paramString3, long paramLong4, String paramString4, String paramString5, boolean paramBoolean2, boolean paramBoolean3, boolean paramBoolean4, boolean paramBoolean5, boolean paramBoolean6)
  {
    this(11, paramString1, paramString2, paramList1, -2, paramList2, paramLong1, paramBoolean1, paramLong2, paramList3, paramLong3, paramInt, paramString3, paramLong4, paramString4, false, null, paramString5, paramBoolean2, paramBoolean3, paramBoolean4, paramBoolean5, paramBoolean6);
  }
  
  public zzgq(String paramString1, String paramString2, List<String> paramList1, List<String> paramList2, long paramLong1, boolean paramBoolean1, long paramLong2, List<String> paramList3, long paramLong3, int paramInt, String paramString3, long paramLong4, String paramString4, boolean paramBoolean2, String paramString5, String paramString6, boolean paramBoolean3, boolean paramBoolean4, boolean paramBoolean5, boolean paramBoolean6, boolean paramBoolean7)
  {
    this(11, paramString1, paramString2, paramList1, -2, paramList2, paramLong1, paramBoolean1, paramLong2, paramList3, paramLong3, paramInt, paramString3, paramLong4, paramString4, paramBoolean2, paramString5, paramString6, paramBoolean3, paramBoolean4, paramBoolean5, paramBoolean6, paramBoolean7);
  }
  
  public final int describeContents()
  {
    return 0;
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    zzgr.zza(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzgq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */