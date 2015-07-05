.class public final Lqp;
.super Ltg;
.source "SourceFile"

# interfaces
.implements Lts$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lqp$a;,
        Lqp$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ltg;",
        "Lts$b",
        "<",
        "Ljava/util/List",
        "<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final mCallback:Lqp$a;

.field private final mConversationId:Ljava/lang/String;

.field private final mTransactionIds:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/Collection;Ljava/lang/String;Lqp$a;)V
    .locals 1
    .param p1    # Ljava/util/Collection;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p3    # Lqp$a;
        .annotation build Lcgb;
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
            "Lqp$a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 30
    sget-object v0, Ltg;->EXPONENTIAL_STRATEGY:Lum;

    invoke-direct {p0, v0}, Ltg;-><init>(Lun;)V

    .line 31
    const-string v0, ","

    invoke-static {p1, v0}, Lavb;->a(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lqp;->mTransactionIds:Ljava/lang/String;

    .line 32
    iput-object p2, p0, Lqp;->mConversationId:Ljava/lang/String;

    .line 33
    iput-object p3, p0, Lqp;->mCallback:Lqp$a;

    .line 35
    const-class v0, Ljava/util/List;

    invoke-virtual {p0, v0, p0}, Lqp;->a(Ljava/lang/Class;Lts$b;)V

    .line 36
    return-void
.end method

.method static synthetic a(Lqp;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lqp;->mTransactionIds:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lqp;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lqp;->mConversationId:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Luc;)V
    .locals 1

    .prologue
    .line 22
    check-cast p1, Ljava/util/List;

    invoke-virtual {p2}, Luc;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lqp;->mCallback:Lqp$a;

    invoke-interface {v0, p1}, Lqp$a;->a(Ljava/util/List;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lqp;->mCallback:Lqp$a;

    invoke-interface {v0}, Lqp$a;->a()V

    goto :goto_0
.end method

.method public final b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 53
    new-instance v0, Lqp$b;

    invoke-direct {v0, p0}, Lqp$b;-><init>(Lqp;)V

    return-object v0
.end method

.method protected final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    const-string v0, "/cash/mark_as_viewed"

    return-object v0
.end method
