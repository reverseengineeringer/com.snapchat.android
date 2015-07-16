.class public final Lrj;
.super Ltw;
.source "SourceFile"

# interfaces
.implements Lui$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrj$b;,
        Lrj$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ltw;",
        "Lui$b",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCallback:Lrj$b;

.field private final mConversationId:Ljava/lang/String;

.field private final mSaved:Ljava/lang/Boolean;

.field private final mTransactionId:Ljava/lang/String;

.field private final mVersion:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Lrj$b;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Boolean;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Integer;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p5    # Lrj$b;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 28
    sget-object v0, Ltw;->EXPONENTIAL_STRATEGY:Lvd;

    invoke-direct {p0, v0}, Ltw;-><init>(Lve;)V

    .line 29
    iput-object p1, p0, Lrj;->mTransactionId:Ljava/lang/String;

    .line 30
    iput-object p2, p0, Lrj;->mConversationId:Ljava/lang/String;

    .line 31
    iput-object p3, p0, Lrj;->mSaved:Ljava/lang/Boolean;

    .line 32
    iput-object p4, p0, Lrj;->mVersion:Ljava/lang/Integer;

    .line 33
    iput-object p5, p0, Lrj;->mCallback:Lrj$b;

    .line 35
    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {p0, v0, p0}, Lrj;->registerCallback(Ljava/lang/Class;Lui$b;)V

    .line 36
    return-void
.end method

.method static synthetic a(Lrj;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lrj;->mTransactionId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lrj;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lrj;->mConversationId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lrj;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lrj;->mSaved:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic d(Lrj;)Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lrj;->mVersion:Ljava/lang/Integer;

    return-object v0
.end method


# virtual methods
.method protected final getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    const-string v0, "/cash/update_transaction"

    return-object v0
.end method

.method public final getRequestPayload()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 57
    new-instance v0, Lrj$a;

    invoke-direct {v0, p0}, Lrj$a;-><init>(Lrj;)V

    return-object v0
.end method

.method public final synthetic onJsonResult(Ljava/lang/Object;Lus;)V
    .locals 2

    .prologue
    .line 17
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p2}, Lus;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lrj;->mCallback:Lrj$b;

    invoke-interface {v0}, Lrj$b;->a()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lrj;->mCallback:Lrj$b;

    iget v1, p2, Lus;->mResponseCode:I

    invoke-interface {v0, v1}, Lrj$b;->a(I)V

    goto :goto_0
.end method
