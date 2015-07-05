.class public final Lait;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lait$a;
    }
.end annotation


# static fields
.field public static sUsernamesToProfileInfo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lait;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBestFriends:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mScore:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lait;->sUsernamesToProfileInfo:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lait;->mBestFriends:Ljava/util/ArrayList;

    .line 27
    const/4 v0, -0x1

    iput v0, p0, Lait;->mScore:I

    .line 30
    invoke-direct {p0, p1}, Lait;->a(Ljava/util/List;)V

    .line 31
    iput p2, p0, Lait;->mScore:I

    .line 32
    return-void
.end method

.method public static a(Lcom/snapchat/android/model/Friend;Lait$a;)V
    .locals 3
    .param p0    # Lcom/snapchat/android/model/Friend;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p1    # Lait$a;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 57
    sget-object v0, Lait;->sUsernamesToProfileInfo:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/snapchat/android/model/Friend;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lait;

    .line 58
    if-nez v0, :cond_0

    .line 59
    new-instance v0, Lait$1;

    invoke-direct {v0, p0, p1, p0}, Lait$1;-><init>(Lcom/snapchat/android/model/Friend;Lait$a;Lcom/snapchat/android/model/Friend;)V

    sget-object v1, Lauh;->NETWORK_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lait$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 69
    :goto_0
    return-void

    .line 67
    :cond_0
    invoke-interface {p1, v0}, Lait$a;->a(Lait;)V

    goto :goto_0
.end method

.method private a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 35
    iget-object v0, p0, Lait;->mBestFriends:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 36
    invoke-static {}, Lajv;->g()Lajv;

    move-result-object v1

    .line 38
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 39
    iget-object v3, p0, Lait;->mBestFriends:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Latm;->e(Ljava/lang/String;Lajv;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 41
    :cond_0
    return-void
.end method
