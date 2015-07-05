.class Lorg/apache/commons/lang3/time/FastDateParser$TimeZoneStrategy;
.super Lorg/apache/commons/lang3/time/FastDateParser$Strategy;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/time/FastDateParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TimeZoneStrategy"
.end annotation


# static fields
.field private static final ID:I = 0x0

.field private static final LONG_DST:I = 0x3

.field private static final LONG_STD:I = 0x1

.field private static final SHORT_DST:I = 0x4

.field private static final SHORT_STD:I = 0x2


# instance fields
.field private final tzNames:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/TimeZone;",
            ">;"
        }
    .end annotation
.end field

.field private final validTimeZoneChars:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/util/Locale;)V
    .locals 12

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 736
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/commons/lang3/time/FastDateParser$Strategy;-><init>(Lorg/apache/commons/lang3/time/FastDateParser$1;)V

    .line 709
    new-instance v0, Ljava/util/TreeMap;

    sget-object v2, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v2}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lorg/apache/commons/lang3/time/FastDateParser$TimeZoneStrategy;->tzNames:Ljava/util/SortedMap;

    .line 737
    invoke-static {p1}, Ljava/text/DateFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DateFormatSymbols;

    move-result-object v0

    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getZoneStrings()[[Ljava/lang/String;

    move-result-object v2

    .line 738
    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_4

    aget-object v4, v2, v0

    .line 739
    aget-object v5, v4, v1

    const-string v6, "GMT"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 740
    aget-object v5, v4, v1

    invoke-static {v5}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v5

    .line 743
    iget-object v6, p0, Lorg/apache/commons/lang3/time/FastDateParser$TimeZoneStrategy;->tzNames:Ljava/util/SortedMap;

    aget-object v7, v4, v8

    invoke-interface {v6, v7}, Ljava/util/SortedMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 744
    iget-object v6, p0, Lorg/apache/commons/lang3/time/FastDateParser$TimeZoneStrategy;->tzNames:Ljava/util/SortedMap;

    aget-object v7, v4, v8

    invoke-interface {v6, v7, v5}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 746
    :cond_0
    iget-object v6, p0, Lorg/apache/commons/lang3/time/FastDateParser$TimeZoneStrategy;->tzNames:Ljava/util/SortedMap;

    aget-object v7, v4, v9

    invoke-interface {v6, v7}, Ljava/util/SortedMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 747
    iget-object v6, p0, Lorg/apache/commons/lang3/time/FastDateParser$TimeZoneStrategy;->tzNames:Ljava/util/SortedMap;

    aget-object v7, v4, v9

    invoke-interface {v6, v7, v5}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 749
    :cond_1
    invoke-virtual {v5}, Ljava/util/TimeZone;->useDaylightTime()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 750
    iget-object v6, p0, Lorg/apache/commons/lang3/time/FastDateParser$TimeZoneStrategy;->tzNames:Ljava/util/SortedMap;

    aget-object v7, v4, v10

    invoke-interface {v6, v7}, Ljava/util/SortedMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 751
    iget-object v6, p0, Lorg/apache/commons/lang3/time/FastDateParser$TimeZoneStrategy;->tzNames:Ljava/util/SortedMap;

    aget-object v7, v4, v10

    invoke-interface {v6, v7, v5}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 753
    :cond_2
    iget-object v6, p0, Lorg/apache/commons/lang3/time/FastDateParser$TimeZoneStrategy;->tzNames:Ljava/util/SortedMap;

    aget-object v7, v4, v11

    invoke-interface {v6, v7}, Ljava/util/SortedMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 754
    iget-object v6, p0, Lorg/apache/commons/lang3/time/FastDateParser$TimeZoneStrategy;->tzNames:Ljava/util/SortedMap;

    aget-object v4, v4, v11

    invoke-interface {v6, v4, v5}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 738
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 759
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 760
    const-string v0, "(GMT[+\\-]\\d{0,1}\\d{2}|[+\\-]\\d{2}:?\\d{2}|"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 761
    iget-object v0, p0, Lorg/apache/commons/lang3/time/FastDateParser$TimeZoneStrategy;->tzNames:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 762
    # invokes: Lorg/apache/commons/lang3/time/FastDateParser;->escapeRegex(Ljava/lang/StringBuilder;Ljava/lang/String;Z)Ljava/lang/StringBuilder;
    invoke-static {v2, v0, v1}, Lorg/apache/commons/lang3/time/FastDateParser;->access$100(Ljava/lang/StringBuilder;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v4, 0x7c

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 764
    :cond_5
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/16 v1, 0x29

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 765
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/lang3/time/FastDateParser$TimeZoneStrategy;->validTimeZoneChars:Ljava/lang/String;

    .line 766
    return-void
.end method


# virtual methods
.method addRegex(Lorg/apache/commons/lang3/time/FastDateParser;Ljava/lang/StringBuilder;)Z
    .locals 1

    .prologue
    .line 773
    iget-object v0, p0, Lorg/apache/commons/lang3/time/FastDateParser$TimeZoneStrategy;->validTimeZoneChars:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 774
    const/4 v0, 0x1

    return v0
.end method

.method setCalendar(Lorg/apache/commons/lang3/time/FastDateParser;Ljava/util/Calendar;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 783
    invoke-virtual {p3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2b

    if-eq v0, v1, :cond_0

    invoke-virtual {p3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2d

    if-ne v0, v1, :cond_2

    .line 784
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GMT"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    .line 795
    :cond_1
    :goto_0
    invoke-virtual {p2, v0}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 796
    return-void

    .line 786
    :cond_2
    const-string v0, "GMT"

    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 787
    invoke-static {p3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    goto :goto_0

    .line 790
    :cond_3
    iget-object v0, p0, Lorg/apache/commons/lang3/time/FastDateParser$TimeZoneStrategy;->tzNames:Ljava/util/SortedMap;

    invoke-interface {v0, p3}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/TimeZone;

    .line 791
    if-nez v0, :cond_1

    .line 792
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a supported timezone name"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
