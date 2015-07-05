package com.google.android.gms.common.images;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zzw;
import org.json.JSONException;
import org.json.JSONObject;

public final class WebImage
  implements SafeParcelable
{
  public static final Parcelable.Creator<WebImage> CREATOR = new zzb();
  private final int zzFG;
  private final Uri zzOL;
  private final int zzli;
  private final int zzlj;
  
  WebImage(int paramInt1, Uri paramUri, int paramInt2, int paramInt3)
  {
    zzFG = paramInt1;
    zzOL = paramUri;
    zzli = paramInt2;
    zzlj = paramInt3;
  }
  
  public WebImage(Uri paramUri)
  {
    this(paramUri, 0, 0);
  }
  
  public WebImage(Uri paramUri, int paramInt1, int paramInt2)
  {
    this(1, paramUri, paramInt1, paramInt2);
    if (paramUri == null) {
      throw new IllegalArgumentException("url cannot be null");
    }
    if ((paramInt1 < 0) || (paramInt2 < 0)) {
      throw new IllegalArgumentException("width and height must not be negative");
    }
  }
  
  public WebImage(JSONObject paramJSONObject)
  {
    this(zze(paramJSONObject), paramJSONObject.optInt("width", 0), paramJSONObject.optInt("height", 0));
  }
  
  private static Uri zze(JSONObject paramJSONObject)
  {
    Uri localUri = null;
    if (paramJSONObject.has("url")) {}
    try
    {
      localUri = Uri.parse(paramJSONObject.getString("url"));
      return localUri;
    }
    catch (JSONException paramJSONObject) {}
    return null;
  }
  
  public final int describeContents()
  {
    return 0;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      return true;
      if ((paramObject == null) || (!(paramObject instanceof WebImage))) {
        return false;
      }
      paramObject = (WebImage)paramObject;
    } while ((zzw.equal(zzOL, zzOL)) && (zzli == zzli) && (zzlj == zzlj));
    return false;
  }
  
  public final int getHeight()
  {
    return zzlj;
  }
  
  public final Uri getUrl()
  {
    return zzOL;
  }
  
  final int getVersionCode()
  {
    return zzFG;
  }
  
  public final int getWidth()
  {
    return zzli;
  }
  
  public final int hashCode()
  {
    return zzw.hashCode(new Object[] { zzOL, Integer.valueOf(zzli), Integer.valueOf(zzlj) });
  }
  
  public final JSONObject toJson()
  {
    JSONObject localJSONObject = new JSONObject();
    try
    {
      localJSONObject.put("url", zzOL.toString());
      localJSONObject.put("width", zzli);
      localJSONObject.put("height", zzlj);
      return localJSONObject;
    }
    catch (JSONException localJSONException) {}
    return localJSONObject;
  }
  
  public final String toString()
  {
    return String.format("Image %dx%d %s", new Object[] { Integer.valueOf(zzli), Integer.valueOf(zzlj), zzOL.toString() });
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    zzb.zza(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.images.WebImage
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */