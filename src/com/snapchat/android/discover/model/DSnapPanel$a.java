package com.snapchat.android.discover.model;

import abs;
import bjx;

public final class DSnapPanel$a
{
  public String a;
  public String b;
  public String c;
  public DSnapPanel.Docking d;
  DSnapPanel.MediaType e;
  public DSnapPanel.Mode f;
  public DSnapPanel.Docking g;
  public MediaState h;
  public bjx i;
  public String j;
  
  public final a a(String paramString)
  {
    e = DSnapPanel.MediaType.valueOf(paramString);
    return this;
  }
  
  public final DSnapPanel a()
  {
    if ((a == null) && (e != DSnapPanel.MediaType.REMOTE_VIDEO)) {
      throw new abs("Cannot build dsnap panel with null uri.", "uri");
    }
    if (e == null) {
      throw new abs("Cannot build dsnap panel with null media type.", "media_type");
    }
    if ((e == DSnapPanel.MediaType.VIDEO) && (j == null)) {
      throw new abs("Cannot build video dsnap panel with null first frame URI.", "video_first_frame");
    }
    if (f == null) {
      f = DSnapPanel.Mode.LOOPING;
    }
    if (g == null) {
      g = DSnapPanel.Docking.MEDIA_TOP;
    }
    if (d == null) {
      d = DSnapPanel.Docking.MEDIA_TOP;
    }
    if (h == null) {
      h = e.getDefaultMetadataLoadingState();
    }
    return new DSnapPanel(this, (byte)0);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.discover.model.DSnapPanel.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */