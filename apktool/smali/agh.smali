.class public Lagh;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lagh$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/snapchat/android/model/Friend;

.field final b:Landroid/content/Context;

.field private final c:Lil;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/snapchat/android/model/Friend;)V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lagh;-><init>(Landroid/content/Context;Lcom/snapchat/android/model/Friend;Lil;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/snapchat/android/model/Friend;Lil;)V
    .locals 0
    .param p3    # Lil;
        .annotation build Lchd;
        .end annotation
    .end param

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lagh;->b:Landroid/content/Context;

    .line 36
    iput-object p2, p0, Lagh;->a:Lcom/snapchat/android/model/Friend;

    .line 37
    iput-object p3, p0, Lagh;->c:Lil;

    .line 38
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 41
    new-instance v0, Lagh$a;

    iget-object v1, p0, Lagh;->b:Landroid/content/Context;

    iget-object v2, p0, Lagh;->a:Lcom/snapchat/android/model/Friend;

    invoke-direct {v0, p0, v1, v2}, Lagh$a;-><init>(Lagh;Landroid/content/Context;Lcom/snapchat/android/model/Friend;)V

    invoke-virtual {v0}, Lagh$a;->show()V

    .line 42
    return-void
.end method

.method public a(Lcom/snapchat/android/model/FriendAction$BlockReason;)V
    .locals 9

    .prologue
    .line 71
    new-instance v0, Lqg;

    sget-object v1, Lcom/snapchat/android/model/FriendAction;->BLOCK:Lcom/snapchat/android/model/FriendAction;

    iget-object v2, p0, Lagh;->a:Lcom/snapchat/android/model/Friend;

    iget-object v3, p0, Lagh;->a:Lcom/snapchat/android/model/Friend;

    invoke-virtual {v3}, Lcom/snapchat/android/model/Friend;->l()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lagh;->a:Lcom/snapchat/android/model/Friend;

    iget-object v4, v4, Lcom/snapchat/android/model/Friend;->mUserId:Ljava/lang/String;

    iget-object v5, p0, Lagh;->a:Lcom/snapchat/android/model/Friend;

    invoke-virtual {v5}, Lcom/snapchat/android/model/Friend;->a()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lagh;->a:Lcom/snapchat/android/model/Friend;

    iget-boolean v6, v6, Lcom/snapchat/android/model/Friend;->mJustAdded:Z

    const/4 v7, 0x0

    move-object v8, p1

    invoke-direct/range {v0 .. v8}, Lqg;-><init>(Lcom/snapchat/android/model/FriendAction;Lcom/snapchat/android/model/Friend;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lcom/snapchat/android/model/FriendAction$BlockReason;)V

    invoke-virtual {v0}, Lqg;->a()Lqg;

    move-result-object v0

    iget-object v1, p0, Lagh;->c:Lil;

    iput-object v1, v0, Lqg;->mActionMethod:Lil;

    invoke-virtual {v0}, Lqg;->execute()V

    .line 76
    return-void
.end method
