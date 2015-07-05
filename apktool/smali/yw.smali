.class public final Lyw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lyw$a;
    }
.end annotation


# instance fields
.field private final a:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lajv;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/squareup/otto/Bus;

.field private final c:Lyw$a;

.field private final d:Laol;

.field private final e:Lnp;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    .line 36
    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v1

    sget-object v2, Lajv;->UNSAFE_USER_PROVIDER:Ljavax/inject/Provider;

    new-instance v3, Lyw$a;

    invoke-direct {v3}, Lyw$a;-><init>()V

    invoke-static {}, Laol;->a()Laol;

    move-result-object v4

    invoke-static {}, Lnp;->a()Lnp;

    move-result-object v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lyw;-><init>(Lcom/squareup/otto/Bus;Ljavax/inject/Provider;Lyw$a;Laol;Lnp;)V

    .line 38
    return-void
.end method

.method private constructor <init>(Lcom/squareup/otto/Bus;Ljavax/inject/Provider;Lyw$a;Laol;Lnp;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/otto/Bus;",
            "Ljavax/inject/Provider",
            "<",
            "Lajv;",
            ">;",
            "Lyw$a;",
            "Laol;",
            "Lnp;",
            ")V"
        }
    .end annotation

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lyw;->b:Lcom/squareup/otto/Bus;

    .line 44
    iput-object p2, p0, Lyw;->a:Ljavax/inject/Provider;

    .line 45
    iput-object p3, p0, Lyw;->c:Lyw$a;

    .line 46
    iput-object p4, p0, Lyw;->d:Laol;

    .line 47
    iput-object p5, p0, Lyw;->e:Lnp;

    .line 48
    return-void
.end method

.method private c(Laje;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 73
    iget-object v0, p0, Lyw;->a:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lajv;

    .line 74
    if-eqz v0, :cond_0

    .line 75
    instance-of v1, p1, Lajr;

    if-eqz v1, :cond_2

    move-object v1, p1

    .line 76
    check-cast v1, Lajr;

    iget-boolean v2, v1, Lajr;->mWas404ResponseReceived:Z

    if-eqz v2, :cond_1

    const-string v2, "SnapConsumptionRecorder"

    const-string v3, "SNAP-VIEW: MARKING story snap %s as viewed due to 404"

    new-array v4, v5, [Ljava/lang/Object;

    aput-object v1, v4, v6

    invoke-static {v2, v3, v4}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    invoke-static {v0, v1, v5}, Lava;->a(Lajv;Lajr;Z)V

    iget-object v1, p0, Lyw;->b:Lcom/squareup/otto/Bus;

    new-instance v2, Lbdy;

    invoke-direct {v2}, Lbdy;-><init>()V

    invoke-virtual {v1, v2}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 80
    :goto_1
    instance-of v1, p1, Lajr;

    if-eqz v1, :cond_5

    iget-object v0, v0, Lajv;->mStoryViewRecordsSinceLastServerChange:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lpg;

    invoke-direct {v0}, Lpg;-><init>()V

    sget-object v1, Lauh;->NETWORK_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-array v2, v6, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lpg;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 82
    :cond_0
    :goto_2
    return-void

    .line 76
    :cond_1
    const-string v2, "SnapConsumptionRecorder"

    const-string v3, "SNAP-VIEW: MARKING story snap %s as viewed"

    new-array v4, v5, [Ljava/lang/Object;

    aput-object v1, v4, v6

    invoke-static {v2, v3, v4}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 78
    :cond_2
    invoke-virtual {p1}, Laje;->t()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lajv;->t()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "SnapConsumptionRecorder"

    const-string v2, "SNAP-VIEW: MARKING snap %s as viewed and replay available"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p1, v3, v6

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Laje;->A_()V

    :goto_3
    invoke-static {p1}, Lnp;->d(Laje;)V

    iget-object v1, p1, Laje;->mSender:Ljava/lang/String;

    invoke-static {v1}, Lym;->b(Ljava/lang/String;)Lcom/snapchat/android/model/chat/ChatConversation;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-static {}, Lyn;->a()Lyn;

    move-result-object v2

    invoke-virtual {v2, v1, v5}, Lyn;->a(Lcom/snapchat/android/model/chat/ChatConversation;Z)V

    :cond_3
    iget-object v1, p0, Lyw;->b:Lcom/squareup/otto/Bus;

    new-instance v2, Lbbl;

    iget-object v3, p1, Laje;->mSender:Ljava/lang/String;

    invoke-direct {v2, v3}, Lbbl;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    const-string v1, "SnapConsumptionRecorder"

    const-string v2, "SNAP-VIEW: MARKING snap %s as viewed"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p1, v3, v6

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Laje;->o()V

    goto :goto_3

    .line 80
    :cond_5
    iget-object v0, p0, Lyw;->d:Laol;

    invoke-virtual {v0}, Laol;->d()I

    goto :goto_2
.end method


# virtual methods
.method public final a(J)V
    .locals 0

    .prologue
    .line 53
    return-void
.end method

.method public final a(Laje;)V
    .locals 5

    .prologue
    .line 57
    const-string v0, "SnapConsumptionRecorder"

    const-string v1, "SNAP-VIEW: onTimerFinish %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Laje;->d()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 58
    invoke-direct {p0, p1}, Lyw;->c(Laje;)V

    .line 59
    return-void
.end method

.method public final b(Laje;)V
    .locals 5

    .prologue
    .line 63
    const-string v0, "SnapConsumptionRecorder"

    const-string v1, "SNAP-VIEW: onTimerSkipped %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Laje;->d()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    invoke-direct {p0, p1}, Lyw;->c(Laje;)V

    .line 65
    return-void
.end method
