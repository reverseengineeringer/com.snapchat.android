.class public final Landroid/support/v4/util/TimeUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final HUNDRED_DAY_FIELD_LEN:I = 0x13

.field private static final SECONDS_PER_DAY:I = 0x15180

.field private static final SECONDS_PER_HOUR:I = 0xe10

.field private static final SECONDS_PER_MINUTE:I = 0x3c

.field private static sFormatStr:[C

.field private static final sFormatSync:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/support/v4/util/TimeUtils;->sFormatSync:Ljava/lang/Object;

    .line 36
    const/16 v0, 0x18

    new-array v0, v0, [C

    sput-object v0, Landroid/support/v4/util/TimeUtils;->sFormatStr:[C

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static accumField(IIZI)I
    .locals 1

    .prologue
    .line 39
    const/16 v0, 0x63

    if-gt p0, v0, :cond_0

    if-eqz p2, :cond_1

    const/4 v0, 0x3

    if-lt p3, v0, :cond_1

    .line 40
    :cond_0
    add-int/lit8 v0, p1, 0x3

    .line 48
    :goto_0
    return v0

    .line 42
    :cond_1
    const/16 v0, 0x9

    if-gt p0, v0, :cond_2

    if-eqz p2, :cond_3

    const/4 v0, 0x2

    if-lt p3, v0, :cond_3

    .line 43
    :cond_2
    add-int/lit8 v0, p1, 0x2

    goto :goto_0

    .line 45
    :cond_3
    if-nez p2, :cond_4

    if-lez p0, :cond_5

    .line 46
    :cond_4
    add-int/lit8 v0, p1, 0x1

    goto :goto_0

    .line 48
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static formatDuration(JJLjava/io/PrintWriter;)V
    .locals 2

    .prologue
    .line 169
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    .line 170
    const-string v0, "--"

    invoke-virtual {p4, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 174
    :goto_0
    return-void

    .line 173
    :cond_0
    sub-long v0, p0, p2

    invoke-static {v0, v1, p4}, Landroid/support/v4/util/TimeUtils;->formatDuration$112769eb(JLjava/io/PrintWriter;)V

    goto :goto_0
.end method

.method public static formatDuration(JLjava/io/PrintWriter;)V
    .locals 0

    .prologue
    .line 164
    invoke-static {p0, p1, p2}, Landroid/support/v4/util/TimeUtils;->formatDuration$112769eb(JLjava/io/PrintWriter;)V

    .line 165
    return-void
.end method

.method private static formatDuration(JLjava/lang/StringBuilder;)V
    .locals 4

    .prologue
    .line 148
    sget-object v1, Landroid/support/v4/util/TimeUtils;->sFormatSync:Ljava/lang/Object;

    monitor-enter v1

    .line 149
    :try_start_0
    invoke-static {p0, p1}, Landroid/support/v4/util/TimeUtils;->formatDurationLocked$25666e7(J)I

    move-result v0

    .line 150
    sget-object v2, Landroid/support/v4/util/TimeUtils;->sFormatStr:[C

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3, v0}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 151
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static formatDuration$112769eb(JLjava/io/PrintWriter;)V
    .locals 6

    .prologue
    .line 156
    sget-object v1, Landroid/support/v4/util/TimeUtils;->sFormatSync:Ljava/lang/Object;

    monitor-enter v1

    .line 157
    :try_start_0
    invoke-static {p0, p1}, Landroid/support/v4/util/TimeUtils;->formatDurationLocked$25666e7(J)I

    move-result v0

    .line 158
    new-instance v2, Ljava/lang/String;

    sget-object v3, Landroid/support/v4/util/TimeUtils;->sFormatStr:[C

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4, v0}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 159
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static formatDurationLocked$25666e7(J)I
    .locals 14

    .prologue
    const/16 v13, 0x73

    const/16 v12, 0x6d

    const v5, 0x15180

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 76
    sget-object v0, Landroid/support/v4/util/TimeUtils;->sFormatStr:[C

    array-length v0, v0

    if-gez v0, :cond_0

    .line 77
    new-array v0, v2, [C

    sput-object v0, Landroid/support/v4/util/TimeUtils;->sFormatStr:[C

    .line 80
    :cond_0
    sget-object v7, Landroid/support/v4/util/TimeUtils;->sFormatStr:[C

    .line 82
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-nez v0, :cond_1

    .line 83
    const/16 v0, 0x30

    aput-char v0, v7, v2

    .line 143
    :goto_0
    return v4

    .line 93
    :cond_1
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-lez v0, :cond_3

    .line 94
    const/16 v0, 0x2b

    .line 100
    :goto_1
    const-wide/16 v8, 0x3e8

    rem-long v8, p0, v8

    long-to-int v8, v8

    .line 101
    const-wide/16 v10, 0x3e8

    div-long v10, p0, v10

    long-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    move-result-wide v10

    double-to-int v3, v10

    .line 104
    if-le v3, v5, :cond_8

    .line 105
    div-int v1, v3, v5

    .line 106
    mul-int/2addr v5, v1

    sub-int/2addr v3, v5

    move v6, v1

    .line 108
    :goto_2
    const/16 v1, 0xe10

    if-le v3, v1, :cond_7

    .line 109
    div-int/lit16 v1, v3, 0xe10

    .line 110
    mul-int/lit16 v5, v1, 0xe10

    sub-int/2addr v3, v5

    move v5, v1

    .line 112
    :goto_3
    const/16 v1, 0x3c

    if-le v3, v1, :cond_6

    .line 113
    div-int/lit8 v1, v3, 0x3c

    .line 114
    mul-int/lit8 v9, v1, 0x3c

    sub-int/2addr v3, v9

    .line 117
    :goto_4
    aput-char v0, v7, v2

    .line 133
    const/16 v0, 0x64

    invoke-static {v7, v6, v0, v4, v2}, Landroid/support/v4/util/TimeUtils;->printField$6419d3d2([CICIZ)I

    move-result v6

    .line 138
    const/16 v9, 0x68

    if-eq v6, v4, :cond_4

    move v0, v4

    :goto_5
    invoke-static {v7, v5, v9, v6, v0}, Landroid/support/v4/util/TimeUtils;->printField$6419d3d2([CICIZ)I

    move-result v5

    .line 139
    if-eq v5, v4, :cond_5

    move v0, v4

    :goto_6
    invoke-static {v7, v1, v12, v5, v0}, Landroid/support/v4/util/TimeUtils;->printField$6419d3d2([CICIZ)I

    move-result v0

    .line 140
    if-eq v0, v4, :cond_2

    move v2, v4

    :cond_2
    invoke-static {v7, v3, v13, v0, v2}, Landroid/support/v4/util/TimeUtils;->printField$6419d3d2([CICIZ)I

    move-result v0

    .line 141
    invoke-static {v7, v8, v12, v0, v4}, Landroid/support/v4/util/TimeUtils;->printField$6419d3d2([CICIZ)I

    move-result v0

    .line 142
    aput-char v13, v7, v0

    .line 143
    add-int/lit8 v4, v0, 0x1

    goto :goto_0

    .line 96
    :cond_3
    const/16 v0, 0x2d

    .line 97
    neg-long p0, p0

    goto :goto_1

    :cond_4
    move v0, v2

    .line 138
    goto :goto_5

    :cond_5
    move v0, v2

    .line 139
    goto :goto_6

    :cond_6
    move v1, v2

    goto :goto_4

    :cond_7
    move v5, v2

    goto :goto_3

    :cond_8
    move v6, v2

    goto :goto_2
.end method

.method private static printField$6419d3d2([CICIZ)I
    .locals 4

    .prologue
    .line 53
    if-nez p4, :cond_0

    if-lez p1, :cond_3

    .line 55
    :cond_0
    const/16 v0, 0x63

    if-le p1, v0, :cond_4

    .line 56
    div-int/lit8 v1, p1, 0x64

    .line 57
    add-int/lit8 v0, v1, 0x30

    int-to-char v0, v0

    aput-char v0, p0, p3

    .line 58
    add-int/lit8 v0, p3, 0x1

    .line 59
    mul-int/lit8 v1, v1, 0x64

    sub-int v1, p1, v1

    .line 61
    :goto_0
    const/16 v2, 0x9

    if-gt v1, v2, :cond_1

    if-eq p3, v0, :cond_2

    .line 62
    :cond_1
    div-int/lit8 v2, v1, 0xa

    .line 63
    add-int/lit8 v3, v2, 0x30

    int-to-char v3, v3

    aput-char v3, p0, v0

    .line 64
    add-int/lit8 v0, v0, 0x1

    .line 65
    mul-int/lit8 v2, v2, 0xa

    sub-int/2addr v1, v2

    .line 67
    :cond_2
    add-int/lit8 v1, v1, 0x30

    int-to-char v1, v1

    aput-char v1, p0, v0

    .line 68
    add-int/lit8 v0, v0, 0x1

    .line 69
    aput-char p2, p0, v0

    .line 70
    add-int/lit8 p3, v0, 0x1

    .line 72
    :cond_3
    return p3

    :cond_4
    move v0, p3

    move v1, p1

    goto :goto_0
.end method
