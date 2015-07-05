package com.google.android.gms.location;

import android.content.Intent;
import android.location.Location;
import com.google.android.gms.internal.zzpk;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class GeofencingEvent
{
  private final int zzalV;
  private final List<Geofence> zzalW;
  private final Location zzalX;
  private final int zzvR;
  
  private GeofencingEvent(int paramInt1, int paramInt2, List<Geofence> paramList, Location paramLocation)
  {
    zzvR = paramInt1;
    zzalV = paramInt2;
    zzalW = paramList;
    zzalX = paramLocation;
  }
  
  public static GeofencingEvent fromIntent(Intent paramIntent)
  {
    if (paramIntent == null) {
      return null;
    }
    return new GeofencingEvent(paramIntent.getIntExtra("gms_error_code", -1), zzl(paramIntent), zzm(paramIntent), (Location)paramIntent.getParcelableExtra("com.google.android.location.intent.extra.triggering_location"));
  }
  
  private static int zzl(Intent paramIntent)
  {
    int i = paramIntent.getIntExtra("com.google.android.location.intent.extra.transition", -1);
    if (i == -1) {}
    while ((i != 1) && (i != 2) && (i != 4)) {
      return -1;
    }
    return i;
  }
  
  private static List<Geofence> zzm(Intent paramIntent)
  {
    Object localObject = (ArrayList)paramIntent.getSerializableExtra("com.google.android.location.intent.extra.geofence_list");
    if (localObject == null) {
      return null;
    }
    paramIntent = new ArrayList(((ArrayList)localObject).size());
    localObject = ((ArrayList)localObject).iterator();
    while (((Iterator)localObject).hasNext()) {
      paramIntent.add(zzpk.zzi((byte[])((Iterator)localObject).next()));
    }
    return paramIntent;
  }
  
  public int getErrorCode()
  {
    return zzvR;
  }
  
  public int getGeofenceTransition()
  {
    return zzalV;
  }
  
  public List<Geofence> getTriggeringGeofences()
  {
    return zzalW;
  }
  
  public Location getTriggeringLocation()
  {
    return zzalX;
  }
  
  public boolean hasError()
  {
    return zzvR != -1;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.location.GeofencingEvent
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */