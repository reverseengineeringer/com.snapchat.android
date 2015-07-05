package com.google.android.gms.internal;

import com.google.android.gms.tagmanager.zzbf;
import org.json.JSONException;

final class zzvi$1
  implements zzvh
{
  public final Object zzn(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte == null) {
      throw new zzvl.zzg("Cannot parse a null byte[]");
    }
    if (paramArrayOfByte.length == 0) {
      throw new zzvl.zzg("Cannot parse a 0 length byte[]");
    }
    try
    {
      paramArrayOfByte = zzvf.zzdd(new String(paramArrayOfByte));
      if (paramArrayOfByte != null) {
        zzbf.zzab("The container was successfully parsed from the resource");
      }
      return paramArrayOfByte;
    }
    catch (JSONException paramArrayOfByte)
    {
      throw new zzvl.zzg("The resource data is corrupted. The container cannot be extracted from the binary data");
    }
    catch (zzvl.zzg paramArrayOfByte)
    {
      throw new zzvl.zzg("The resource data is invalid. The container cannot be extracted from the binary data");
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzvi.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */