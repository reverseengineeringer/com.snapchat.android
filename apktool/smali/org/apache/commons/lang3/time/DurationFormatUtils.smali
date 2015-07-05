.class public Lorg/apache/commons/lang3/time/DurationFormatUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;
    }
.end annotation


# static fields
.field static final H:Ljava/lang/Object;

.field public static final ISO_EXTENDED_FORMAT_PATTERN:Ljava/lang/String; = "\'P\'yyyy\'Y\'M\'M\'d\'DT\'H\'H\'m\'M\'s.S\'S\'"

.field static final M:Ljava/lang/Object;

.field static final S:Ljava/lang/Object;

.field static final d:Ljava/lang/Object;

.field static final m:Ljava/lang/Object;

.field static final s:Ljava/lang/Object;

.field static final y:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 466
    const-string v0, "y"

    sput-object v0, Lorg/apache/commons/lang3/time/DurationFormatUtils;->y:Ljava/lang/Object;

    .line 467
    const-string v0, "M"

    sput-object v0, Lorg/apache/commons/lang3/time/DurationFormatUtils;->M:Ljava/lang/Object;

    .line 468
    const-string v0, "d"

    sput-object v0, Lorg/apache/commons/lang3/time/DurationFormatUtils;->d:Ljava/lang/Object;

    .line 469
    const-string v0, "H"

    sput-object v0, Lorg/apache/commons/lang3/time/DurationFormatUtils;->H:Ljava/lang/Object;

    .line 470
    const-string v0, "m"

    sput-object v0, Lorg/apache/commons/lang3/time/DurationFormatUtils;->m:Ljava/lang/Object;

    .line 471
    const-string v0, "s"

    sput-object v0, Lorg/apache/commons/lang3/time/DurationFormatUtils;->s:Ljava/lang/Object;

    .line 472
    const-string v0, "S"

    sput-object v0, Lorg/apache/commons/lang3/time/DurationFormatUtils;->S:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    return-void
.end method

.method static format([Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;JJJJJJJZ)Ljava/lang/String;
    .locals 11

    .prologue
    .line 417
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 418
    const/4 v4, 0x0

    .line 419
    array-length v6, p0

    .line 420
    const/4 v3, 0x0

    move v10, v3

    move v3, v4

    move v4, v10

    :goto_0
    if-ge v4, v6, :cond_a

    .line 421
    aget-object v7, p0, v4

    .line 422
    invoke-virtual {v7}, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->getValue()Ljava/lang/Object;

    move-result-object v8

    .line 423
    invoke-virtual {v7}, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->getCount()I

    move-result v7

    .line 424
    instance-of v9, v8, Ljava/lang/StringBuilder;

    if-eqz v9, :cond_1

    .line 425
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 420
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 427
    :cond_1
    sget-object v9, Lorg/apache/commons/lang3/time/DurationFormatUtils;->y:Ljava/lang/Object;

    if-ne v8, v9, :cond_2

    .line 428
    move/from16 v0, p15

    invoke-static {p1, p2, v0, v7}, Lorg/apache/commons/lang3/time/DurationFormatUtils;->paddedValue(JZI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    :goto_2
    const/4 v3, 0x0

    goto :goto_1

    .line 430
    :cond_2
    sget-object v9, Lorg/apache/commons/lang3/time/DurationFormatUtils;->M:Ljava/lang/Object;

    if-ne v8, v9, :cond_3

    .line 431
    move/from16 v0, p15

    invoke-static {p3, p4, v0, v7}, Lorg/apache/commons/lang3/time/DurationFormatUtils;->paddedValue(JZI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 433
    :cond_3
    sget-object v9, Lorg/apache/commons/lang3/time/DurationFormatUtils;->d:Ljava/lang/Object;

    if-ne v8, v9, :cond_4

    .line 434
    move-wide/from16 v0, p5

    move/from16 v2, p15

    invoke-static {v0, v1, v2, v7}, Lorg/apache/commons/lang3/time/DurationFormatUtils;->paddedValue(JZI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 436
    :cond_4
    sget-object v9, Lorg/apache/commons/lang3/time/DurationFormatUtils;->H:Ljava/lang/Object;

    if-ne v8, v9, :cond_5

    .line 437
    move-wide/from16 v0, p7

    move/from16 v2, p15

    invoke-static {v0, v1, v2, v7}, Lorg/apache/commons/lang3/time/DurationFormatUtils;->paddedValue(JZI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 439
    :cond_5
    sget-object v9, Lorg/apache/commons/lang3/time/DurationFormatUtils;->m:Ljava/lang/Object;

    if-ne v8, v9, :cond_6

    .line 440
    move-wide/from16 v0, p9

    move/from16 v2, p15

    invoke-static {v0, v1, v2, v7}, Lorg/apache/commons/lang3/time/DurationFormatUtils;->paddedValue(JZI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 442
    :cond_6
    sget-object v9, Lorg/apache/commons/lang3/time/DurationFormatUtils;->s:Ljava/lang/Object;

    if-ne v8, v9, :cond_7

    .line 443
    move-wide/from16 v0, p11

    move/from16 v2, p15

    invoke-static {v0, v1, v2, v7}, Lorg/apache/commons/lang3/time/DurationFormatUtils;->paddedValue(JZI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    const/4 v3, 0x1

    goto :goto_1

    .line 445
    :cond_7
    sget-object v9, Lorg/apache/commons/lang3/time/DurationFormatUtils;->S:Ljava/lang/Object;

    if-ne v8, v9, :cond_0

    .line 446
    if-eqz v3, :cond_9

    .line 448
    if-eqz p15, :cond_8

    const/4 v3, 0x3

    invoke-static {v3, v7}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 449
    :goto_3
    const/4 v7, 0x1

    move-wide/from16 v0, p13

    invoke-static {v0, v1, v7, v3}, Lorg/apache/commons/lang3/time/DurationFormatUtils;->paddedValue(JZI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 448
    :cond_8
    const/4 v3, 0x3

    goto :goto_3

    .line 451
    :cond_9
    move-wide/from16 v0, p13

    move/from16 v2, p15

    invoke-static {v0, v1, v2, v7}, Lorg/apache/commons/lang3/time/DurationFormatUtils;->paddedValue(JZI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 457
    :cond_a
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static formatDuration(JLjava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 111
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/time/DurationFormatUtils;->formatDuration(JLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatDuration(JLjava/lang/String;Z)Ljava/lang/String;
    .locals 18

    .prologue
    .line 128
    invoke-static/range {p2 .. p2}, Lorg/apache/commons/lang3/time/DurationFormatUtils;->lexx(Ljava/lang/String;)[Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;

    move-result-object v1

    .line 130
    const-wide/16 v6, 0x0

    .line 131
    const-wide/16 v8, 0x0

    .line 132
    const-wide/16 v10, 0x0

    .line 133
    const-wide/16 v12, 0x0

    .line 136
    sget-object v0, Lorg/apache/commons/lang3/time/DurationFormatUtils;->d:Ljava/lang/Object;

    invoke-static {v1, v0}, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->containsTokenWithValue([Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    const-wide/32 v2, 0x5265c00

    div-long v6, p0, v2

    .line 138
    const-wide/32 v2, 0x5265c00

    mul-long/2addr v2, v6

    sub-long p0, p0, v2

    .line 140
    :cond_0
    sget-object v0, Lorg/apache/commons/lang3/time/DurationFormatUtils;->H:Ljava/lang/Object;

    invoke-static {v1, v0}, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->containsTokenWithValue([Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 141
    const-wide/32 v2, 0x36ee80

    div-long v8, p0, v2

    .line 142
    const-wide/32 v2, 0x36ee80

    mul-long/2addr v2, v8

    sub-long p0, p0, v2

    .line 144
    :cond_1
    sget-object v0, Lorg/apache/commons/lang3/time/DurationFormatUtils;->m:Ljava/lang/Object;

    invoke-static {v1, v0}, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->containsTokenWithValue([Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 145
    const-wide/32 v2, 0xea60

    div-long v10, p0, v2

    .line 146
    const-wide/32 v2, 0xea60

    mul-long/2addr v2, v10

    sub-long p0, p0, v2

    .line 148
    :cond_2
    sget-object v0, Lorg/apache/commons/lang3/time/DurationFormatUtils;->s:Ljava/lang/Object;

    invoke-static {v1, v0}, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->containsTokenWithValue([Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 149
    const-wide/16 v2, 0x3e8

    div-long v12, p0, v2

    .line 150
    const-wide/16 v2, 0x3e8

    mul-long/2addr v2, v12

    sub-long v14, p0, v2

    .line 153
    :goto_0
    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    move/from16 v16, p3

    invoke-static/range {v1 .. v16}, Lorg/apache/commons/lang3/time/DurationFormatUtils;->format([Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;JJJJJJJZ)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    move-wide/from16 v14, p0

    goto :goto_0
.end method

.method public static formatDurationHMS(J)Ljava/lang/String;
    .locals 2

    .prologue
    .line 82
    const-string v0, "H:mm:ss.SSS"

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/time/DurationFormatUtils;->formatDuration(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatDurationISO(J)Ljava/lang/String;
    .locals 2

    .prologue
    .line 97
    const-string v0, "\'P\'yyyy\'Y\'M\'M\'d\'DT\'H\'H\'m\'M\'s.S\'S\'"

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang3/time/DurationFormatUtils;->formatDuration(JLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatDurationWords(JZZ)Ljava/lang/String;
    .locals 4

    .prologue
    .line 175
    const-string v0, "d\' days \'H\' hours \'m\' minutes \'s\' seconds\'"

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/time/DurationFormatUtils;->formatDuration(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 176
    if-eqz p2, :cond_1

    .line 178
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 179
    const-string v0, " 0 days"

    const-string v2, ""

    invoke-static {v1, v0, v2}, Lorg/apache/commons/lang3/StringUtils;->replaceOnce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 180
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v2, v3, :cond_4

    .line 182
    const-string v1, " 0 hours"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lorg/apache/commons/lang3/StringUtils;->replaceOnce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 183
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 185
    const-string v0, " 0 minutes"

    const-string v2, ""

    invoke-static {v1, v0, v2}, Lorg/apache/commons/lang3/StringUtils;->replaceOnce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 187
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 188
    const-string v1, " 0 seconds"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lorg/apache/commons/lang3/StringUtils;->replaceOnce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 192
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    .line 194
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 197
    :cond_1
    if-eqz p3, :cond_2

    .line 198
    const-string v1, " 0 seconds"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lorg/apache/commons/lang3/StringUtils;->replaceOnce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 199
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v2, v3, :cond_2

    .line 201
    const-string v0, " 0 minutes"

    const-string v2, ""

    invoke-static {v1, v0, v2}, Lorg/apache/commons/lang3/StringUtils;->replaceOnce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 202
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v2, v3, :cond_3

    .line 204
    const-string v1, " 0 hours"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lorg/apache/commons/lang3/StringUtils;->replaceOnce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 205
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v2, v3, :cond_2

    .line 206
    const-string v0, " 0 days"

    const-string v2, ""

    invoke-static {v1, v0, v2}, Lorg/apache/commons/lang3/StringUtils;->replaceOnce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 212
    :cond_2
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 213
    const-string v1, " 1 seconds"

    const-string v2, " 1 second"

    invoke-static {v0, v1, v2}, Lorg/apache/commons/lang3/StringUtils;->replaceOnce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 214
    const-string v1, " 1 minutes"

    const-string v2, " 1 minute"

    invoke-static {v0, v1, v2}, Lorg/apache/commons/lang3/StringUtils;->replaceOnce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 215
    const-string v1, " 1 hours"

    const-string v2, " 1 hour"

    invoke-static {v0, v1, v2}, Lorg/apache/commons/lang3/StringUtils;->replaceOnce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 216
    const-string v1, " 1 days"

    const-string v2, " 1 day"

    invoke-static {v0, v1, v2}, Lorg/apache/commons/lang3/StringUtils;->replaceOnce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 217
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    move-object v0, v1

    goto :goto_1

    :cond_4
    move-object v0, v1

    goto/16 :goto_0
.end method

.method public static formatPeriod(JJLjava/lang/String;)Ljava/lang/String;
    .locals 8

    .prologue
    .line 244
    const/4 v5, 0x1

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v6

    move-wide v0, p0

    move-wide v2, p2

    move-object v4, p4

    invoke-static/range {v0 .. v6}, Lorg/apache/commons/lang3/time/DurationFormatUtils;->formatPeriod(JJLjava/lang/String;ZLjava/util/TimeZone;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatPeriod(JJLjava/lang/String;ZLjava/util/TimeZone;)Ljava/lang/String;
    .locals 20

    .prologue
    .line 279
    invoke-static/range {p4 .. p4}, Lorg/apache/commons/lang3/time/DurationFormatUtils;->lexx(Ljava/lang/String;)[Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;

    move-result-object v3

    .line 283
    invoke-static/range {p6 .. p6}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v6

    .line 284
    new-instance v2, Ljava/util/Date;

    move-wide/from16 v0, p0

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v6, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 285
    invoke-static/range {p6 .. p6}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v8

    .line 286
    new-instance v2, Ljava/util/Date;

    move-wide/from16 v0, p2

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v8, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 289
    const/16 v2, 0xe

    invoke-virtual {v8, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/16 v4, 0xe

    invoke-virtual {v6, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    sub-int v13, v2, v4

    .line 290
    const/16 v2, 0xd

    invoke-virtual {v8, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/16 v4, 0xd

    invoke-virtual {v6, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    sub-int v11, v2, v4

    .line 291
    const/16 v2, 0xc

    invoke-virtual {v8, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/16 v4, 0xc

    invoke-virtual {v6, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    sub-int v9, v2, v4

    .line 292
    const/16 v2, 0xb

    invoke-virtual {v8, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/16 v4, 0xb

    invoke-virtual {v6, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    sub-int v7, v2, v4

    .line 293
    const/4 v2, 0x5

    invoke-virtual {v8, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v4, 0x5

    invoke-virtual {v6, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    sub-int v4, v2, v4

    .line 294
    const/4 v2, 0x2

    invoke-virtual {v8, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v5, 0x2

    invoke-virtual {v6, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    sub-int v5, v2, v5

    .line 295
    const/4 v2, 0x1

    invoke-virtual {v8, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v10, 0x1

    invoke-virtual {v6, v10}, Ljava/util/Calendar;->get(I)I

    move-result v10

    sub-int/2addr v2, v10

    .line 298
    :goto_0
    if-gez v13, :cond_0

    .line 299
    add-int/lit16 v13, v13, 0x3e8

    .line 300
    add-int/lit8 v11, v11, -0x1

    goto :goto_0

    .line 302
    :cond_0
    :goto_1
    if-gez v11, :cond_1

    .line 303
    add-int/lit8 v11, v11, 0x3c

    .line 304
    add-int/lit8 v9, v9, -0x1

    goto :goto_1

    .line 306
    :cond_1
    :goto_2
    if-gez v9, :cond_2

    .line 307
    add-int/lit8 v9, v9, 0x3c

    .line 308
    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    .line 310
    :cond_2
    :goto_3
    if-gez v7, :cond_3

    .line 311
    add-int/lit8 v7, v7, 0x18

    .line 312
    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    .line 315
    :cond_3
    sget-object v10, Lorg/apache/commons/lang3/time/DurationFormatUtils;->M:Ljava/lang/Object;

    invoke-static {v3, v10}, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->containsTokenWithValue([Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    move/from16 v19, v5

    move v5, v4

    move/from16 v4, v19

    .line 316
    :goto_4
    if-gez v5, :cond_4

    .line 317
    const/4 v8, 0x5

    invoke-virtual {v6, v8}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v8

    add-int/2addr v5, v8

    .line 318
    add-int/lit8 v4, v4, -0x1

    .line 319
    const/4 v8, 0x2

    const/4 v10, 0x1

    invoke-virtual {v6, v8, v10}, Ljava/util/Calendar;->add(II)V

    goto :goto_4

    .line 322
    :cond_4
    :goto_5
    if-gez v4, :cond_5

    .line 323
    add-int/lit8 v4, v4, 0xc

    .line 324
    add-int/lit8 v2, v2, -0x1

    goto :goto_5

    .line 327
    :cond_5
    sget-object v6, Lorg/apache/commons/lang3/time/DurationFormatUtils;->y:Ljava/lang/Object;

    invoke-static {v3, v6}, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->containsTokenWithValue([Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c

    if-eqz v2, :cond_c

    .line 328
    :goto_6
    if-eqz v2, :cond_c

    .line 329
    mul-int/lit8 v2, v2, 0xc

    add-int/2addr v4, v2

    .line 330
    const/4 v2, 0x0

    goto :goto_6

    .line 336
    :cond_6
    sget-object v10, Lorg/apache/commons/lang3/time/DurationFormatUtils;->y:Ljava/lang/Object;

    invoke-static {v3, v10}, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->containsTokenWithValue([Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_a

    .line 337
    const/4 v2, 0x1

    invoke-virtual {v8, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 338
    if-gez v5, :cond_7

    .line 340
    add-int/lit8 v2, v2, -0x1

    .line 343
    :cond_7
    :goto_7
    const/4 v5, 0x1

    invoke-virtual {v6, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-eq v5, v2, :cond_9

    .line 344
    const/4 v5, 0x6

    invoke-virtual {v6, v5}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v5

    const/4 v10, 0x6

    invoke-virtual {v6, v10}, Ljava/util/Calendar;->get(I)I

    move-result v10

    sub-int/2addr v5, v10

    add-int/2addr v4, v5

    .line 347
    instance-of v5, v6, Ljava/util/GregorianCalendar;

    if-eqz v5, :cond_8

    const/4 v5, 0x2

    invoke-virtual {v6, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v10, 0x1

    if-ne v5, v10, :cond_8

    const/4 v5, 0x5

    invoke-virtual {v6, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/16 v10, 0x1d

    if-ne v5, v10, :cond_8

    .line 350
    add-int/lit8 v4, v4, 0x1

    .line 353
    :cond_8
    const/4 v5, 0x1

    const/4 v10, 0x1

    invoke-virtual {v6, v5, v10}, Ljava/util/Calendar;->add(II)V

    .line 355
    const/4 v5, 0x6

    invoke-virtual {v6, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    add-int/2addr v4, v5

    goto :goto_7

    .line 358
    :cond_9
    const/4 v2, 0x0

    .line 361
    :cond_a
    :goto_8
    const/4 v5, 0x2

    invoke-virtual {v6, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v10, 0x2

    invoke-virtual {v8, v10}, Ljava/util/Calendar;->get(I)I

    move-result v10

    if-eq v5, v10, :cond_b

    .line 362
    const/4 v5, 0x5

    invoke-virtual {v6, v5}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v5

    add-int/2addr v4, v5

    .line 363
    const/4 v5, 0x2

    const/4 v10, 0x1

    invoke-virtual {v6, v5, v10}, Ljava/util/Calendar;->add(II)V

    goto :goto_8

    .line 366
    :cond_b
    const/4 v5, 0x0

    move/from16 v19, v5

    move v5, v4

    move/from16 v4, v19

    .line 368
    :goto_9
    if-gez v5, :cond_c

    .line 369
    const/4 v8, 0x5

    invoke-virtual {v6, v8}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v8

    add-int/2addr v5, v8

    .line 370
    add-int/lit8 v4, v4, -0x1

    .line 371
    const/4 v8, 0x2

    const/4 v10, 0x1

    invoke-virtual {v6, v8, v10}, Ljava/util/Calendar;->add(II)V

    goto :goto_9

    :cond_c
    move v6, v4

    move v4, v5

    .line 380
    sget-object v5, Lorg/apache/commons/lang3/time/DurationFormatUtils;->d:Ljava/lang/Object;

    invoke-static {v3, v5}, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->containsTokenWithValue([Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_10

    .line 381
    mul-int/lit8 v4, v4, 0x18

    add-int v5, v7, v4

    .line 382
    const/4 v4, 0x0

    move v8, v4

    move v4, v5

    .line 384
    :goto_a
    sget-object v5, Lorg/apache/commons/lang3/time/DurationFormatUtils;->H:Ljava/lang/Object;

    invoke-static {v3, v5}, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->containsTokenWithValue([Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_f

    .line 385
    mul-int/lit8 v4, v4, 0x3c

    add-int v5, v9, v4

    .line 386
    const/4 v4, 0x0

    move v10, v4

    move v4, v5

    .line 388
    :goto_b
    sget-object v5, Lorg/apache/commons/lang3/time/DurationFormatUtils;->m:Ljava/lang/Object;

    invoke-static {v3, v5}, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->containsTokenWithValue([Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e

    .line 389
    mul-int/lit8 v4, v4, 0x3c

    add-int v5, v11, v4

    .line 390
    const/4 v4, 0x0

    move v12, v4

    move v4, v5

    .line 392
    :goto_c
    sget-object v5, Lorg/apache/commons/lang3/time/DurationFormatUtils;->s:Ljava/lang/Object;

    invoke-static {v3, v5}, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->containsTokenWithValue([Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d

    .line 393
    mul-int/lit16 v4, v4, 0x3e8

    add-int v5, v13, v4

    .line 394
    const/4 v4, 0x0

    move v14, v4

    move/from16 v16, v5

    .line 397
    :goto_d
    int-to-long v4, v2

    int-to-long v6, v6

    int-to-long v8, v8

    int-to-long v10, v10

    int-to-long v12, v12

    int-to-long v14, v14

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    move/from16 v18, p5

    invoke-static/range {v3 .. v18}, Lorg/apache/commons/lang3/time/DurationFormatUtils;->format([Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;JJJJJJJZ)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_d
    move v14, v4

    move/from16 v16, v13

    goto :goto_d

    :cond_e
    move v12, v4

    move v4, v11

    goto :goto_c

    :cond_f
    move v10, v4

    move v4, v9

    goto :goto_b

    :cond_10
    move v8, v4

    move v4, v7

    goto :goto_a
.end method

.method public static formatPeriodISO(JJ)Ljava/lang/String;
    .locals 8

    .prologue
    .line 231
    const-string v4, "\'P\'yyyy\'Y\'M\'M\'d\'DT\'H\'H\'m\'M\'s.S\'S\'"

    const/4 v5, 0x0

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v6

    move-wide v0, p0

    move-wide v2, p2

    invoke-static/range {v0 .. v6}, Lorg/apache/commons/lang3/time/DurationFormatUtils;->formatPeriod(JJLjava/lang/String;ZLjava/util/TimeZone;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static lexx(Ljava/lang/String;)[Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;
    .locals 9

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 481
    new-instance v7, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(I)V

    move v4, v5

    move-object v0, v2

    move-object v1, v2

    move v3, v5

    .line 488
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v4, v6, :cond_5

    .line 489
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 490
    if-eqz v3, :cond_1

    const/16 v8, 0x27

    if-eq v6, v8, :cond_1

    .line 491
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 488
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 495
    :cond_1
    sparse-switch v6, :sswitch_data_0

    .line 529
    if-nez v1, :cond_2

    .line 530
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 531
    new-instance v8, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;

    invoke-direct {v8, v1}, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 533
    :cond_2
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-object v6, v2

    .line 536
    :goto_2
    if-eqz v6, :cond_0

    .line 537
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v6, :cond_4

    .line 538
    invoke-virtual {v0}, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->increment()V

    :goto_3
    move-object v1, v2

    .line 544
    goto :goto_1

    .line 498
    :sswitch_0
    if-eqz v3, :cond_3

    move-object v6, v2

    move-object v1, v2

    move v3, v5

    .line 500
    goto :goto_2

    .line 502
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 503
    new-instance v3, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;

    invoke-direct {v3, v1}, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 504
    const/4 v3, 0x1

    move-object v6, v2

    .line 506
    goto :goto_2

    .line 508
    :sswitch_1
    sget-object v6, Lorg/apache/commons/lang3/time/DurationFormatUtils;->y:Ljava/lang/Object;

    goto :goto_2

    .line 511
    :sswitch_2
    sget-object v6, Lorg/apache/commons/lang3/time/DurationFormatUtils;->M:Ljava/lang/Object;

    goto :goto_2

    .line 514
    :sswitch_3
    sget-object v6, Lorg/apache/commons/lang3/time/DurationFormatUtils;->d:Ljava/lang/Object;

    goto :goto_2

    .line 517
    :sswitch_4
    sget-object v6, Lorg/apache/commons/lang3/time/DurationFormatUtils;->H:Ljava/lang/Object;

    goto :goto_2

    .line 520
    :sswitch_5
    sget-object v6, Lorg/apache/commons/lang3/time/DurationFormatUtils;->m:Ljava/lang/Object;

    goto :goto_2

    .line 523
    :sswitch_6
    sget-object v6, Lorg/apache/commons/lang3/time/DurationFormatUtils;->s:Ljava/lang/Object;

    goto :goto_2

    .line 526
    :sswitch_7
    sget-object v6, Lorg/apache/commons/lang3/time/DurationFormatUtils;->S:Ljava/lang/Object;

    goto :goto_2

    .line 540
    :cond_4
    new-instance v0, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;

    invoke-direct {v0, v6}, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;-><init>(Ljava/lang/Object;)V

    .line 541
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 547
    :cond_5
    if-eqz v3, :cond_6

    .line 548
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unmatched quote in format: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 550
    :cond_6
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;

    return-object v0

    .line 495
    :sswitch_data_0
    .sparse-switch
        0x27 -> :sswitch_0
        0x48 -> :sswitch_4
        0x4d -> :sswitch_2
        0x53 -> :sswitch_7
        0x64 -> :sswitch_3
        0x6d -> :sswitch_5
        0x73 -> :sswitch_6
        0x79 -> :sswitch_1
    .end sparse-switch
.end method

.method private static paddedValue(JZI)Ljava/lang/String;
    .locals 2

    .prologue
    .line 462
    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 463
    if-eqz p2, :cond_0

    const/16 v1, 0x30

    invoke-static {v0, p3, v1}, Lorg/apache/commons/lang3/StringUtils;->leftPad(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method
