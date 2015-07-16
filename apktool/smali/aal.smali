.class public final Laal;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Laaj;


# instance fields
.field private final a:Lakr;

.field private final b:Laan;

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
    new-instance v0, Lakr;

    invoke-direct {v0}, Lakr;-><init>()V

    new-instance v1, Laan;

    invoke-direct {v1}, Laan;-><init>()V

    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Laal;-><init>(Lakr;Laan;Lcom/squareup/otto/Bus;)V

    .line 42
    return-void
.end method

.method private constructor <init>(Lakr;Laan;Lcom/squareup/otto/Bus;)V
    .locals 3
    .param p1    # Lakr;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Laan;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p3    # Lcom/squareup/otto/Bus;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Laal;->d:Ljava/util/LinkedList;

    .line 38
    iput-boolean v2, p0, Laal;->e:Z

    .line 48
    iput-object p1, p0, Laal;->a:Lakr;

    .line 49
    iput-object p2, p0, Laal;->b:Laan;

    .line 50
    iput-object p3, p0, Laal;->c:Lcom/squareup/otto/Bus;

    .line 51
    iget-object v0, p0, Laal;->c:Lcom/squareup/otto/Bus;

    invoke-virtual {v0, p0}, Lcom/squareup/otto/Bus;->c(Ljava/lang/Object;)V

    .line 52
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {}, Lakr;->bx()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, v2

    const/4 v1, 0x1

    invoke-static {}, Lakr;->bz()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    .line 54
    return-void
.end method


# virtual methods
.method public final a(Lajk;)V
    .locals 0
    .param p1    # Lajk;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 82
    return-void
.end method

.method public final a(Laka;Lajk;)V
    .locals 1
    .param p1    # Laka;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Lajk;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Laal;->e:Z

    .line 59
    iget-object v0, p0, Laal;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 60
    return-void
.end method

.method public final a(Laka;Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;I)V
    .locals 1
    .param p1    # Laka;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 74
    sget-object v0, Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;->ABORT_REQUESTED:Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;

    if-ne p2, v0, :cond_0

    .line 75
    const/4 v0, 0x1

    invoke-static {v0}, Lakr;->y(Z)V

    .line 77
    :cond_0
    return-void
.end method

.method public final d(Laka;)V
    .locals 6
    .param p1    # Laka;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x1

    .line 64
    instance-of v0, p1, Lakl;

    if-eqz v0, :cond_0

    invoke-static {}, Lakr;->bz()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Laal;->e:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Laka;->W()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Laal;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    int-to-long v2, v0

    const-wide/16 v4, 0x3

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    iget-object v0, p0, Laal;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->peekLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v0, p0, Laal;->d:Ljava/util/LinkedList;

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
    iput-boolean v1, p0, Laal;->e:Z

    .line 67
    iget-object v0, p0, Laal;->b:Laan;

    const v1, 0x7f0c0291

    invoke-virtual {v0, v1}, Laan;->a(I)V

    .line 69
    :cond_0
    return-void

    .line 64
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final handleTapWhileViewingEvent(Lbfi;)V
    .locals 4
    .annotation runtime Lbpi;
    .end annotation

    .prologue
    .line 86
    iget-object v0, p0, Laal;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x3

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 87
    iget-object v0, p0, Laal;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 89
    :cond_0
    iget-object v0, p0, Laal;->d:Ljava/util/LinkedList;

    iget-wide v2, p1, Lbfi;->eventTimeMilliseconds:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 90
    return-void
.end method
