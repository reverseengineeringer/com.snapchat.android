.class public Lorg/apache/commons/lang3/time/DateUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/lang3/time/DateUtils$DateIterator;
    }
.end annotation


# static fields
.field public static final MILLIS_PER_DAY:J = 0x5265c00L

.field public static final MILLIS_PER_HOUR:J = 0x36ee80L

.field public static final MILLIS_PER_MINUTE:J = 0xea60L

.field public static final MILLIS_PER_SECOND:J = 0x3e8L

.field private static final MODIFY_CEILING:I = 0x2

.field private static final MODIFY_ROUND:I = 0x1

.field private static final MODIFY_TRUNCATE:I = 0x0

.field public static final RANGE_MONTH_MONDAY:I = 0x6

.field public static final RANGE_MONTH_SUNDAY:I = 0x5

.field public static final RANGE_WEEK_CENTER:I = 0x4

.field public static final RANGE_WEEK_MONDAY:I = 0x2

.field public static final RANGE_WEEK_RELATIVE:I = 0x3

.field public static final RANGE_WEEK_SUNDAY:I = 0x1

.field public static final SEMI_MONTH:I = 0x3e9

.field private static final fields:[[I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 76
    const/16 v0, 0x8

    new-array v0, v0, [[I

    new-array v1, v4, [I

    const/16 v2, 0xe

    aput v2, v1, v3

    aput-object v1, v0, v3

    new-array v1, v4, [I

    const/16 v2, 0xd

    aput v2, v1, v3

    aput-object v1, v0, v4

    new-array v1, v4, [I

    const/16 v2, 0xc

    aput v2, v1, v3

    aput-object v1, v0, v5

    new-array v1, v5, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v6

    const/4 v1, 0x4

    new-array v2, v6, [I

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v5, [I

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v4, [I

    aput v4, v2, v3

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v4, [I

    aput v3, v2, v3

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/commons/lang3/time/DateUtils;->fields:[[I

    return-void

    :array_0
    .array-data 4
        0xb
        0xa
    .end array-data

    :array_1
    .array-data 4
        0x5
        0x5
        0x9
    .end array-data

    :array_2
    .array-data 4
        0x2
        0x3e9
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    return-void
.end method

.method private static add(Ljava/util/Date;II)Ljava/util/Date;
    .locals 2

    .prologue
    .line 518
    if-nez p0, :cond_0

    .line 519
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The date must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 521
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 522
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 523
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->add(II)V

    .line 524
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static addDays(Ljava/util/Date;I)Ljava/util/Date;
    .locals 1

    .prologue
    .line 447
    const/4 v0, 0x5

    invoke-static {p0, v0, p1}, Lorg/apache/commons/lang3/time/DateUtils;->add(Ljava/util/Date;II)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static addHours(Ljava/util/Date;I)Ljava/util/Date;
    .locals 1

    .prologue
    .line 461
    const/16 v0, 0xb

    invoke-static {p0, v0, p1}, Lorg/apache/commons/lang3/time/DateUtils;->add(Ljava/util/Date;II)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static addMilliseconds(Ljava/util/Date;I)Ljava/util/Date;
    .locals 1

    .prologue
    .line 503
    const/16 v0, 0xe

    invoke-static {p0, v0, p1}, Lorg/apache/commons/lang3/time/DateUtils;->add(Ljava/util/Date;II)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static addMinutes(Ljava/util/Date;I)Ljava/util/Date;
    .locals 1

    .prologue
    .line 475
    const/16 v0, 0xc

    invoke-static {p0, v0, p1}, Lorg/apache/commons/lang3/time/DateUtils;->add(Ljava/util/Date;II)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static addMonths(Ljava/util/Date;I)Ljava/util/Date;
    .locals 1

    .prologue
    .line 419
    const/4 v0, 0x2

    invoke-static {p0, v0, p1}, Lorg/apache/commons/lang3/time/DateUtils;->add(Ljava/util/Date;II)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static addSeconds(Ljava/util/Date;I)Ljava/util/Date;
    .locals 1

    .prologue
    .line 489
    const/16 v0, 0xd

    invoke-static {p0, v0, p1}, Lorg/apache/commons/lang3/time/DateUtils;->add(Ljava/util/Date;II)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static addWeeks(Ljava/util/Date;I)Ljava/util/Date;
    .locals 1

    .prologue
    .line 433
    const/4 v0, 0x3

    invoke-static {p0, v0, p1}, Lorg/apache/commons/lang3/time/DateUtils;->add(Ljava/util/Date;II)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static addYears(Ljava/util/Date;I)Ljava/util/Date;
    .locals 1

    .prologue
    .line 405
    const/4 v0, 0x1

    invoke-static {p0, v0, p1}, Lorg/apache/commons/lang3/time/DateUtils;->add(Ljava/util/Date;II)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static ceiling(Ljava/util/Calendar;I)Ljava/util/Calendar;
    .locals 2

    .prologue
    .line 910
    if-nez p0, :cond_0

    .line 911
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The date must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 913
    :cond_0
    invoke-virtual {p0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 914
    const/4 v1, 0x2

    invoke-static {v0, p1, v1}, Lorg/apache/commons/lang3/time/DateUtils;->modify(Ljava/util/Calendar;II)V

    .line 915
    return-object v0
.end method

.method public static ceiling(Ljava/lang/Object;I)Ljava/util/Date;
    .locals 3

    .prologue
    .line 936
    if-nez p0, :cond_0

    .line 937
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The date must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 939
    :cond_0
    instance-of v0, p0, Ljava/util/Date;

    if-eqz v0, :cond_1

    .line 940
    check-cast p0, Ljava/util/Date;

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/time/DateUtils;->ceiling(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object v0

    .line 942
    :goto_0
    return-object v0

    .line 941
    :cond_1
    instance-of v0, p0, Ljava/util/Calendar;

    if-eqz v0, :cond_2

    .line 942
    check-cast p0, Ljava/util/Calendar;

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/time/DateUtils;->ceiling(Ljava/util/Calendar;I)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    goto :goto_0

    .line 944
    :cond_2
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not find ceiling of for type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static ceiling(Ljava/util/Date;I)Ljava/util/Date;
    .locals 2

    .prologue
    .line 884
    if-nez p0, :cond_0

    .line 885
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The date must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 887
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 888
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 889
    const/4 v1, 0x2

    invoke-static {v0, p1, v1}, Lorg/apache/commons/lang3/time/DateUtils;->modify(Ljava/util/Calendar;II)V

    .line 890
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method private static getFragment(Ljava/util/Calendar;ILjava/util/concurrent/TimeUnit;)J
    .locals 5

    .prologue
    const-wide/16 v0, 0x0

    .line 1668
    if-nez p0, :cond_0

    .line 1669
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The date must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1674
    :cond_0
    sget-object v2, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    if-ne p2, v2, :cond_1

    const/4 v2, 0x0

    .line 1677
    :goto_0
    packed-switch p1, :pswitch_data_0

    .line 1683
    :goto_1
    packed-switch p1, :pswitch_data_1

    .line 1708
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1674
    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    .line 1679
    :pswitch_1
    const/4 v3, 0x6

    invoke-virtual {p0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    sub-int v2, v3, v2

    int-to-long v2, v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p2, v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 1680
    goto :goto_1

    .line 1682
    :pswitch_2
    const/4 v3, 0x5

    invoke-virtual {p0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    sub-int v2, v3, v2

    int-to-long v2, v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p2, v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    add-long/2addr v0, v2

    goto :goto_1

    .line 1696
    :pswitch_3
    const/16 v2, 0xb

    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    int-to-long v2, v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p2, v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 1699
    :pswitch_4
    const/16 v2, 0xc

    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    int-to-long v2, v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p2, v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 1702
    :pswitch_5
    const/16 v2, 0xd

    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    int-to-long v2, v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p2, v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 1705
    :pswitch_6
    const/16 v2, 0xe

    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    int-to-long v2, v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p2, v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 1710
    :pswitch_7
    return-wide v0

    .line 1677
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 1683
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private static getFragment(Ljava/util/Date;ILjava/util/concurrent/TimeUnit;)J
    .locals 2

    .prologue
    .line 1648
    if-nez p0, :cond_0

    .line 1649
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The date must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1651
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1652
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1653
    invoke-static {v0, p1, p2}, Lorg/apache/commons/lang3/time/DateUtils;->getFragment(Ljava/util/Calendar;ILjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getFragmentInDays(Ljava/util/Calendar;I)J
    .locals 2

    .prologue
    .line 1633
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/time/DateUtils;->getFragment(Ljava/util/Calendar;ILjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getFragmentInDays(Ljava/util/Date;I)J
    .locals 2

    .prologue
    .line 1442
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/time/DateUtils;->getFragment(Ljava/util/Date;ILjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getFragmentInHours(Ljava/util/Calendar;I)J
    .locals 2

    .prologue
    .line 1593
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/time/DateUtils;->getFragment(Ljava/util/Calendar;ILjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getFragmentInHours(Ljava/util/Date;I)J
    .locals 2

    .prologue
    .line 1404
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/time/DateUtils;->getFragment(Ljava/util/Date;ILjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getFragmentInMilliseconds(Ljava/util/Calendar;I)J
    .locals 2

    .prologue
    .line 1480
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/time/DateUtils;->getFragment(Ljava/util/Calendar;ILjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getFragmentInMilliseconds(Ljava/util/Date;I)J
    .locals 2

    .prologue
    .line 1290
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/time/DateUtils;->getFragment(Ljava/util/Date;ILjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getFragmentInMinutes(Ljava/util/Calendar;I)J
    .locals 2

    .prologue
    .line 1555
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/time/DateUtils;->getFragment(Ljava/util/Calendar;ILjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getFragmentInMinutes(Ljava/util/Date;I)J
    .locals 2

    .prologue
    .line 1366
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/time/DateUtils;->getFragment(Ljava/util/Date;ILjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getFragmentInSeconds(Ljava/util/Calendar;I)J
    .locals 2

    .prologue
    .line 1517
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/time/DateUtils;->getFragment(Ljava/util/Calendar;ILjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getFragmentInSeconds(Ljava/util/Date;I)J
    .locals 2

    .prologue
    .line 1328
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/time/DateUtils;->getFragment(Ljava/util/Date;ILjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static isSameDay(Ljava/util/Calendar;Ljava/util/Calendar;)Z
    .locals 5

    .prologue
    const/4 v4, 0x6

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 180
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 181
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The date must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 183
    :cond_1
    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v2, v3, :cond_2

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v2, v3, :cond_2

    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v2, v3, :cond_2

    :goto_0
    return v0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public static isSameDay(Ljava/util/Date;Ljava/util/Date;)Z
    .locals 2

    .prologue
    .line 156
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 157
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The date must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 159
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 160
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 161
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 162
    invoke-virtual {v1, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 163
    invoke-static {v0, v1}, Lorg/apache/commons/lang3/time/DateUtils;->isSameDay(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v0

    return v0
.end method

.method public static isSameInstant(Ljava/util/Calendar;Ljava/util/Calendar;)Z
    .locals 4

    .prologue
    .line 219
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 220
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The date must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 222
    :cond_1
    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSameInstant(Ljava/util/Date;Ljava/util/Date;)Z
    .locals 4

    .prologue
    .line 201
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 202
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The date must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 204
    :cond_1
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSameLocalTime(Ljava/util/Calendar;Ljava/util/Calendar;)Z
    .locals 7

    .prologue
    const/16 v6, 0xc

    const/16 v5, 0xb

    const/4 v4, 0x6

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 239
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 240
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The date must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 242
    :cond_1
    const/16 v2, 0xe

    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/16 v3, 0xe

    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v2, v3, :cond_2

    const/16 v2, 0xd

    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/16 v3, 0xd

    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v2, v3, :cond_2

    invoke-virtual {p0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v2, v3, :cond_2

    invoke-virtual {p0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v2, v3, :cond_2

    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v2, v3, :cond_2

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v2, v3, :cond_2

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v2, v3, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_2

    :goto_0
    return v0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public static iterator(Ljava/lang/Object;I)Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I)",
            "Ljava/util/Iterator",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 1246
    if-nez p0, :cond_0

    .line 1247
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The date must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1249
    :cond_0
    instance-of v0, p0, Ljava/util/Date;

    if-eqz v0, :cond_1

    .line 1250
    check-cast p0, Ljava/util/Date;

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/time/DateUtils;->iterator(Ljava/util/Date;I)Ljava/util/Iterator;

    move-result-object v0

    .line 1252
    :goto_0
    return-object v0

    .line 1251
    :cond_1
    instance-of v0, p0, Ljava/util/Calendar;

    if-eqz v0, :cond_2

    .line 1252
    check-cast p0, Ljava/util/Calendar;

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/time/DateUtils;->iterator(Ljava/util/Calendar;I)Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0

    .line 1254
    :cond_2
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not iterate based on "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static iterator(Ljava/util/Calendar;I)Ljava/util/Iterator;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Calendar;",
            "I)",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Calendar;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, -0x1

    const/4 v1, 0x2

    const/4 v7, 0x5

    const/4 v2, 0x1

    const/4 v3, 0x7

    .line 1156
    if-nez p0, :cond_0

    .line 1157
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The date must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1163
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 1206
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The range style "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not valid."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1167
    :pswitch_0
    invoke-static {p0, v1}, Lorg/apache/commons/lang3/time/DateUtils;->truncate(Ljava/util/Calendar;I)Ljava/util/Calendar;

    move-result-object v4

    .line 1169
    invoke-virtual {v4}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 1170
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 1171
    invoke-virtual {v0, v7, v8}, Ljava/util/Calendar;->add(II)V

    .line 1173
    const/4 v5, 0x6

    if-ne p1, v5, :cond_7

    move-object v5, v4

    move-object v4, v0

    move v0, v2

    .line 1208
    :goto_0
    if-gtz v1, :cond_1

    .line 1209
    add-int/lit8 v1, v1, 0x7

    .line 1211
    :cond_1
    if-le v1, v3, :cond_2

    .line 1212
    add-int/lit8 v1, v1, -0x7

    .line 1214
    :cond_2
    if-gtz v0, :cond_3

    .line 1215
    add-int/lit8 v0, v0, 0x7

    .line 1217
    :cond_3
    if-le v0, v3, :cond_4

    .line 1218
    add-int/lit8 v0, v0, -0x7

    .line 1220
    :cond_4
    :goto_1
    invoke-virtual {v5, v3}, Ljava/util/Calendar;->get(I)I

    move-result v6

    if-eq v6, v1, :cond_5

    .line 1221
    invoke-virtual {v5, v7, v8}, Ljava/util/Calendar;->add(II)V

    goto :goto_1

    .line 1183
    :pswitch_1
    invoke-static {p0, v7}, Lorg/apache/commons/lang3/time/DateUtils;->truncate(Ljava/util/Calendar;I)Ljava/util/Calendar;

    move-result-object v5

    .line 1184
    invoke-static {p0, v7}, Lorg/apache/commons/lang3/time/DateUtils;->truncate(Ljava/util/Calendar;I)Ljava/util/Calendar;

    move-result-object v4

    .line 1185
    packed-switch p1, :pswitch_data_1

    move v0, v3

    move v1, v2

    .line 1202
    goto :goto_0

    :pswitch_2
    move v0, v3

    move v1, v2

    .line 1188
    goto :goto_0

    :pswitch_3
    move v0, v2

    .line 1192
    goto :goto_0

    .line 1194
    :pswitch_4
    invoke-virtual {p0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 1195
    add-int/lit8 v0, v1, -0x1

    .line 1196
    goto :goto_0

    .line 1198
    :pswitch_5
    invoke-virtual {p0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/lit8 v1, v0, -0x3

    .line 1199
    invoke-virtual {p0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    .line 1200
    goto :goto_0

    .line 1223
    :cond_5
    :goto_2
    invoke-virtual {v4, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-eq v1, v0, :cond_6

    .line 1224
    invoke-virtual {v4, v7, v2}, Ljava/util/Calendar;->add(II)V

    goto :goto_2

    .line 1226
    :cond_6
    new-instance v0, Lorg/apache/commons/lang3/time/DateUtils$DateIterator;

    invoke-direct {v0, v5, v4}, Lorg/apache/commons/lang3/time/DateUtils$DateIterator;-><init>(Ljava/util/Calendar;Ljava/util/Calendar;)V

    return-object v0

    :cond_7
    move v1, v2

    move-object v5, v4

    move-object v4, v0

    move v0, v3

    goto :goto_0

    .line 1163
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 1185
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static iterator(Ljava/util/Date;I)Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            "I)",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Calendar;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1123
    if-nez p0, :cond_0

    .line 1124
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The date must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1126
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1127
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1128
    invoke-static {v0, p1}, Lorg/apache/commons/lang3/time/DateUtils;->iterator(Ljava/util/Calendar;I)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method private static modify(Ljava/util/Calendar;II)V
    .locals 11

    .prologue
    .line 958
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const v1, 0x10b07600

    if-le v0, v1, :cond_0

    .line 959
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Calendar value too large for accurate calculations"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 962
    :cond_0
    const/16 v0, 0xe

    if-ne p1, v0, :cond_2

    .line 1041
    :cond_1
    :goto_0
    return-void

    .line 972
    :cond_2
    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    .line 973
    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 974
    const/4 v0, 0x0

    .line 977
    const/16 v1, 0xe

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 978
    if-eqz p2, :cond_3

    const/16 v5, 0x1f4

    if-ge v1, v5, :cond_4

    .line 979
    :cond_3
    int-to-long v6, v1

    sub-long/2addr v2, v6

    .line 981
    :cond_4
    const/16 v1, 0xd

    if-ne p1, v1, :cond_5

    .line 982
    const/4 v0, 0x1

    .line 986
    :cond_5
    const/16 v1, 0xd

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 987
    if-nez v0, :cond_7

    if-eqz p2, :cond_6

    const/16 v5, 0x1e

    if-ge v1, v5, :cond_7

    .line 988
    :cond_6
    int-to-long v6, v1

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    sub-long/2addr v2, v6

    .line 990
    :cond_7
    const/16 v1, 0xc

    if-ne p1, v1, :cond_8

    .line 991
    const/4 v0, 0x1

    .line 995
    :cond_8
    const/16 v1, 0xc

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 996
    if-nez v0, :cond_1b

    if-eqz p2, :cond_9

    const/16 v0, 0x1e

    if-ge v1, v0, :cond_1b

    .line 997
    :cond_9
    int-to-long v0, v1

    const-wide/32 v6, 0xea60

    mul-long/2addr v0, v6

    sub-long v0, v2, v0

    .line 1001
    :goto_1
    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-eqz v2, :cond_a

    .line 1002
    invoke-virtual {v4, v0, v1}, Ljava/util/Date;->setTime(J)V

    .line 1003
    invoke-virtual {p0, v4}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1007
    :cond_a
    const/4 v1, 0x0

    .line 1008
    sget-object v4, Lorg/apache/commons/lang3/time/DateUtils;->fields:[[I

    array-length v5, v4

    const/4 v0, 0x0

    move v10, v0

    move v0, v1

    move v1, v10

    :goto_2
    if-ge v1, v5, :cond_1a

    aget-object v6, v4, v1

    .line 1009
    array-length v3, v6

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v3, :cond_11

    aget v7, v6, v2

    .line 1010
    if-ne v7, p1, :cond_10

    .line 1012
    const/4 v1, 0x2

    if-eq p2, v1, :cond_b

    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    if-eqz v0, :cond_1

    .line 1013
    :cond_b
    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_d

    .line 1017
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_c

    .line 1018
    const/4 v0, 0x5

    const/16 v1, 0xf

    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->add(II)V

    goto/16 :goto_0

    .line 1020
    :cond_c
    const/4 v0, 0x5

    const/16 v1, -0xf

    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->add(II)V

    .line 1021
    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->add(II)V

    goto/16 :goto_0

    .line 1024
    :cond_d
    const/16 v0, 0x9

    if-ne p1, v0, :cond_f

    .line 1028
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-nez v0, :cond_e

    .line 1029
    const/16 v0, 0xb

    const/16 v1, 0xc

    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->add(II)V

    goto/16 :goto_0

    .line 1031
    :cond_e
    const/16 v0, 0xb

    const/16 v1, -0xc

    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->add(II)V

    .line 1032
    const/4 v0, 0x5

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->add(II)V

    goto/16 :goto_0

    .line 1038
    :cond_f
    const/4 v0, 0x0

    aget v0, v6, v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->add(II)V

    goto/16 :goto_0

    .line 1009
    :cond_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1045
    :cond_11
    const/4 v3, 0x0

    .line 1046
    const/4 v2, 0x0

    .line 1048
    sparse-switch p1, :sswitch_data_0

    :cond_12
    move v10, v2

    move v2, v0

    move v0, v3

    move v3, v10

    .line 1080
    :goto_4
    if-nez v3, :cond_13

    .line 1081
    const/4 v0, 0x0

    aget v0, v6, v0

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->getActualMinimum(I)I

    move-result v0

    .line 1082
    const/4 v2, 0x0

    aget v2, v6, v2

    invoke-virtual {p0, v2}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v3

    .line 1084
    const/4 v2, 0x0

    aget v2, v6, v2

    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    sub-int/2addr v2, v0

    .line 1086
    sub-int v0, v3, v0

    div-int/lit8 v0, v0, 0x2

    if-le v2, v0, :cond_19

    const/4 v0, 0x1

    :goto_5
    move v10, v2

    move v2, v0

    move v0, v10

    .line 1089
    :cond_13
    if-eqz v0, :cond_14

    .line 1090
    const/4 v3, 0x0

    aget v3, v6, v3

    const/4 v7, 0x0

    aget v6, v6, v7

    invoke-virtual {p0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    sub-int v0, v6, v0

    invoke-virtual {p0, v3, v0}, Ljava/util/Calendar;->set(II)V

    .line 1008
    :cond_14
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v2

    goto/16 :goto_2

    .line 1050
    :sswitch_0
    const/4 v7, 0x0

    aget v7, v6, v7

    const/4 v8, 0x5

    if-ne v7, v8, :cond_12

    .line 1054
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/lit8 v3, v0, -0x1

    .line 1057
    const/16 v0, 0xf

    if-lt v3, v0, :cond_15

    .line 1058
    add-int/lit8 v3, v3, -0xf

    .line 1061
    :cond_15
    const/4 v0, 0x7

    if-le v3, v0, :cond_16

    const/4 v0, 0x1

    .line 1062
    :goto_6
    const/4 v2, 0x1

    move v10, v2

    move v2, v0

    move v0, v3

    move v3, v10

    goto :goto_4

    .line 1061
    :cond_16
    const/4 v0, 0x0

    goto :goto_6

    .line 1066
    :sswitch_1
    const/4 v7, 0x0

    aget v7, v6, v7

    const/16 v8, 0xb

    if-ne v7, v8, :cond_12

    .line 1069
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 1070
    const/16 v0, 0xc

    if-lt v3, v0, :cond_17

    .line 1071
    add-int/lit8 v3, v3, -0xc

    .line 1073
    :cond_17
    const/4 v0, 0x6

    if-lt v3, v0, :cond_18

    const/4 v0, 0x1

    .line 1074
    :goto_7
    const/4 v2, 0x1

    move v10, v2

    move v2, v0

    move v0, v3

    move v3, v10

    goto :goto_4

    .line 1073
    :cond_18
    const/4 v0, 0x0

    goto :goto_7

    .line 1086
    :cond_19
    const/4 v0, 0x0

    goto :goto_5

    .line 1093
    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The field "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1b
    move-wide v0, v2

    goto/16 :goto_1

    .line 1048
    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_1
        0x3e9 -> :sswitch_0
    .end sparse-switch
.end method

.method public static varargs parseDate(Ljava/lang/String;Ljava/util/Locale;[Ljava/lang/String;)Ljava/util/Date;
    .locals 1

    .prologue
    .line 291
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/time/DateUtils;->parseDateWithLeniency(Ljava/lang/String;Ljava/util/Locale;[Ljava/lang/String;Z)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static varargs parseDate(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Date;
    .locals 1

    .prologue
    .line 268
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lorg/apache/commons/lang3/time/DateUtils;->parseDate(Ljava/lang/String;Ljava/util/Locale;[Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static varargs parseDateStrictly(Ljava/lang/String;Ljava/util/Locale;[Ljava/lang/String;)Ljava/util/Date;
    .locals 2

    .prologue
    .line 333
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, p2, v1}, Lorg/apache/commons/lang3/time/DateUtils;->parseDateWithLeniency(Ljava/lang/String;Ljava/util/Locale;[Ljava/lang/String;Z)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static varargs parseDateStrictly(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Date;
    .locals 1

    .prologue
    .line 311
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lorg/apache/commons/lang3/time/DateUtils;->parseDateStrictly(Ljava/lang/String;Ljava/util/Locale;[Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method private static parseDateWithLeniency(Ljava/lang/String;Ljava/util/Locale;[Ljava/lang/String;Z)Ljava/util/Date;
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 355
    if-eqz p0, :cond_0

    if-nez p2, :cond_1

    .line 356
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Date and Patterns must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 360
    :cond_1
    if-nez p1, :cond_2

    .line 361
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0}, Ljava/text/SimpleDateFormat;-><init>()V

    .line 366
    :goto_0
    invoke-virtual {v0, p3}, Ljava/text/SimpleDateFormat;->setLenient(Z)V

    .line 367
    new-instance v5, Ljava/text/ParsePosition;

    invoke-direct {v5, v4}, Ljava/text/ParsePosition;-><init>(I)V

    .line 368
    array-length v6, p2

    move v3, v4

    :goto_1
    if-ge v3, v6, :cond_4

    aget-object v2, p2, v3

    .line 373
    const-string v1, "ZZ"

    invoke-virtual {v2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 374
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v2, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 377
    :goto_2
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    .line 378
    invoke-virtual {v5, v4}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 382
    const-string v1, "ZZ"

    invoke-virtual {v2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 383
    const-string v1, "([-+][0-9][0-9]):([0-9][0-9])$"

    const-string v2, "$1$2"

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 386
    :goto_3
    invoke-virtual {v0, v1, v5}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v2

    .line 387
    if-eqz v2, :cond_3

    invoke-virtual {v5}, Ljava/text/ParsePosition;->getIndex()I

    move-result v7

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v7, v1, :cond_3

    .line 388
    return-object v2

    .line 363
    :cond_2
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, ""

    invoke-direct {v0, v1, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    goto :goto_0

    .line 368
    :cond_3
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_1

    .line 391
    :cond_4
    new-instance v0, Ljava/text/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to parse the date: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_5
    move-object v1, p0

    goto :goto_3

    :cond_6
    move-object v1, v2

    goto :goto_2
.end method

.method public static round(Ljava/util/Calendar;I)Ljava/util/Calendar;
    .locals 2

    .prologue
    .line 738
    if-nez p0, :cond_0

    .line 739
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The date must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 741
    :cond_0
    invoke-virtual {p0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 742
    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lorg/apache/commons/lang3/time/DateUtils;->modify(Ljava/util/Calendar;II)V

    .line 743
    return-object v0
.end method

.method public static round(Ljava/lang/Object;I)Ljava/util/Date;
    .locals 3

    .prologue
    .line 775
    if-nez p0, :cond_0

    .line 776
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The date must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 778
    :cond_0
    instance-of v0, p0, Ljava/util/Date;

    if-eqz v0, :cond_1

    .line 779
    check-cast p0, Ljava/util/Date;

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/time/DateUtils;->round(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object v0

    .line 781
    :goto_0
    return-object v0

    .line 780
    :cond_1
    instance-of v0, p0, Ljava/util/Calendar;

    if-eqz v0, :cond_2

    .line 781
    check-cast p0, Ljava/util/Calendar;

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/time/DateUtils;->round(Ljava/util/Calendar;I)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    goto :goto_0

    .line 783
    :cond_2
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not round "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static round(Ljava/util/Date;I)Ljava/util/Date;
    .locals 2

    .prologue
    .line 701
    if-nez p0, :cond_0

    .line 702
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The date must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 704
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 705
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 706
    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lorg/apache/commons/lang3/time/DateUtils;->modify(Ljava/util/Calendar;II)V

    .line 707
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method private static set(Ljava/util/Date;II)Ljava/util/Date;
    .locals 2

    .prologue
    .line 647
    if-nez p0, :cond_0

    .line 648
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The date must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 651
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 652
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setLenient(Z)V

    .line 653
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 654
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->set(II)V

    .line 655
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static setDays(Ljava/util/Date;I)Ljava/util/Date;
    .locals 1

    .prologue
    .line 569
    const/4 v0, 0x5

    invoke-static {p0, v0, p1}, Lorg/apache/commons/lang3/time/DateUtils;->set(Ljava/util/Date;II)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static setHours(Ljava/util/Date;I)Ljava/util/Date;
    .locals 1

    .prologue
    .line 585
    const/16 v0, 0xb

    invoke-static {p0, v0, p1}, Lorg/apache/commons/lang3/time/DateUtils;->set(Ljava/util/Date;II)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static setMilliseconds(Ljava/util/Date;I)Ljava/util/Date;
    .locals 1

    .prologue
    .line 630
    const/16 v0, 0xe

    invoke-static {p0, v0, p1}, Lorg/apache/commons/lang3/time/DateUtils;->set(Ljava/util/Date;II)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static setMinutes(Ljava/util/Date;I)Ljava/util/Date;
    .locals 1

    .prologue
    .line 600
    const/16 v0, 0xc

    invoke-static {p0, v0, p1}, Lorg/apache/commons/lang3/time/DateUtils;->set(Ljava/util/Date;II)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static setMonths(Ljava/util/Date;I)Ljava/util/Date;
    .locals 1

    .prologue
    .line 554
    const/4 v0, 0x2

    invoke-static {p0, v0, p1}, Lorg/apache/commons/lang3/time/DateUtils;->set(Ljava/util/Date;II)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static setSeconds(Ljava/util/Date;I)Ljava/util/Date;
    .locals 1

    .prologue
    .line 615
    const/16 v0, 0xd

    invoke-static {p0, v0, p1}, Lorg/apache/commons/lang3/time/DateUtils;->set(Ljava/util/Date;II)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static setYears(Ljava/util/Date;I)Ljava/util/Date;
    .locals 1

    .prologue
    .line 539
    const/4 v0, 0x1

    invoke-static {p0, v0, p1}, Lorg/apache/commons/lang3/time/DateUtils;->set(Ljava/util/Date;II)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static toCalendar(Ljava/util/Date;)Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 668
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 669
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 670
    return-object v0
.end method

.method public static truncate(Ljava/util/Calendar;I)Ljava/util/Calendar;
    .locals 2

    .prologue
    .line 829
    if-nez p0, :cond_0

    .line 830
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The date must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 832
    :cond_0
    invoke-virtual {p0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 833
    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lorg/apache/commons/lang3/time/DateUtils;->modify(Ljava/util/Calendar;II)V

    .line 834
    return-object v0
.end method

.method public static truncate(Ljava/lang/Object;I)Ljava/util/Date;
    .locals 3

    .prologue
    .line 854
    if-nez p0, :cond_0

    .line 855
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The date must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 857
    :cond_0
    instance-of v0, p0, Ljava/util/Date;

    if-eqz v0, :cond_1

    .line 858
    check-cast p0, Ljava/util/Date;

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/time/DateUtils;->truncate(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object v0

    .line 860
    :goto_0
    return-object v0

    .line 859
    :cond_1
    instance-of v0, p0, Ljava/util/Calendar;

    if-eqz v0, :cond_2

    .line 860
    check-cast p0, Ljava/util/Calendar;

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/time/DateUtils;->truncate(Ljava/util/Calendar;I)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    goto :goto_0

    .line 862
    :cond_2
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not truncate "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static truncate(Ljava/util/Date;I)Ljava/util/Date;
    .locals 2

    .prologue
    .line 804
    if-nez p0, :cond_0

    .line 805
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The date must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 807
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 808
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 809
    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lorg/apache/commons/lang3/time/DateUtils;->modify(Ljava/util/Calendar;II)V

    .line 810
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static truncatedCompareTo(Ljava/util/Calendar;Ljava/util/Calendar;I)I
    .locals 2

    .prologue
    .line 1762
    invoke-static {p0, p2}, Lorg/apache/commons/lang3/time/DateUtils;->truncate(Ljava/util/Calendar;I)Ljava/util/Calendar;

    move-result-object v0

    .line 1763
    invoke-static {p1, p2}, Lorg/apache/commons/lang3/time/DateUtils;->truncate(Ljava/util/Calendar;I)Ljava/util/Calendar;

    move-result-object v1

    .line 1764
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v0

    return v0
.end method

.method public static truncatedCompareTo(Ljava/util/Date;Ljava/util/Date;I)I
    .locals 2

    .prologue
    .line 1782
    invoke-static {p0, p2}, Lorg/apache/commons/lang3/time/DateUtils;->truncate(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object v0

    .line 1783
    invoke-static {p1, p2}, Lorg/apache/commons/lang3/time/DateUtils;->truncate(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object v1

    .line 1784
    invoke-virtual {v0, v1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v0

    return v0
.end method

.method public static truncatedEquals(Ljava/util/Calendar;Ljava/util/Calendar;I)Z
    .locals 1

    .prologue
    .line 1727
    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/time/DateUtils;->truncatedCompareTo(Ljava/util/Calendar;Ljava/util/Calendar;I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static truncatedEquals(Ljava/util/Date;Ljava/util/Date;I)Z
    .locals 1

    .prologue
    .line 1744
    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/time/DateUtils;->truncatedCompareTo(Ljava/util/Date;Ljava/util/Date;I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
