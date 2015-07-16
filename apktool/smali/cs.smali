.class public final Lcs;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcc;
.end annotation

.annotation build Lcd;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcs$1;
    }
.end annotation


# instance fields
.field public a:Z

.field private final b:Lcu;

.field private c:J

.field private d:J


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 130
    invoke-static {}, Lcu;->b()Lcu;

    move-result-object v0

    invoke-direct {p0, v0}, Lcs;-><init>(Lcu;)V

    .line 131
    return-void
.end method

.method private constructor <init>(Lcu;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    const-string v0, "ticker"

    invoke-static {p1, v0}, Lco;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcu;

    iput-object v0, p0, Lcs;->b:Lcu;

    .line 142
    return-void
.end method

.method private c()J
    .locals 4

    .prologue
    .line 194
    iget-boolean v0, p0, Lcs;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcs;->b:Lcu;

    invoke-virtual {v0}, Lcu;->a()J

    move-result-wide v0

    iget-wide v2, p0, Lcs;->d:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcs;->c:J

    add-long/2addr v0, v2

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcs;->c:J

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/util/concurrent/TimeUnit;)J
    .locals 3

    .prologue
    .line 208
    invoke-direct {p0}, Lcs;->c()J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final a()Lcs;
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 160
    iget-boolean v0, p0, Lcs;->a:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    const-string v2, "This stopwatch is already running."

    invoke-static {v0, v2}, Lco;->b(ZLjava/lang/Object;)V

    .line 161
    iput-boolean v1, p0, Lcs;->a:Z

    .line 162
    iget-object v0, p0, Lcs;->b:Lcu;

    invoke-virtual {v0}, Lcu;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcs;->d:J

    .line 163
    return-object p0

    .line 160
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Lcs;
    .locals 6

    .prologue
    .line 174
    iget-object v0, p0, Lcs;->b:Lcu;

    invoke-virtual {v0}, Lcu;->a()J

    move-result-wide v0

    .line 175
    iget-boolean v2, p0, Lcs;->a:Z

    const-string v3, "This stopwatch is already stopped."

    invoke-static {v2, v3}, Lco;->b(ZLjava/lang/Object;)V

    .line 176
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcs;->a:Z

    .line 177
    iget-wide v2, p0, Lcs;->c:J

    iget-wide v4, p0, Lcs;->d:J

    sub-long/2addr v0, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcs;->c:J

    .line 178
    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6
    .annotation build Lce;
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    .line 216
    invoke-direct {p0}, Lcs;->c()J

    move-result-wide v2

    .line 218
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-lez v0, :cond_0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    .line 219
    :goto_0
    long-to-double v2, v2

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x1

    invoke-virtual {v1, v4, v5, v0}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    long-to-double v4, v4

    div-double/2addr v2, v4

    .line 222
    const-string v1, "%.4g %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v4, v5

    const/4 v2, 0x1

    sget-object v3, Lcs$1;->a:[I

    invoke-virtual {v0}, Ljava/util/concurrent/TimeUnit;->ordinal()I

    move-result v0

    aget v0, v3, v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 218
    :cond_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-lez v0, :cond_1

    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    goto :goto_0

    :cond_1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-lez v0, :cond_2

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    goto :goto_0

    :cond_2
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-lez v0, :cond_3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    goto :goto_0

    :cond_3
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-lez v0, :cond_4

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    goto :goto_0

    :cond_4
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-lez v0, :cond_5

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    goto :goto_0

    :cond_5
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    goto :goto_0

    .line 222
    :pswitch_0
    const-string v0, "ns"

    :goto_1
    aput-object v0, v4, v2

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_1
    const-string v0, "\u03bcs"

    goto :goto_1

    :pswitch_2
    const-string v0, "ms"

    goto :goto_1

    :pswitch_3
    const-string v0, "s"

    goto :goto_1

    :pswitch_4
    const-string v0, "min"

    goto :goto_1

    :pswitch_5
    const-string v0, "h"

    goto :goto_1

    :pswitch_6
    const-string v0, "d"

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
