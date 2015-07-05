.class public final Lzl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzj;


# instance fields
.field private final a:Lajx;

.field private final b:Lzn;

.field private final c:Lcom/squareup/otto/Bus;

.field private final d:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private e:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 41
    new-instance v0, Lajx;

    invoke-direct {v0}, Lajx;-><init>()V

    new-instance v1, Lzn;

    invoke-direct {v1}, Lzn;-><init>()V

    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lzl;-><init>(Lajx;Lzn;Lcom/squareup/otto/Bus;)V

    .line 42
    return-void
.end method

.method private constructor <init>(Lajx;Lzn;Lcom/squareup/otto/Bus;)V
    .locals 5
    .param p1    # Lajx;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Lzn;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p3    # Lcom/squareup/otto/Bus;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lzl;->d:Ljava/util/LinkedList;

    .line 38
    iput-boolean v4, p0, Lzl;->e:Z

    .line 48
    iput-object p1, p0, Lzl;->a:Lajx;

    .line 49
    iput-object p2, p0, Lzl;->b:Lzn;

    .line 50
    iput-object p3, p0, Lzl;->c:Lcom/squareup/otto/Bus;

    .line 51
    iget-object v0, p0, Lzl;->c:Lcom/squareup/otto/Bus;

    invoke-virtual {v0, p0}, Lcom/squareup/otto/Bus;->c(Ljava/lang/Object;)V

    .line 52
    const-string v0, "SwipeDownToExitTutorial"

    const-string v1, "Existing values: hasSeenSwipeDownTutorial:%b, hasSwipedDownInViewer:%b"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {}, Lajx;->bC()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x1

    invoke-static {}, Lajx;->bE()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 54
    return-void
.end method


# virtual methods
.method public final a(Laio;)V
    .locals 0
    .param p1    # Laio;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 82
    return-void
.end method

.method public final a(Laje;)V
    .locals 6
    .param p1    # Laje;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x1

    .line 64
    instance-of v0, p1, Lajr;

    if-eqz v0, :cond_0

    invoke-static {}, Lajx;->bE()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lzl;->e:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Laje;->Y()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lzl;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    int-to-long v2, v0

    const-wide/16 v4, 0x3

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    iget-object v0, p0, Lzl;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->peekLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v0, p0, Lzl;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x5dc

    cmp-long v0, v2, v4

    if-gtz v0, :cond_1

    move v0, v1

    :goto_0
    if-eqz v0, :cond_0

    .line 66
    iput-boolean v1, p0, Lzl;->e:Z

    .line 67
    iget-object v0, p0, Lzl;->b:Lzn;

    const v1, 0x7f0c0291

    invoke-virtual {v0, v1}, Lzn;->a(I)V

    .line 69
    :cond_0
    return-void

    .line 64
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Laje;Laio;)V
    .locals 1
    .param p1    # Laje;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Laio;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lzl;->e:Z

    .line 59
    iget-object v0, p0, Lzl;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 60
    return-void
.end method

.method public final a(Laje;Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;I)V
    .locals 1
    .param p1    # Laje;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 74
    sget-object v0, Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;->ABORT_REQUESTED:Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;

    if-ne p2, v0, :cond_0

    .line 75
    const/4 v0, 0x1

    invoke-static {v0}, Lajx;->z(Z)V

    .line 77
    :cond_0
    return-void
.end method

.method public final handleTapWhileViewingEvent(Lbej;)V
    .locals 4
    .annotation runtime Lboh;
    .end annotation

    .prologue
    .line 86
    iget-object v0, p0, Lzl;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x3

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 87
    iget-object v0, p0, Lzl;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 89
    :cond_0
    iget-object v0, p0, Lzl;->d:Ljava/util/LinkedList;

    iget-wide v2, p1, Lbej;->eventTimeMilliseconds:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 90
    return-void
.end method
