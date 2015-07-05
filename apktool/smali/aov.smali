.class public final Laov;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lbjh;

.field public b:Z

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lbjj;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lbjj;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lbjh;Ljava/util/List;)V
    .locals 1
    .param p1    # Lbjh;
        .annotation runtime Ljavax/validation/constraints/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation runtime Ljavax/validation/constraints/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbjh;",
            "Ljava/util/List",
            "<",
            "Lbjj;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laov;->d:Ljava/util/List;

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Laov;->b:Z

    .line 23
    iput-object p1, p0, Laov;->a:Lbjh;

    .line 24
    iput-object p2, p0, Laov;->c:Ljava/util/List;

    .line 25
    invoke-direct {p0}, Laov;->b()V

    .line 26
    return-void
.end method

.method private b()V
    .locals 3

    .prologue
    .line 59
    iget-object v0, p0, Laov;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbjj;

    .line 60
    invoke-virtual {v0}, Lbjj;->b()Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2}, Laud;->a(Ljava/lang/Boolean;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 61
    iget-object v2, p0, Laov;->d:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 64
    :cond_1
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lbjj;",
            ">;"
        }
    .end annotation

    .prologue
    .line 37
    iget-boolean v0, p0, Laov;->b:Z

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Laov;->d:Ljava/util/List;

    .line 40
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Laov;->c:Ljava/util/List;

    goto :goto_0
.end method
