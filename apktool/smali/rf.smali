.class public final Lrf;
.super Ltw;
.source "SourceFile"

# interfaces
.implements Lui$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrf$a;,
        Lrf$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ltw;",
        "Lui$b",
        "<",
        "Ljava/util/List",
        "<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final mCallback:Lrf$a;

.field private final mConversationId:Ljava/lang/String;

.field private final mTransactionIds:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/Collection;Ljava/lang/String;Lrf$a;)V
    .locals 1
    .param p1    # Ljava/util/Collection;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p3    # Lrf$a;
        .annotation build Lchc;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lrf$a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 30
    sget-object v0, Ltw;->EXPONENTIAL_STRATEGY:Lvd;

    invoke-direct {p0, v0}, Ltw;-><init>(Lve;)V

    .line 31
    const-string v0, ","

    invoke-static {p1, v0}, Lavz;->a(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lrf;->mTransactionIds:Ljava/lang/String;

    .line 32
    iput-object p2, p0, Lrf;->mConversationId:Ljava/lang/String;

    .line 33
    iput-object p3, p0, Lrf;->mCallback:Lrf$a;

    .line 35
    const-class v0, Ljava/util/List;

    invoke-virtual {p0, v0, p0}, Lrf;->registerCallback(Ljava/lang/Class;Lui$b;)V

    .line 36
    return-void
.end method

.method static synthetic a(Lrf;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lrf;->mTransactionIds:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lrf;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lrf;->mConversationId:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected final getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    const-string v0, "/cash/mark_as_viewed"

    return-object v0
.end method

.method public final getRequestPayload()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 53
    new-instance v0, Lrf$b;

    invoke-direct {v0, p0}, Lrf$b;-><init>(Lrf;)V

    return-object v0
.end method

.method public final synthetic onJsonResult(Ljava/lang/Object;Lus;)V
    .locals 1

    .prologue
    .line 22
    check-cast p1, Ljava/util/List;

    invoke-virtual {p2}, Lus;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lrf;->mCallback:Lrf$a;

    invoke-interface {v0, p1}, Lrf$a;->a(Ljava/util/List;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lrf;->mCallback:Lrf$a;

    invoke-interface {v0}, Lrf$a;->a()V

    goto :goto_0
.end method
