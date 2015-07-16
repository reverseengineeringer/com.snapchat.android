.class public final Lzs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzu;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzs$a;
    }
.end annotation


# instance fields
.field private final a:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lakp;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/squareup/otto/Bus;

.field private final c:Lzs$a;

.field private final d:Laph;

.field private final e:Log;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    .line 33
    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v1

    sget-object v2, Lakp;->UNSAFE_USER_PROVIDER:Ljavax/inject/Provider;

    new-instance v3, Lzs$a;

    invoke-direct {v3}, Lzs$a;-><init>()V

    invoke-static {}, Laph;->a()Laph;

    move-result-object v4

    invoke-static {}, Log;->a()Log;

    move-result-object v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lzs;-><init>(Lcom/squareup/otto/Bus;Ljavax/inject/Provider;Lzs$a;Laph;Log;)V

    .line 35
    return-void
.end method

.method private constructor <init>(Lcom/squareup/otto/Bus;Ljavax/inject/Provider;Lzs$a;Laph;Log;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/otto/Bus;",
            "Ljavax/inject/Provider",
            "<",
            "Lakp;",
            ">;",
            "Lzs$a;",
            "Laph;",
            "Log;",
            ")V"
        }
    .end annotation

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lzs;->b:Lcom/squareup/otto/Bus;

    .line 41
    iput-object p2, p0, Lzs;->a:Ljavax/inject/Provider;

    .line 42
    iput-object p3, p0, Lzs;->c:Lzs$a;

    .line 43
    iput-object p4, p0, Lzs;->d:Laph;

    .line 44
    iput-object p5, p0, Lzs;->e:Log;

    .line 45
    return-void
.end method

.method private d(Laka;)V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 70
    iget-object v0, p0, Lzs;->a:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lakp;

    .line 71
    if-eqz v0, :cond_0

    .line 72
    instance-of v1, p1, Lakl;

    if-eqz v1, :cond_1

    move-object v1, p1

    .line 73
    check-cast v1, Lakl;

    iget-boolean v2, v1, Lakl;->mWas404ResponseReceived:Z

    new-array v2, v3, [Ljava/lang/Object;

    aput-object v1, v2, v4

    invoke-static {v0, v1, v3}, Lavy;->a(Lakp;Lakl;Z)V

    iget-object v1, p0, Lzs;->b:Lcom/squareup/otto/Bus;

    new-instance v2, Lbex;

    invoke-direct {v2}, Lbex;-><init>()V

    invoke-virtual {v1, v2}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 77
    :goto_0
    instance-of v1, p1, Lakl;

    if-eqz v1, :cond_3

    iget-object v0, v0, Lakp;->mStoryViewRecordsSinceLastServerChange:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lpx;

    invoke-direct {v0}, Lpx;-><init>()V

    sget-object v1, Lavf;->NETWORK_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-array v2, v4, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lpx;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 79
    :cond_0
    :goto_1
    return-void

    .line 75
    :cond_1
    invoke-virtual {p1}, Laka;->u()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lakp;->t()Z

    move-result v1

    if-eqz v1, :cond_2

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p1, v1, v4

    invoke-virtual {p1}, Laka;->z_()V

    :goto_2
    invoke-static {p1}, Log;->d(Laka;)V

    iget-object v1, p0, Lzs;->b:Lcom/squareup/otto/Bus;

    new-instance v2, Lbcl;

    iget-object v3, p1, Laka;->mSender:Ljava/lang/String;

    invoke-direct {v2, v3}, Lbcl;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    new-array v1, v3, [Ljava/lang/Object;

    aput-object p1, v1, v4

    invoke-virtual {p1}, Laka;->o()V

    goto :goto_2

    .line 77
    :cond_3
    iget-object v0, p0, Lzs;->d:Laph;

    invoke-virtual {v0}, Laph;->d()I

    goto :goto_1
.end method


# virtual methods
.method public final a(Laka;)V
    .locals 3

    .prologue
    .line 54
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p1}, Laka;->d()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 55
    invoke-direct {p0, p1}, Lzs;->d(Laka;)V

    .line 56
    return-void
.end method

.method public final a(Laka;J)V
    .locals 0

    .prologue
    .line 50
    return-void
.end method

.method public final b(Laka;)V
    .locals 3

    .prologue
    .line 60
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p1}, Laka;->d()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 61
    invoke-direct {p0, p1}, Lzs;->d(Laka;)V

    .line 62
    return-void
.end method

.method public final c(Laka;)V
    .locals 0

    .prologue
    .line 67
    return-void
.end method
