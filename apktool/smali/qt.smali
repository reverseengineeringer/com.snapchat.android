.class public final Lqt;
.super Ltg;
.source "SourceFile"

# interfaces
.implements Lts$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lqt$b;,
        Lqt$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ltg;",
        "Lts$b",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCallback:Lqt$b;

.field private final mConversationId:Ljava/lang/String;

.field private final mSaved:Ljava/lang/Boolean;

.field private final mTransactionId:Ljava/lang/String;

.field private final mVersion:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Lqt$b;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Boolean;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Integer;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p5    # Lqt$b;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 28
    sget-object v0, Ltg;->EXPONENTIAL_STRATEGY:Lum;

    invoke-direct {p0, v0}, Ltg;-><init>(Lun;)V

    .line 29
    iput-object p1, p0, Lqt;->mTransactionId:Ljava/lang/String;

    .line 30
    iput-object p2, p0, Lqt;->mConversationId:Ljava/lang/String;

    .line 31
    iput-object p3, p0, Lqt;->mSaved:Ljava/lang/Boolean;

    .line 32
    iput-object p4, p0, Lqt;->mVersion:Ljava/lang/Integer;

    .line 33
    iput-object p5, p0, Lqt;->mCallback:Lqt$b;

    .line 35
    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {p0, v0, p0}, Lqt;->a(Ljava/lang/Class;Lts$b;)V

    .line 36
    return-void
.end method

.method static synthetic a(Lqt;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lqt;->mTransactionId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lqt;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lqt;->mConversationId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lqt;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lqt;->mSaved:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic d(Lqt;)Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lqt;->mVersion:Ljava/lang/Integer;

    return-object v0
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Luc;)V
    .locals 2

    .prologue
    .line 17
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p2}, Luc;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lqt;->mCallback:Lqt$b;

    invoke-interface {v0}, Lqt$b;->a()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lqt;->mCallback:Lqt$b;

    iget v1, p2, Luc;->mResponseCode:I

    invoke-interface {v0, v1}, Lqt$b;->a(I)V

    goto :goto_0
.end method

.method public final b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 57
    new-instance v0, Lqt$a;

    invoke-direct {v0, p0}, Lqt$a;-><init>(Lqt;)V

    return-object v0
.end method

.method protected final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    const-string v0, "/cash/update_transaction"

    return-object v0
.end method
