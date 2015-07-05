package com.snapchat.android.discover.model;

import abs;
import android.graphics.Color;
import cgb;

public final class ChannelPage$a
{
  public String a;
  public String b;
  public String c;
  public String d;
  public String e;
  int f;
  int g;
  public String h;
  public String i;
  public String j;
  public String k;
  public boolean l;
  public int m;
  public int n;
  public String o = null;
  public int p;
  public String q;
  public String r;
  public String s;
  public String t;
  public String u;
  public String v;
  public MediaState w = MediaState.NOT_STARTED;
  public MediaState x = MediaState.NOT_STARTED;
  public MediaState y = MediaState.NOT_STARTED;
  public MediaState z = MediaState.NOT_STARTED;
  
  private static int a(@cgb String paramString)
  {
    String str = paramString;
    if (paramString.charAt(0) != '#') {
      str = "#" + paramString;
    }
    return Color.parseColor(str);
  }
  
  public final ChannelPage a()
  {
    if (a == null) {
      throw new abs("Cannot build ChannelPage with null publisher name.", "publisher_name");
    }
    if ((d == null) || (d.length() == 0)) {
      throw new abs("Cannot build ChannelPage with primary color: " + d, "primary_color");
    }
    f = a(d);
    if ((e == null) || (e.length() == 0)) {
      throw new abs("Cannot build ChannelPage with secondary color: " + e, "secondary_color");
    }
    g = a(e);
    if (h == null) {
      throw new abs("Cannot build ChannelPage with null filled icon URL.", "filled_icon");
    }
    if (i == null) {
      throw new abs("Cannot build ChannelPage with null inverted icon URL.", "inverted_icon");
    }
    if (k == null) {
      throw new abs("Cannot build ChannelPage with null intro video URL.", "intro_video");
    }
    return new ChannelPage(this, (byte)0);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.discover.model.ChannelPage.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */