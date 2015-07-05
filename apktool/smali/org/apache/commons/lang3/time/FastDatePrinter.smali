.class public Lorg/apache/commons/lang3/time/FastDatePrinter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/apache/commons/lang3/time/DatePrinter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneDisplayKey;,
        Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneNumberRule;,
        Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneNameRule;,
        Lorg/apache/commons/lang3/time/FastDatePrinter$TwentyFourHourField;,
        Lorg/apache/commons/lang3/time/FastDatePrinter$TwelveHourField;,
        Lorg/apache/commons/lang3/time/FastDatePrinter$TwoDigitMonthField;,
        Lorg/apache/commons/lang3/time/FastDatePrinter$TwoDigitYearField;,
        Lorg/apache/commons/lang3/time/FastDatePrinter$TwoDigitNumberField;,
        Lorg/apache/commons/lang3/time/FastDatePrinter$PaddedNumberField;,
        Lorg/apache/commons/lang3/time/FastDatePrinter$UnpaddedMonthField;,
        Lorg/apache/commons/lang3/time/FastDatePrinter$UnpaddedNumberField;,
        Lorg/apache/commons/lang3/time/FastDatePrinter$TextField;,
        Lorg/apache/commons/lang3/time/FastDatePrinter$StringLiteral;,
        Lorg/apache/commons/lang3/time/FastDatePrinter$CharacterLiteral;,
        Lorg/apache/commons/lang3/time/FastDatePrinter$NumberRule;,
        Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;
    }
.end annotation


# static fields
.field public static final FULL:I = 0x0

.field public static final LONG:I = 0x1

.field public static final MEDIUM:I = 0x2

.field public static final SHORT:I = 0x3

.field private static final cTimeZoneDisplayCache:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneDisplayKey;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final mLocale:Ljava/util/Locale;

.field private transient mMaxLengthEstimate:I

.field private final mPattern:Ljava/lang/String;

.field private transient mRules:[Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;

.field private final mTimeZone:Ljava/util/TimeZone;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1088
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v0, Lorg/apache/commons/lang3/time/FastDatePrinter;->cTimeZoneDisplayCache:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)V
    .locals 0

    .prologue
    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    iput-object p1, p0, Lorg/apache/commons/lang3/time/FastDatePrinter;->mPattern:Ljava/lang/String;

    .line 139
    iput-object p2, p0, Lorg/apache/commons/lang3/time/FastDatePrinter;->mTimeZone:Ljava/util/TimeZone;

    .line 140
    iput-object p3, p0, Lorg/apache/commons/lang3/time/FastDatePrinter;->mLocale:Ljava/util/Locale;

    .line 142
    invoke-direct {p0}, Lorg/apache/commons/lang3/time/FastDatePrinter;->init()V

    .line 143
    return-void
.end method

.method private applyRulesToString(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 409
    new-instance v0, Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/apache/commons/lang3/time/FastDatePrinter;->mMaxLengthEstimate:I

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/lang3/time/FastDatePrinter;->applyRules(Ljava/util/Calendar;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getTimeZoneDisplay(Ljava/util/TimeZone;ZILjava/util/Locale;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 1100
    new-instance v2, Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneDisplayKey;

    invoke-direct {v2, p0, p1, p2, p3}, Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneDisplayKey;-><init>(Ljava/util/TimeZone;ZILjava/util/Locale;)V

    .line 1101
    sget-object v0, Lorg/apache/commons/lang3/time/FastDatePrinter;->cTimeZoneDisplayCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, v2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1102
    if-nez v0, :cond_0

    .line 1104
    invoke-virtual {p0, p1, p2, p3}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 1105
    sget-object v0, Lorg/apache/commons/lang3/time/FastDatePrinter;->cTimeZoneDisplayCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, v2, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1106
    if-eqz v0, :cond_1

    .line 1110
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method private init()V
    .locals 3

    .prologue
    .line 149
    invoke-virtual {p0}, Lorg/apache/commons/lang3/time/FastDatePrinter;->parsePattern()Ljava/util/List;

    move-result-object v0

    .line 150
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;

    iput-object v0, p0, Lorg/apache/commons/lang3/time/FastDatePrinter;->mRules:[Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;

    .line 152
    const/4 v1, 0x0

    .line 153
    iget-object v0, p0, Lorg/apache/commons/lang3/time/FastDatePrinter;->mRules:[Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;

    array-length v0, v0

    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    .line 154
    iget-object v2, p0, Lorg/apache/commons/lang3/time/FastDatePrinter;->mRules:[Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;

    aget-object v2, v2, v0

    invoke-interface {v2}, Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;->estimateLength()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    .line 157
    :cond_0
    iput v1, p0, Lorg/apache/commons/lang3/time/FastDatePrinter;->mMaxLengthEstimate:I

    .line 158
    return-void
.end method

.method private newCalendar()Ljava/util/GregorianCalendar;
    .locals 3

    .prologue
    .line 418
    new-instance v0, Ljava/util/GregorianCalendar;

    iget-object v1, p0, Lorg/apache/commons/lang3/time/FastDatePrinter;->mTimeZone:Ljava/util/TimeZone;

    iget-object v2, p0, Lorg/apache/commons/lang3/time/FastDatePrinter;->mLocale:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 0

    .prologue
    .line 569
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 570
    invoke-direct {p0}, Lorg/apache/commons/lang3/time/FastDatePrinter;->init()V

    .line 571
    return-void
.end method


# virtual methods
.method protected applyRules(Ljava/util/Calendar;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 4

    .prologue
    .line 474
    iget-object v1, p0, Lorg/apache/commons/lang3/time/FastDatePrinter;->mRules:[Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 475
    invoke-interface {v3, p2, p1}, Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;->appendTo(Ljava/lang/StringBuffer;Ljava/util/Calendar;)V

    .line 474
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 477
    :cond_0
    return-object p2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 529
    instance-of v1, p1, Lorg/apache/commons/lang3/time/FastDatePrinter;

    if-nez v1, :cond_1

    .line 533
    :cond_0
    :goto_0
    return v0

    .line 532
    :cond_1
    check-cast p1, Lorg/apache/commons/lang3/time/FastDatePrinter;

    .line 533
    iget-object v1, p0, Lorg/apache/commons/lang3/time/FastDatePrinter;->mPattern:Ljava/lang/String;

    iget-object v2, p1, Lorg/apache/commons/lang3/time/FastDatePrinter;->mPattern:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/commons/lang3/time/FastDatePrinter;->mTimeZone:Ljava/util/TimeZone;

    iget-object v2, p1, Lorg/apache/commons/lang3/time/FastDatePrinter;->mTimeZone:Ljava/util/TimeZone;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/commons/lang3/time/FastDatePrinter;->mLocale:Ljava/util/Locale;

    iget-object v2, p1, Lorg/apache/commons/lang3/time/FastDatePrinter;->mLocale:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public format(J)Ljava/lang/String;
    .locals 1

    .prologue
    .line 398
    invoke-direct {p0}, Lorg/apache/commons/lang3/time/FastDatePrinter;->newCalendar()Ljava/util/GregorianCalendar;

    move-result-object v0

    .line 399
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 400
    invoke-direct {p0, v0}, Lorg/apache/commons/lang3/time/FastDatePrinter;->applyRulesToString(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public format(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 436
    new-instance v0, Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/apache/commons/lang3/time/FastDatePrinter;->mMaxLengthEstimate:I

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/lang3/time/FastDatePrinter;->format(Ljava/util/Calendar;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public format(Ljava/util/Date;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 426
    invoke-direct {p0}, Lorg/apache/commons/lang3/time/FastDatePrinter;->newCalendar()Ljava/util/GregorianCalendar;

    move-result-object v0

    .line 427
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 428
    invoke-direct {p0, v0}, Lorg/apache/commons/lang3/time/FastDatePrinter;->applyRulesToString(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public format(JLjava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 1

    .prologue
    .line 444
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, v0, p3}, Lorg/apache/commons/lang3/time/FastDatePrinter;->format(Ljava/util/Date;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 3

    .prologue
    .line 381
    instance-of v0, p1, Ljava/util/Date;

    if-eqz v0, :cond_0

    .line 382
    check-cast p1, Ljava/util/Date;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/time/FastDatePrinter;->format(Ljava/util/Date;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 386
    :goto_0
    return-object v0

    .line 383
    :cond_0
    instance-of v0, p1, Ljava/util/Calendar;

    if-eqz v0, :cond_1

    .line 384
    check-cast p1, Ljava/util/Calendar;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/time/FastDatePrinter;->format(Ljava/util/Calendar;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    goto :goto_0

    .line 385
    :cond_1
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_2

    .line 386
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2}, Lorg/apache/commons/lang3/time/FastDatePrinter;->format(JLjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    goto :goto_0

    .line 388
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "Unknown class: "

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p1, :cond_3

    const-string v0, "<null>"

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public format(Ljava/util/Calendar;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 1

    .prologue
    .line 462
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/time/FastDatePrinter;->applyRules(Ljava/util/Calendar;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public format(Ljava/util/Date;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 1

    .prologue
    .line 452
    invoke-direct {p0}, Lorg/apache/commons/lang3/time/FastDatePrinter;->newCalendar()Ljava/util/GregorianCalendar;

    move-result-object v0

    .line 453
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 454
    invoke-virtual {p0, v0, p2}, Lorg/apache/commons/lang3/time/FastDatePrinter;->applyRules(Ljava/util/Calendar;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 503
    iget-object v0, p0, Lorg/apache/commons/lang3/time/FastDatePrinter;->mLocale:Ljava/util/Locale;

    return-object v0
.end method

.method public getMaxLengthEstimate()I
    .locals 1

    .prologue
    .line 516
    iget v0, p0, Lorg/apache/commons/lang3/time/FastDatePrinter;->mMaxLengthEstimate:I

    return v0
.end method

.method public getPattern()Ljava/lang/String;
    .locals 1

    .prologue
    .line 487
    iget-object v0, p0, Lorg/apache/commons/lang3/time/FastDatePrinter;->mPattern:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeZone()Ljava/util/TimeZone;
    .locals 1

    .prologue
    .line 495
    iget-object v0, p0, Lorg/apache/commons/lang3/time/FastDatePrinter;->mTimeZone:Ljava/util/TimeZone;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 545
    iget-object v0, p0, Lorg/apache/commons/lang3/time/FastDatePrinter;->mPattern:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Lorg/apache/commons/lang3/time/FastDatePrinter;->mTimeZone:Ljava/util/TimeZone;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    iget-object v2, p0, Lorg/apache/commons/lang3/time/FastDatePrinter;->mLocale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->hashCode()I

    move-result v2

    mul-int/lit8 v2, v2, 0xd

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0xd

    add-int/2addr v0, v1

    return v0
.end method

.method protected parsePattern()Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;",
            ">;"
        }
    .end annotation

    .prologue
    .line 169
    new-instance v0, Ljava/text/DateFormatSymbols;

    iget-object v1, p0, Lorg/apache/commons/lang3/time/FastDatePrinter;->mLocale:Ljava/util/Locale;

    invoke-direct {v0, v1}, Ljava/text/DateFormatSymbols;-><init>(Ljava/util/Locale;)V

    .line 170
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 172
    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getEras()[Ljava/lang/String;

    move-result-object v5

    .line 173
    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getMonths()[Ljava/lang/String;

    move-result-object v6

    .line 174
    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getShortMonths()[Ljava/lang/String;

    move-result-object v7

    .line 175
    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getWeekdays()[Ljava/lang/String;

    move-result-object v2

    .line 176
    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getShortWeekdays()[Ljava/lang/String;

    move-result-object v1

    .line 177
    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v8

    .line 179
    iget-object v0, p0, Lorg/apache/commons/lang3/time/FastDatePrinter;->mPattern:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    .line 180
    const/4 v0, 0x1

    new-array v10, v0, [I

    .line 182
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v9, :cond_9

    .line 183
    const/4 v3, 0x0

    aput v0, v10, v3

    .line 184
    iget-object v0, p0, Lorg/apache/commons/lang3/time/FastDatePrinter;->mPattern:Ljava/lang/String;

    invoke-virtual {p0, v0, v10}, Lorg/apache/commons/lang3/time/FastDatePrinter;->parseToken(Ljava/lang/String;[I)Ljava/lang/String;

    move-result-object v3

    .line 185
    const/4 v0, 0x0

    aget v11, v10, v0

    .line 187
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    .line 188
    if-eqz v0, :cond_9

    .line 189
    const/4 v12, 0x0

    invoke-virtual {v3, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    .line 195
    sparse-switch v12, :sswitch_data_0

    .line 282
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Illegal pattern component: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 197
    :sswitch_0
    new-instance v0, Lorg/apache/commons/lang3/time/FastDatePrinter$TextField;

    const/4 v3, 0x0

    invoke-direct {v0, v3, v5}, Lorg/apache/commons/lang3/time/FastDatePrinter$TextField;-><init>(I[Ljava/lang/String;)V

    .line 285
    :goto_1
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    add-int/lit8 v0, v11, 0x1

    goto :goto_0

    .line 200
    :sswitch_1
    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    .line 201
    sget-object v0, Lorg/apache/commons/lang3/time/FastDatePrinter$TwoDigitYearField;->INSTANCE:Lorg/apache/commons/lang3/time/FastDatePrinter$TwoDigitYearField;

    goto :goto_1

    .line 203
    :cond_0
    const/4 v3, 0x1

    const/4 v12, 0x4

    if-ge v0, v12, :cond_1

    const/4 v0, 0x4

    :cond_1
    invoke-virtual {p0, v3, v0}, Lorg/apache/commons/lang3/time/FastDatePrinter;->selectNumberRule(II)Lorg/apache/commons/lang3/time/FastDatePrinter$NumberRule;

    move-result-object v0

    goto :goto_1

    .line 207
    :sswitch_2
    const/4 v3, 0x4

    if-lt v0, v3, :cond_2

    .line 208
    new-instance v0, Lorg/apache/commons/lang3/time/FastDatePrinter$TextField;

    const/4 v3, 0x2

    invoke-direct {v0, v3, v6}, Lorg/apache/commons/lang3/time/FastDatePrinter$TextField;-><init>(I[Ljava/lang/String;)V

    goto :goto_1

    .line 209
    :cond_2
    const/4 v3, 0x3

    if-ne v0, v3, :cond_3

    .line 210
    new-instance v0, Lorg/apache/commons/lang3/time/FastDatePrinter$TextField;

    const/4 v3, 0x2

    invoke-direct {v0, v3, v7}, Lorg/apache/commons/lang3/time/FastDatePrinter$TextField;-><init>(I[Ljava/lang/String;)V

    goto :goto_1

    .line 211
    :cond_3
    const/4 v3, 0x2

    if-ne v0, v3, :cond_4

    .line 212
    sget-object v0, Lorg/apache/commons/lang3/time/FastDatePrinter$TwoDigitMonthField;->INSTANCE:Lorg/apache/commons/lang3/time/FastDatePrinter$TwoDigitMonthField;

    goto :goto_1

    .line 214
    :cond_4
    sget-object v0, Lorg/apache/commons/lang3/time/FastDatePrinter$UnpaddedMonthField;->INSTANCE:Lorg/apache/commons/lang3/time/FastDatePrinter$UnpaddedMonthField;

    goto :goto_1

    .line 218
    :sswitch_3
    const/4 v3, 0x5

    invoke-virtual {p0, v3, v0}, Lorg/apache/commons/lang3/time/FastDatePrinter;->selectNumberRule(II)Lorg/apache/commons/lang3/time/FastDatePrinter$NumberRule;

    move-result-object v0

    goto :goto_1

    .line 221
    :sswitch_4
    new-instance v3, Lorg/apache/commons/lang3/time/FastDatePrinter$TwelveHourField;

    const/16 v12, 0xa

    invoke-virtual {p0, v12, v0}, Lorg/apache/commons/lang3/time/FastDatePrinter;->selectNumberRule(II)Lorg/apache/commons/lang3/time/FastDatePrinter$NumberRule;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/apache/commons/lang3/time/FastDatePrinter$TwelveHourField;-><init>(Lorg/apache/commons/lang3/time/FastDatePrinter$NumberRule;)V

    move-object v0, v3

    .line 222
    goto :goto_1

    .line 224
    :sswitch_5
    const/16 v3, 0xb

    invoke-virtual {p0, v3, v0}, Lorg/apache/commons/lang3/time/FastDatePrinter;->selectNumberRule(II)Lorg/apache/commons/lang3/time/FastDatePrinter$NumberRule;

    move-result-object v0

    goto :goto_1

    .line 227
    :sswitch_6
    const/16 v3, 0xc

    invoke-virtual {p0, v3, v0}, Lorg/apache/commons/lang3/time/FastDatePrinter;->selectNumberRule(II)Lorg/apache/commons/lang3/time/FastDatePrinter$NumberRule;

    move-result-object v0

    goto :goto_1

    .line 230
    :sswitch_7
    const/16 v3, 0xd

    invoke-virtual {p0, v3, v0}, Lorg/apache/commons/lang3/time/FastDatePrinter;->selectNumberRule(II)Lorg/apache/commons/lang3/time/FastDatePrinter$NumberRule;

    move-result-object v0

    goto :goto_1

    .line 233
    :sswitch_8
    const/16 v3, 0xe

    invoke-virtual {p0, v3, v0}, Lorg/apache/commons/lang3/time/FastDatePrinter;->selectNumberRule(II)Lorg/apache/commons/lang3/time/FastDatePrinter$NumberRule;

    move-result-object v0

    goto :goto_1

    .line 236
    :sswitch_9
    new-instance v3, Lorg/apache/commons/lang3/time/FastDatePrinter$TextField;

    const/4 v12, 0x7

    const/4 v13, 0x4

    if-ge v0, v13, :cond_5

    move-object v0, v1

    :goto_2
    invoke-direct {v3, v12, v0}, Lorg/apache/commons/lang3/time/FastDatePrinter$TextField;-><init>(I[Ljava/lang/String;)V

    move-object v0, v3

    .line 237
    goto :goto_1

    :cond_5
    move-object v0, v2

    .line 236
    goto :goto_2

    .line 239
    :sswitch_a
    const/4 v3, 0x6

    invoke-virtual {p0, v3, v0}, Lorg/apache/commons/lang3/time/FastDatePrinter;->selectNumberRule(II)Lorg/apache/commons/lang3/time/FastDatePrinter$NumberRule;

    move-result-object v0

    goto :goto_1

    .line 242
    :sswitch_b
    const/16 v3, 0x8

    invoke-virtual {p0, v3, v0}, Lorg/apache/commons/lang3/time/FastDatePrinter;->selectNumberRule(II)Lorg/apache/commons/lang3/time/FastDatePrinter$NumberRule;

    move-result-object v0

    goto :goto_1

    .line 245
    :sswitch_c
    const/4 v3, 0x3

    invoke-virtual {p0, v3, v0}, Lorg/apache/commons/lang3/time/FastDatePrinter;->selectNumberRule(II)Lorg/apache/commons/lang3/time/FastDatePrinter$NumberRule;

    move-result-object v0

    goto/16 :goto_1

    .line 248
    :sswitch_d
    const/4 v3, 0x4

    invoke-virtual {p0, v3, v0}, Lorg/apache/commons/lang3/time/FastDatePrinter;->selectNumberRule(II)Lorg/apache/commons/lang3/time/FastDatePrinter$NumberRule;

    move-result-object v0

    goto/16 :goto_1

    .line 251
    :sswitch_e
    new-instance v0, Lorg/apache/commons/lang3/time/FastDatePrinter$TextField;

    const/16 v3, 0x9

    invoke-direct {v0, v3, v8}, Lorg/apache/commons/lang3/time/FastDatePrinter$TextField;-><init>(I[Ljava/lang/String;)V

    goto/16 :goto_1

    .line 254
    :sswitch_f
    new-instance v3, Lorg/apache/commons/lang3/time/FastDatePrinter$TwentyFourHourField;

    const/16 v12, 0xb

    invoke-virtual {p0, v12, v0}, Lorg/apache/commons/lang3/time/FastDatePrinter;->selectNumberRule(II)Lorg/apache/commons/lang3/time/FastDatePrinter$NumberRule;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/apache/commons/lang3/time/FastDatePrinter$TwentyFourHourField;-><init>(Lorg/apache/commons/lang3/time/FastDatePrinter$NumberRule;)V

    move-object v0, v3

    .line 255
    goto/16 :goto_1

    .line 257
    :sswitch_10
    const/16 v3, 0xa

    invoke-virtual {p0, v3, v0}, Lorg/apache/commons/lang3/time/FastDatePrinter;->selectNumberRule(II)Lorg/apache/commons/lang3/time/FastDatePrinter$NumberRule;

    move-result-object v0

    goto/16 :goto_1

    .line 260
    :sswitch_11
    const/4 v3, 0x4

    if-lt v0, v3, :cond_6

    .line 261
    new-instance v0, Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneNameRule;

    iget-object v3, p0, Lorg/apache/commons/lang3/time/FastDatePrinter;->mTimeZone:Ljava/util/TimeZone;

    iget-object v12, p0, Lorg/apache/commons/lang3/time/FastDatePrinter;->mLocale:Ljava/util/Locale;

    const/4 v13, 0x1

    invoke-direct {v0, v3, v12, v13}, Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneNameRule;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;I)V

    goto/16 :goto_1

    .line 263
    :cond_6
    new-instance v0, Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneNameRule;

    iget-object v3, p0, Lorg/apache/commons/lang3/time/FastDatePrinter;->mTimeZone:Ljava/util/TimeZone;

    iget-object v12, p0, Lorg/apache/commons/lang3/time/FastDatePrinter;->mLocale:Ljava/util/Locale;

    const/4 v13, 0x0

    invoke-direct {v0, v3, v12, v13}, Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneNameRule;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;I)V

    goto/16 :goto_1

    .line 267
    :sswitch_12
    const/4 v3, 0x1

    if-ne v0, v3, :cond_7

    .line 268
    sget-object v0, Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneNumberRule;->INSTANCE_NO_COLON:Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneNumberRule;

    goto/16 :goto_1

    .line 270
    :cond_7
    sget-object v0, Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneNumberRule;->INSTANCE_COLON:Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneNumberRule;

    goto/16 :goto_1

    .line 274
    :sswitch_13
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 275
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v12, 0x1

    if-ne v0, v12, :cond_8

    .line 276
    new-instance v0, Lorg/apache/commons/lang3/time/FastDatePrinter$CharacterLiteral;

    const/4 v12, 0x0

    invoke-virtual {v3, v12}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-direct {v0, v3}, Lorg/apache/commons/lang3/time/FastDatePrinter$CharacterLiteral;-><init>(C)V

    goto/16 :goto_1

    .line 278
    :cond_8
    new-instance v0, Lorg/apache/commons/lang3/time/FastDatePrinter$StringLiteral;

    invoke-direct {v0, v3}, Lorg/apache/commons/lang3/time/FastDatePrinter$StringLiteral;-><init>(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 288
    :cond_9
    return-object v4

    .line 195
    nop

    :sswitch_data_0
    .sparse-switch
        0x27 -> :sswitch_13
        0x44 -> :sswitch_a
        0x45 -> :sswitch_9
        0x46 -> :sswitch_b
        0x47 -> :sswitch_0
        0x48 -> :sswitch_5
        0x4b -> :sswitch_10
        0x4d -> :sswitch_2
        0x53 -> :sswitch_8
        0x57 -> :sswitch_d
        0x5a -> :sswitch_12
        0x61 -> :sswitch_e
        0x64 -> :sswitch_3
        0x68 -> :sswitch_4
        0x6b -> :sswitch_f
        0x6d -> :sswitch_6
        0x73 -> :sswitch_7
        0x77 -> :sswitch_c
        0x79 -> :sswitch_1
        0x7a -> :sswitch_11
    .end sparse-switch
.end method

.method protected parseToken(Ljava/lang/String;[I)Ljava/lang/String;
    .locals 11

    .prologue
    const/16 v10, 0x61

    const/16 v9, 0x5a

    const/16 v8, 0x41

    const/16 v7, 0x27

    const/4 v1, 0x0

    .line 299
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 301
    aget v2, p2, v1

    .line 302
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 304
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 305
    if-lt v0, v8, :cond_0

    if-le v0, v9, :cond_1

    :cond_0
    if-lt v0, v10, :cond_2

    const/16 v5, 0x7a

    if-gt v0, v5, :cond_2

    .line 308
    :cond_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 310
    :goto_0
    add-int/lit8 v5, v2, 0x1

    if-ge v5, v4, :cond_8

    .line 311
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 312
    if-ne v5, v0, :cond_8

    .line 313
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 314
    add-int/lit8 v2, v2, 0x1

    .line 318
    goto :goto_0

    .line 321
    :cond_2
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v0, v1

    .line 325
    :goto_1
    if-ge v2, v4, :cond_8

    .line 326
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 328
    if-ne v5, v7, :cond_5

    .line 329
    add-int/lit8 v6, v2, 0x1

    if-ge v6, v4, :cond_3

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v7, :cond_3

    .line 331
    add-int/lit8 v2, v2, 0x1

    .line 332
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 325
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 334
    :cond_3
    if-nez v0, :cond_4

    const/4 v0, 0x1

    goto :goto_2

    :cond_4
    move v0, v1

    goto :goto_2

    .line 336
    :cond_5
    if-nez v0, :cond_9

    if-lt v5, v8, :cond_6

    if-le v5, v9, :cond_7

    :cond_6
    if-lt v5, v10, :cond_9

    const/16 v6, 0x7a

    if-gt v5, v6, :cond_9

    .line 338
    :cond_7
    add-int/lit8 v2, v2, -0x1

    .line 346
    :cond_8
    aput v2, p2, v1

    .line 347
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 341
    :cond_9
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2
.end method

.method protected selectNumberRule(II)Lorg/apache/commons/lang3/time/FastDatePrinter$NumberRule;
    .locals 1

    .prologue
    .line 358
    packed-switch p2, :pswitch_data_0

    .line 364
    new-instance v0, Lorg/apache/commons/lang3/time/FastDatePrinter$PaddedNumberField;

    invoke-direct {v0, p1, p2}, Lorg/apache/commons/lang3/time/FastDatePrinter$PaddedNumberField;-><init>(II)V

    :goto_0
    return-object v0

    .line 360
    :pswitch_0
    new-instance v0, Lorg/apache/commons/lang3/time/FastDatePrinter$UnpaddedNumberField;

    invoke-direct {v0, p1}, Lorg/apache/commons/lang3/time/FastDatePrinter$UnpaddedNumberField;-><init>(I)V

    goto :goto_0

    .line 362
    :pswitch_1
    new-instance v0, Lorg/apache/commons/lang3/time/FastDatePrinter$TwoDigitNumberField;

    invoke-direct {v0, p1}, Lorg/apache/commons/lang3/time/FastDatePrinter$TwoDigitNumberField;-><init>(I)V

    goto :goto_0

    .line 358
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 555
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FastDatePrinter["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/commons/lang3/time/FastDatePrinter;->mPattern:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/lang3/time/FastDatePrinter;->mLocale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/lang3/time/FastDatePrinter;->mTimeZone:Ljava/util/TimeZone;

    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
