.class public abstract Laia;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Laic;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laia$a;,
        Laia$b;
    }
.end annotation


# instance fields
.field final a:Laii;

.field final b:Lahx;

.field final c:Lahw;

.field private final d:Lcom/squareup/otto/Bus;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 38
    invoke-static {}, Laii;->a()Laii;

    move-result-object v0

    new-instance v1, Lahx;

    sget-object v2, Lauh;->MISCELLANEOUS_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v1, v2}, Lahx;-><init>(Ljava/util/concurrent/ExecutorService;)V

    new-instance v2, Lahw;

    invoke-direct {v2}, Lahw;-><init>()V

    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Laia;-><init>(Laii;Lahx;Lahw;Lcom/squareup/otto/Bus;)V

    .line 40
    return-void
.end method

.method private constructor <init>(Laii;Lahx;Lahw;Lcom/squareup/otto/Bus;)V
    .locals 0
    .param p1    # Laii;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Lahx;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p3    # Lahw;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p4    # Lcom/squareup/otto/Bus;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Laia;->a:Laii;

    .line 48
    iput-object p2, p0, Laia;->b:Lahx;

    .line 49
    iput-object p3, p0, Laia;->c:Lahw;

    .line 50
    iput-object p4, p0, Laia;->d:Lcom/squareup/otto/Bus;

    .line 51
    return-void
.end method

.method static synthetic a(Laia;)V
    .locals 2

    .prologue
    .line 30
    iget-object v0, p0, Laia;->d:Lcom/squareup/otto/Bus;

    new-instance v1, Lbbq;

    invoke-direct {v1}, Lbbq;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 55
    new-instance v0, Laia$1;

    invoke-direct {v0, p0}, Laia$1;-><init>(Laia;)V

    invoke-static {v0}, Lbgp;->b(Ljava/lang/Runnable;)V

    .line 61
    return-void
.end method

.method protected final a(Laiv;Z)V
    .locals 2
    .param p1    # Laiv;
        .annotation build Lcgb;
        .end annotation
    .end param
    .annotation build Lcaq;
    .end annotation

    .prologue
    .line 74
    new-instance v0, Laia$b;

    invoke-direct {v0, p0, p1, p2}, Laia$b;-><init>(Laia;Laiv;Z)V

    .line 76
    iget-object v1, p0, Laia;->a:Laii;

    invoke-virtual {v1, p1, v0}, Laii;->a(Laiv;Laij$a;)V

    .line 77
    return-void
.end method

.method protected final b()V
    .locals 3
    .annotation build Lcaq;
    .end annotation

    .prologue
    .line 66
    invoke-static {}, Lbgp;->b()V

    .line 67
    invoke-virtual {p0}, Laia;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laiv;

    .line 68
    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Laia;->a(Laiv;Z)V

    goto :goto_0

    .line 70
    :cond_0
    return-void
.end method
