package org.apache.commons.lang3;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.Set;

class LocaleUtils$SyncAvoid
{
  private static final List<Locale> AVAILABLE_LOCALE_LIST;
  private static final Set<Locale> AVAILABLE_LOCALE_SET;
  
  static
  {
    ArrayList localArrayList = new ArrayList(Arrays.asList(Locale.getAvailableLocales()));
    AVAILABLE_LOCALE_LIST = Collections.unmodifiableList(localArrayList);
    AVAILABLE_LOCALE_SET = Collections.unmodifiableSet(new HashSet(localArrayList));
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.lang3.LocaleUtils.SyncAvoid
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */