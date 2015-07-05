package org.apache.commons.codec.language.bm;

import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.EnumMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.TreeSet;

public class PhoneticEngine
{
  private static final Map<NameType, Set<String>> NAME_PREFIXES;
  private final boolean concat;
  private final Lang lang;
  private final NameType nameType;
  private final RuleType ruleType;
  
  static
  {
    EnumMap localEnumMap = new EnumMap(NameType.class);
    NAME_PREFIXES = localEnumMap;
    localEnumMap.put(NameType.ASHKENAZI, Collections.unmodifiableSet(new HashSet(Arrays.asList(new String[] { "bar", "ben", "da", "de", "van", "von" }))));
    NAME_PREFIXES.put(NameType.SEPHARDIC, Collections.unmodifiableSet(new HashSet(Arrays.asList(new String[] { "al", "el", "da", "dal", "de", "del", "dela", "de la", "della", "des", "di", "do", "dos", "du", "van", "von" }))));
    NAME_PREFIXES.put(NameType.GENERIC, Collections.unmodifiableSet(new HashSet(Arrays.asList(new String[] { "da", "dal", "de", "del", "dela", "de la", "della", "des", "di", "do", "dos", "du", "van", "von" }))));
  }
  
  public PhoneticEngine(NameType paramNameType, RuleType paramRuleType, boolean paramBoolean)
  {
    if (paramRuleType == RuleType.RULES) {
      throw new IllegalArgumentException("ruleType must not be " + RuleType.RULES);
    }
    nameType = paramNameType;
    ruleType = paramRuleType;
    concat = paramBoolean;
    lang = Lang.instance(paramNameType);
  }
  
  private PhonemeBuilder applyFinalRules(PhonemeBuilder paramPhonemeBuilder, List<Rule> paramList)
  {
    if (paramList == null) {
      throw new NullPointerException("finalRules can not be null");
    }
    if (paramList.isEmpty()) {
      return paramPhonemeBuilder;
    }
    TreeSet localTreeSet = new TreeSet(Rule.Phoneme.COMPARATOR);
    Iterator localIterator = paramPhonemeBuilder.getPhonemes().iterator();
    while (localIterator.hasNext())
    {
      Object localObject = (Rule.Phoneme)localIterator.next();
      paramPhonemeBuilder = PhonemeBuilder.empty(((Rule.Phoneme)localObject).getLanguages());
      CharSequence localCharSequence = cacheSubSequence(((Rule.Phoneme)localObject).getPhonemeText());
      RulesApplication localRulesApplication;
      for (int i = 0; i < localCharSequence.length(); i = localRulesApplication.getI())
      {
        localRulesApplication = new RulesApplication(paramList, localCharSequence, paramPhonemeBuilder, i).invoke();
        boolean bool = localRulesApplication.isFound();
        localObject = localRulesApplication.getPhonemeBuilder();
        paramPhonemeBuilder = (PhonemeBuilder)localObject;
        if (!bool) {
          paramPhonemeBuilder = ((PhonemeBuilder)localObject).append(localCharSequence.subSequence(i, i + 1));
        }
      }
      localTreeSet.addAll(paramPhonemeBuilder.getPhonemes());
    }
    return new PhonemeBuilder(localTreeSet, null);
  }
  
  private static CharSequence cacheSubSequence(CharSequence paramCharSequence)
  {
    new CharSequence()
    {
      public final char charAt(int paramAnonymousInt)
      {
        return val$cached.charAt(paramAnonymousInt);
      }
      
      public final int length()
      {
        return val$cached.length();
      }
      
      public final CharSequence subSequence(int paramAnonymousInt1, int paramAnonymousInt2)
      {
        if (paramAnonymousInt1 == paramAnonymousInt2) {
          localObject = "";
        }
        CharSequence localCharSequence;
        do
        {
          return (CharSequence)localObject;
          localCharSequence = val$cache[paramAnonymousInt1][(paramAnonymousInt2 - 1)];
          localObject = localCharSequence;
        } while (localCharSequence != null);
        Object localObject = val$cached.subSequence(paramAnonymousInt1, paramAnonymousInt2);
        val$cache[paramAnonymousInt1][(paramAnonymousInt2 - 1)] = localObject;
        return (CharSequence)localObject;
      }
    };
  }
  
  private static String join(Iterable<String> paramIterable, String paramString)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    paramIterable = paramIterable.iterator();
    if (paramIterable.hasNext()) {
      localStringBuilder.append((String)paramIterable.next());
    }
    while (paramIterable.hasNext()) {
      localStringBuilder.append(paramString).append((String)paramIterable.next());
    }
    return localStringBuilder.toString();
  }
  
  public String encode(String paramString)
  {
    return encode(paramString, lang.guessLanguages(paramString));
  }
  
  public String encode(String paramString, Languages.LanguageSet paramLanguageSet)
  {
    Object localObject1 = Rule.getInstance(nameType, RuleType.RULES, paramLanguageSet);
    List localList1 = Rule.getInstance(nameType, ruleType, "common");
    List localList2 = Rule.getInstance(nameType, ruleType, paramLanguageSet);
    Object localObject2 = paramString.toLowerCase(Locale.ENGLISH).replace('-', ' ').trim();
    Iterator localIterator;
    if (nameType == NameType.GENERIC)
    {
      if ((((String)localObject2).length() >= 2) && (((String)localObject2).substring(0, 2).equals("d'")))
      {
        paramString = ((String)localObject2).substring(2);
        paramLanguageSet = "d" + paramString;
        return "(" + encode(paramString) + ")-(" + encode(paramLanguageSet) + ")";
      }
      localIterator = ((Set)NAME_PREFIXES.get(nameType)).iterator();
      while (localIterator.hasNext())
      {
        paramString = (String)localIterator.next();
        if (((String)localObject2).startsWith(paramString + " "))
        {
          paramLanguageSet = ((String)localObject2).substring(paramString.length() + 1);
          paramString = paramString + paramLanguageSet;
          return "(" + encode(paramLanguageSet) + ")-(" + encode(paramString) + ")";
        }
      }
    }
    localObject2 = Arrays.asList(((String)localObject2).split("\\s+"));
    paramString = new ArrayList();
    switch (nameType)
    {
    default: 
      throw new IllegalStateException("Unreachable case: " + nameType);
    case ???: 
      localIterator = ((List)localObject2).iterator();
      while (localIterator.hasNext())
      {
        String[] arrayOfString = ((String)localIterator.next()).split("'");
        paramString.add(arrayOfString[(arrayOfString.length - 1)]);
      }
      paramString.removeAll((Collection)NAME_PREFIXES.get(nameType));
      if (!concat) {
        break;
      }
    }
    for (paramString = join(paramString, " ");; paramString = (String)((List)localObject2).iterator().next())
    {
      paramLanguageSet = PhonemeBuilder.empty(paramLanguageSet);
      localObject2 = cacheSubSequence(paramString);
      paramString = paramLanguageSet;
      int i = 0;
      while (i < ((CharSequence)localObject2).length())
      {
        paramString = new RulesApplication((List)localObject1, (CharSequence)localObject2, paramString, i).invoke();
        i = paramString.getI();
        paramString = paramString.getPhonemeBuilder();
      }
      paramString.addAll((Collection)localObject2);
      paramString.removeAll((Collection)NAME_PREFIXES.get(nameType));
      break;
      paramString.addAll((Collection)localObject2);
      break;
      if (paramString.size() != 1) {
        break label619;
      }
    }
    label619:
    paramLanguageSet = new StringBuilder();
    paramString = paramString.iterator();
    while (paramString.hasNext())
    {
      localObject1 = (String)paramString.next();
      paramLanguageSet.append("-").append(encode((String)localObject1));
    }
    return paramLanguageSet.substring(1);
    return applyFinalRules(applyFinalRules(paramString, localList1), localList2).makeString();
  }
  
  public Lang getLang()
  {
    return lang;
  }
  
  public NameType getNameType()
  {
    return nameType;
  }
  
  public RuleType getRuleType()
  {
    return ruleType;
  }
  
  public boolean isConcat()
  {
    return concat;
  }
  
  static final class PhonemeBuilder
  {
    private final Set<Rule.Phoneme> phonemes;
    
    private PhonemeBuilder(Set<Rule.Phoneme> paramSet)
    {
      phonemes = paramSet;
    }
    
    public static PhonemeBuilder empty(Languages.LanguageSet paramLanguageSet)
    {
      return new PhonemeBuilder(Collections.singleton(new Rule.Phoneme("", paramLanguageSet)));
    }
    
    public final PhonemeBuilder append(CharSequence paramCharSequence)
    {
      HashSet localHashSet = new HashSet();
      Iterator localIterator = phonemes.iterator();
      while (localIterator.hasNext()) {
        localHashSet.add(((Rule.Phoneme)localIterator.next()).append(paramCharSequence));
      }
      return new PhonemeBuilder(localHashSet);
    }
    
    public final PhonemeBuilder apply(Rule.PhonemeExpr paramPhonemeExpr)
    {
      HashSet localHashSet = new HashSet();
      Iterator localIterator1 = phonemes.iterator();
      while (localIterator1.hasNext())
      {
        Rule.Phoneme localPhoneme1 = (Rule.Phoneme)localIterator1.next();
        Iterator localIterator2 = paramPhonemeExpr.getPhonemes().iterator();
        while (localIterator2.hasNext())
        {
          Rule.Phoneme localPhoneme2 = localPhoneme1.join((Rule.Phoneme)localIterator2.next());
          if (!localPhoneme2.getLanguages().isEmpty()) {
            localHashSet.add(localPhoneme2);
          }
        }
      }
      return new PhonemeBuilder(localHashSet);
    }
    
    public final Set<Rule.Phoneme> getPhonemes()
    {
      return phonemes;
    }
    
    public final String makeString()
    {
      StringBuilder localStringBuilder = new StringBuilder();
      Iterator localIterator = phonemes.iterator();
      while (localIterator.hasNext())
      {
        Rule.Phoneme localPhoneme = (Rule.Phoneme)localIterator.next();
        if (localStringBuilder.length() > 0) {
          localStringBuilder.append("|");
        }
        localStringBuilder.append(localPhoneme.getPhonemeText());
      }
      return localStringBuilder.toString();
    }
  }
  
  static final class RulesApplication
  {
    private final List<Rule> finalRules;
    private boolean found;
    private int i;
    private final CharSequence input;
    private PhoneticEngine.PhonemeBuilder phonemeBuilder;
    
    public RulesApplication(List<Rule> paramList, CharSequence paramCharSequence, PhoneticEngine.PhonemeBuilder paramPhonemeBuilder, int paramInt)
    {
      if (paramList == null) {
        throw new NullPointerException("The finalRules argument must not be null");
      }
      finalRules = paramList;
      phonemeBuilder = paramPhonemeBuilder;
      input = paramCharSequence;
      i = paramInt;
    }
    
    public final int getI()
    {
      return i;
    }
    
    public final PhoneticEngine.PhonemeBuilder getPhonemeBuilder()
    {
      return phonemeBuilder;
    }
    
    public final RulesApplication invoke()
    {
      int j = 0;
      found = false;
      Iterator localIterator = finalRules.iterator();
      if (localIterator.hasNext())
      {
        Rule localRule = (Rule)localIterator.next();
        j = localRule.getPattern().length();
        if (localRule.patternAndContextMatches(input, i))
        {
          phonemeBuilder = phonemeBuilder.apply(localRule.getPhoneme());
          found = true;
        }
      }
      for (;;)
      {
        if (!found) {
          j = 1;
        }
        i += j;
        return this;
        break;
      }
    }
    
    public final boolean isFound()
    {
      return found;
    }
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.codec.language.bm.PhoneticEngine
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */