import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

public final class fn
{
  private static final Map<String, Integer> a;
  
  static
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("aliceblue", Integer.valueOf(15792383));
    localHashMap.put("antiquewhite", Integer.valueOf(16444375));
    localHashMap.put("aqua", Integer.valueOf(65535));
    localHashMap.put("aquamarine", Integer.valueOf(8388564));
    localHashMap.put("azure", Integer.valueOf(15794175));
    localHashMap.put("beige", Integer.valueOf(16119260));
    localHashMap.put("bisque", Integer.valueOf(16770244));
    localHashMap.put("black", Integer.valueOf(0));
    localHashMap.put("blanchedalmond", Integer.valueOf(16772045));
    localHashMap.put("blue", Integer.valueOf(255));
    localHashMap.put("blueviolet", Integer.valueOf(9055202));
    localHashMap.put("brown", Integer.valueOf(10824234));
    localHashMap.put("burlywood", Integer.valueOf(14596231));
    localHashMap.put("cadetblue", Integer.valueOf(6266528));
    localHashMap.put("chartreuse", Integer.valueOf(8388352));
    localHashMap.put("chocolate", Integer.valueOf(13789470));
    localHashMap.put("coral", Integer.valueOf(16744272));
    localHashMap.put("cornflowerblue", Integer.valueOf(6591981));
    localHashMap.put("cornsilk", Integer.valueOf(16775388));
    localHashMap.put("crimson", Integer.valueOf(14423100));
    localHashMap.put("cyan", Integer.valueOf(65535));
    localHashMap.put("darkblue", Integer.valueOf(139));
    localHashMap.put("darkcyan", Integer.valueOf(35723));
    localHashMap.put("darkgoldenrod", Integer.valueOf(12092939));
    localHashMap.put("darkgray", Integer.valueOf(11119017));
    localHashMap.put("darkgreen", Integer.valueOf(25600));
    localHashMap.put("darkgrey", Integer.valueOf(11119017));
    localHashMap.put("darkkhaki", Integer.valueOf(12433259));
    localHashMap.put("darkmagenta", Integer.valueOf(9109643));
    localHashMap.put("darkolivegreen", Integer.valueOf(5597999));
    localHashMap.put("darkorange", Integer.valueOf(16747520));
    localHashMap.put("darkorchid", Integer.valueOf(10040012));
    localHashMap.put("darkred", Integer.valueOf(9109504));
    localHashMap.put("darksalmon", Integer.valueOf(15308410));
    localHashMap.put("darkseagreen", Integer.valueOf(9419919));
    localHashMap.put("darkslateblue", Integer.valueOf(4734347));
    localHashMap.put("darkslategray", Integer.valueOf(3100495));
    localHashMap.put("darkslategrey", Integer.valueOf(3100495));
    localHashMap.put("darkturquoise", Integer.valueOf(52945));
    localHashMap.put("darkviolet", Integer.valueOf(9699539));
    localHashMap.put("deeppink", Integer.valueOf(16716947));
    localHashMap.put("deepskyblue", Integer.valueOf(49151));
    localHashMap.put("dimgray", Integer.valueOf(6908265));
    localHashMap.put("dimgrey", Integer.valueOf(6908265));
    localHashMap.put("dodgerblue", Integer.valueOf(2003199));
    localHashMap.put("firebrick", Integer.valueOf(11674146));
    localHashMap.put("floralwhite", Integer.valueOf(16775920));
    localHashMap.put("forestgreen", Integer.valueOf(2263842));
    localHashMap.put("fuchsia", Integer.valueOf(16711935));
    localHashMap.put("gainsboro", Integer.valueOf(14474460));
    localHashMap.put("ghostwhite", Integer.valueOf(16316671));
    localHashMap.put("gold", Integer.valueOf(16766720));
    localHashMap.put("goldenrod", Integer.valueOf(14329120));
    localHashMap.put("gray", Integer.valueOf(8421504));
    localHashMap.put("green", Integer.valueOf(32768));
    localHashMap.put("greenyellow", Integer.valueOf(11403055));
    localHashMap.put("grey", Integer.valueOf(8421504));
    localHashMap.put("honeydew", Integer.valueOf(15794160));
    localHashMap.put("hotpink", Integer.valueOf(16738740));
    localHashMap.put("indianred", Integer.valueOf(13458524));
    localHashMap.put("indigo", Integer.valueOf(4915330));
    localHashMap.put("ivory", Integer.valueOf(16777200));
    localHashMap.put("khaki", Integer.valueOf(15787660));
    localHashMap.put("lavender", Integer.valueOf(15132410));
    localHashMap.put("lavenderblush", Integer.valueOf(16773365));
    localHashMap.put("lawngreen", Integer.valueOf(8190976));
    localHashMap.put("lemonchiffon", Integer.valueOf(16775885));
    localHashMap.put("lightblue", Integer.valueOf(11393254));
    localHashMap.put("lightcoral", Integer.valueOf(15761536));
    localHashMap.put("lightcyan", Integer.valueOf(14745599));
    localHashMap.put("lightgoldenrodyellow", Integer.valueOf(16448210));
    localHashMap.put("lightgray", Integer.valueOf(13882323));
    localHashMap.put("lightgreen", Integer.valueOf(9498256));
    localHashMap.put("lightgrey", Integer.valueOf(13882323));
    localHashMap.put("lightpink", Integer.valueOf(16758465));
    localHashMap.put("lightsalmon", Integer.valueOf(16752762));
    localHashMap.put("lightseagreen", Integer.valueOf(2142890));
    localHashMap.put("lightskyblue", Integer.valueOf(8900346));
    localHashMap.put("lightslategray", Integer.valueOf(7833753));
    localHashMap.put("lightslategrey", Integer.valueOf(7833753));
    localHashMap.put("lightsteelblue", Integer.valueOf(11584734));
    localHashMap.put("lightyellow", Integer.valueOf(16777184));
    localHashMap.put("lime", Integer.valueOf(65280));
    localHashMap.put("limegreen", Integer.valueOf(3329330));
    localHashMap.put("linen", Integer.valueOf(16445670));
    localHashMap.put("magenta", Integer.valueOf(16711935));
    localHashMap.put("maroon", Integer.valueOf(8388608));
    localHashMap.put("mediumaquamarine", Integer.valueOf(6737322));
    localHashMap.put("mediumblue", Integer.valueOf(205));
    localHashMap.put("mediumorchid", Integer.valueOf(12211667));
    localHashMap.put("mediumpurple", Integer.valueOf(9662683));
    localHashMap.put("mediumseagreen", Integer.valueOf(3978097));
    localHashMap.put("mediumslateblue", Integer.valueOf(8087790));
    localHashMap.put("mediumspringgreen", Integer.valueOf(64154));
    localHashMap.put("mediumturquoise", Integer.valueOf(4772300));
    localHashMap.put("mediumvioletred", Integer.valueOf(13047173));
    localHashMap.put("midnightblue", Integer.valueOf(1644912));
    localHashMap.put("mintcream", Integer.valueOf(16121850));
    localHashMap.put("mistyrose", Integer.valueOf(16770273));
    localHashMap.put("moccasin", Integer.valueOf(16770229));
    localHashMap.put("navajowhite", Integer.valueOf(16768685));
    localHashMap.put("navy", Integer.valueOf(128));
    localHashMap.put("oldlace", Integer.valueOf(16643558));
    localHashMap.put("olive", Integer.valueOf(8421376));
    localHashMap.put("olivedrab", Integer.valueOf(7048739));
    localHashMap.put("orange", Integer.valueOf(16753920));
    localHashMap.put("orangered", Integer.valueOf(16729344));
    localHashMap.put("orchid", Integer.valueOf(14315734));
    localHashMap.put("palegoldenrod", Integer.valueOf(15657130));
    localHashMap.put("palegreen", Integer.valueOf(10025880));
    localHashMap.put("paleturquoise", Integer.valueOf(11529966));
    localHashMap.put("palevioletred", Integer.valueOf(14381203));
    localHashMap.put("papayawhip", Integer.valueOf(16773077));
    localHashMap.put("peachpuff", Integer.valueOf(16767673));
    localHashMap.put("peru", Integer.valueOf(13468991));
    localHashMap.put("pink", Integer.valueOf(16761035));
    localHashMap.put("plum", Integer.valueOf(14524637));
    localHashMap.put("powderblue", Integer.valueOf(11591910));
    localHashMap.put("purple", Integer.valueOf(8388736));
    localHashMap.put("red", Integer.valueOf(16711680));
    localHashMap.put("rosybrown", Integer.valueOf(12357519));
    localHashMap.put("royalblue", Integer.valueOf(4286945));
    localHashMap.put("saddlebrown", Integer.valueOf(9127187));
    localHashMap.put("salmon", Integer.valueOf(16416882));
    localHashMap.put("sandybrown", Integer.valueOf(16032864));
    localHashMap.put("seagreen", Integer.valueOf(3050327));
    localHashMap.put("seashell", Integer.valueOf(16774638));
    localHashMap.put("sienna", Integer.valueOf(10506797));
    localHashMap.put("silver", Integer.valueOf(12632256));
    localHashMap.put("skyblue", Integer.valueOf(8900331));
    localHashMap.put("slateblue", Integer.valueOf(6970061));
    localHashMap.put("slategray", Integer.valueOf(7372944));
    localHashMap.put("slategrey", Integer.valueOf(7372944));
    localHashMap.put("snow", Integer.valueOf(16775930));
    localHashMap.put("springgreen", Integer.valueOf(65407));
    localHashMap.put("steelblue", Integer.valueOf(4620980));
    localHashMap.put("tan", Integer.valueOf(13808780));
    localHashMap.put("teal", Integer.valueOf(32896));
    localHashMap.put("thistle", Integer.valueOf(14204888));
    localHashMap.put("tomato", Integer.valueOf(16737095));
    localHashMap.put("turquoise", Integer.valueOf(4251856));
    localHashMap.put("violet", Integer.valueOf(15631086));
    localHashMap.put("wheat", Integer.valueOf(16113331));
    localHashMap.put("white", Integer.valueOf(16777215));
    localHashMap.put("whitesmoke", Integer.valueOf(16119285));
    localHashMap.put("yellow", Integer.valueOf(16776960));
    localHashMap.put("yellowgreen", Integer.valueOf(10145074));
    a = Collections.unmodifiableMap(localHashMap);
  }
  
  public static Integer a(String paramString)
  {
    return (Integer)a.get(paramString);
  }
}

/* Location:
 * Qualified Name:     fn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */