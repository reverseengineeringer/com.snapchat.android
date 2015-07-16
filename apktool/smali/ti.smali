.class public final Lti;
.super Ltg;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lti$a;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "UnlinkCardTask"


# instance fields
.field mCashCardManager:Lyn;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mUnlinkSuccessListener:Lti$a;


# direct methods
.method public constructor <init>(Lti$a;)V
    .locals 1
    .param p1    # Lti$a;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 25
    invoke-direct {p0}, Ltg;-><init>()V

    .line 26
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/SnapchatApplication;->c()Lazy;

    move-result-object v0

    invoke-interface {v0, p0}, Lazy;->a(Lti;)V

    .line 27
    iput-object p1, p0, Lti;->mUnlinkSuccessListener:Lti$a;

    .line 28
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    const-string v0, "cash/card"

    return-object v0
.end method

.method public final getMethod()Lcom/snapchat/android/api2/framework/HttpMethod;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/snapchat/android/api2/framework/HttpMethod;->DELETE:Lcom/snapchat/android/api2/framework/HttpMethod;

    return-object v0
.end method

.method public final getRequestPayload()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    return-object v0
.end method

.method public final onResult(Lus;)V
    .locals 3
    .param p1    # Lus;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 47
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p1, Lus;->mResponseCode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 48
    iget v0, p1, Lus;->mResponseCode:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    .line 49
    invoke-static {}, Lakr;->ai()V

    .line 50
    iget-object v0, p0, Lti;->mCashCardManager:Lyn;

    invoke-virtual {v0}, Lyn;->b()V

    .line 51
    iget-object v0, p0, Lti;->mUnlinkSuccessListener:Lti$a;

    invoke-interface {v0}, Lti$a;->a()V

    .line 55
    :goto_0
    return-void

    .line 53
    :cond_0
    iget-object v0, p0, Lti;->mUnlinkSuccessListener:Lti$a;

    iget v1, p1, Lus;->mResponseCode:I

    invoke-interface {v0, v1}, Lti$a;->a(I)V

    goto :goto_0
.end method
