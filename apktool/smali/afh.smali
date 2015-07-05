.class public Lafh;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lafh$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/snapchat/android/model/Friend;

.field final b:Landroid/content/Context;

.field private final c:Lic;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/snapchat/android/model/Friend;)V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lafh;-><init>(Landroid/content/Context;Lcom/snapchat/android/model/Friend;Lic;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/snapchat/android/model/Friend;Lic;)V
    .locals 0
    .param p3    # Lic;
        .annotation build Lcgc;
        .end annotation
    .end param

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lafh;->b:Landroid/content/Context;

    .line 36
    iput-object p2, p0, Lafh;->a:Lcom/snapchat/android/model/Friend;

    .line 37
    iput-object p3, p0, Lafh;->c:Lic;

    .line 38
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 41
    new-instance v0, Lafh$a;

    iget-object v1, p0, Lafh;->b:Landroid/content/Context;

    iget-object v2, p0, Lafh;->a:Lcom/snapchat/android/model/Friend;

    invoke-direct {v0, p0, v1, v2}, Lafh$a;-><init>(Lafh;Landroid/content/Context;Lcom/snapchat/android/model/Friend;)V

    invoke-virtual {v0}, Lafh$a;->show()V

    .line 42
    return-void
.end method

.method public a(Lcom/snapchat/android/model/FriendAction$BlockReason;)V
    .locals 9

    .prologue
    .line 71
    new-instance v0, Lpp;

    sget-object v1, Lcom/snapchat/android/model/FriendAction;->BLOCK:Lcom/snapchat/android/model/FriendAction;

    iget-object v2, p0, Lafh;->a:Lcom/snapchat/android/model/Friend;

    iget-object v3, p0, Lafh;->a:Lcom/snapchat/android/model/Friend;

    invoke-virtual {v3}, Lcom/snapchat/android/model/Friend;->h()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lafh;->a:Lcom/snapchat/android/model/Friend;

    iget-object v4, v4, Lcom/snapchat/android/model/Friend;->mUserId:Ljava/lang/String;

    iget-object v5, p0, Lafh;->a:Lcom/snapchat/android/model/Friend;

    invoke-virtual {v5}, Lcom/snapchat/android/model/Friend;->a()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lafh;->a:Lcom/snapchat/android/model/Friend;

    iget-boolean v6, v6, Lcom/snapchat/android/model/Friend;->mJustAdded:Z

    const/4 v7, 0x0

    move-object v8, p1

    invoke-direct/range {v0 .. v8}, Lpp;-><init>(Lcom/snapchat/android/model/FriendAction;Lcom/snapchat/android/model/Friend;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lcom/snapchat/android/model/FriendAction$BlockReason;)V

    invoke-virtual {v0}, Lpp;->e()Lpp;

    move-result-object v0

    iget-object v1, p0, Lafh;->c:Lic;

    iput-object v1, v0, Lpp;->mActionMethod:Lic;

    invoke-virtual {v0}, Lpp;->f()V

    .line 76
    return-void
.end method
