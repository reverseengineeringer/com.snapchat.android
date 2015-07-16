.class final Lcjj;
.super Lcji;
.source "SourceFile"

# interfaces
.implements Lcjp;
.implements Lcjt;


# static fields
.field static final a:Lcjj;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    new-instance v0, Lcjj;

    invoke-direct {v0}, Lcjj;-><init>()V

    sput-object v0, Lcjj;->a:Lcjj;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcji;-><init>()V

    .line 50
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)J
    .locals 2

    .prologue
    .line 121
    check-cast p1, Ljava/util/Calendar;

    .line 122
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public final a()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 132
    const-class v0, Ljava/util/Calendar;

    return-object v0
.end method

.method public final b(Ljava/lang/Object;)Lchg;
    .locals 6

    .prologue
    .line 68
    check-cast p1, Ljava/util/Calendar;

    .line 72
    :try_start_0
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Lchl;->a(Ljava/util/TimeZone;)Lchl;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 79
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".BuddhistCalendar"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lciv;->b(Lchl;)Lciv;

    move-result-object v0

    :goto_1
    return-object v0

    .line 77
    :catch_0
    move-exception v0

    invoke-static {}, Lchl;->a()Lchl;

    move-result-object v0

    goto :goto_0

    .line 79
    :cond_0
    instance-of v1, p1, Ljava/util/GregorianCalendar;

    if-eqz v1, :cond_3

    check-cast p1, Ljava/util/GregorianCalendar;

    invoke-virtual {p1}, Ljava/util/GregorianCalendar;->getGregorianChange()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    invoke-static {v0}, Lcjc;->b(Lchl;)Lcjc;

    move-result-object v0

    goto :goto_1

    :cond_1
    const-wide v4, 0x7fffffffffffffffL

    cmp-long v1, v2, v4

    if-nez v1, :cond_2

    invoke-static {v0}, Lcjf;->b(Lchl;)Lcjf;

    move-result-object v0

    goto :goto_1

    :cond_2
    invoke-static {v0, v2, v3}, Lciw;->a(Lchl;J)Lciw;

    move-result-object v0

    goto :goto_1

    :cond_3
    invoke-static {v0}, Lcjd;->b(Lchl;)Lcjd;

    move-result-object v0

    goto :goto_1
.end method
