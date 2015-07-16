.class public abstract Laiw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Laiy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laiw$a;,
        Laiw$b;
    }
.end annotation


# instance fields
.field final a:Laje;

.field final b:Lait;

.field final c:Lais;

.field private final d:Lcom/squareup/otto/Bus;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 38
    invoke-static {}, Laje;->a()Laje;

    move-result-object v0

    new-instance v1, Lait;

    sget-object v2, Lavf;->MISCELLANEOUS_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v1, v2}, Lait;-><init>(Ljava/util/concurrent/ExecutorService;)V

    new-instance v2, Lais;

    invoke-direct {v2}, Lais;-><init>()V

    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Laiw;-><init>(Laje;Lait;Lais;Lcom/squareup/otto/Bus;)V

    .line 40
    return-void
.end method

.method private constructor <init>(Laje;Lait;Lais;Lcom/squareup/otto/Bus;)V
    .locals 0
    .param p1    # Laje;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Lait;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p3    # Lais;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p4    # Lcom/squareup/otto/Bus;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Laiw;->a:Laje;

    .line 48
    iput-object p2, p0, Laiw;->b:Lait;

    .line 49
    iput-object p3, p0, Laiw;->c:Lais;

    .line 50
    iput-object p4, p0, Laiw;->d:Lcom/squareup/otto/Bus;

    .line 51
    return-void
.end method

.method static synthetic a(Laiw;)V
    .locals 2

    .prologue
    .line 30
    iget-object v0, p0, Laiw;->d:Lcom/squareup/otto/Bus;

    new-instance v1, Lbcq;

    invoke-direct {v1}, Lbcq;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 55
    new-instance v0, Laiw$1;

    invoke-direct {v0, p0}, Laiw$1;-><init>(Laiw;)V

    invoke-static {v0}, Lbhp;->b(Ljava/lang/Runnable;)V

    .line 61
    return-void
.end method

.method protected final a(Lajr;Z)V
    .locals 2
    .param p1    # Lajr;
        .annotation build Lchc;
        .end annotation
    .end param
    .annotation build Lcbr;
    .end annotation

    .prologue
    .line 74
    new-instance v0, Laiw$b;

    invoke-direct {v0, p0, p1, p2}, Laiw$b;-><init>(Laiw;Lajr;Z)V

    .line 76
    iget-object v1, p0, Laiw;->a:Laje;

    invoke-virtual {v1, p1, v0}, Laje;->a(Lajr;Lajf$a;)V

    .line 77
    return-void
.end method

.method protected final b()V
    .locals 3
    .annotation build Lcbr;
    .end annotation

    .prologue
    .line 66
    invoke-static {}, Lbhp;->b()V

    .line 67
    invoke-virtual {p0}, Laiw;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lajr;

    .line 68
    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Laiw;->a(Lajr;Z)V

    goto :goto_0

    .line 70
    :cond_0
    return-void
.end method
