package com.snapchat.android.discover.model;

import acs;
import java.util.HashMap;
import java.util.Map;

public final class DSnapPage$a
{
  public String a = null;
  public String b;
  public Integer c = null;
  public int d = -1;
  public String e = null;
  public String f;
  public String g;
  public String h;
  public String i;
  public String j;
  public String k;
  public Integer l = null;
  public MediaState m = MediaState.NOT_STARTED;
  public MediaState n = MediaState.NOT_STARTED;
  public String o;
  public String p;
  public boolean q;
  Map<String, DSnapPanel> r = new HashMap();
  
  public final a a(String paramString, DSnapPanel paramDSnapPanel)
  {
    r.put(paramString, paramDSnapPanel);
    return this;
  }
  
  public final DSnapPage a()
  {
    if (a == null) {
      throw new acs("Cannot build dsnap page with null id.", "dsnap_id");
    }
    if (e == null) {
      throw new acs("Cannot build dsnap page with null edition id.", "edition_id");
    }
    if (f == null) {
      throw new acs("Cannot build dsnap page with null publisher name.", "publisher_name");
    }
    if ((j == null) || (j.length() == 0)) {
      throw new acs("Cannot build dsnap page with null color.", "color");
    }
    String str2 = j;
    String str1 = str2;
    if (str2.charAt(0) != '#') {
      str1 = "#" + str2;
    }
    j = str1;
    if (l == null) {
      throw new acs("Cannot build dsnap page with null ad type.", "ad_type");
    }
    if (r == null) {
      throw new acs("Cannot build dsnap page with invalid dsnap items.", "dsnap_item");
    }
    return new DSnapPage(this, (byte)0);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.discover.model.DSnapPage.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */