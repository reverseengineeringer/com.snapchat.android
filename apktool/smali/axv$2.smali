.class final Laxv$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laxv;->a(Laku;Lbgj;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Laxv;

.field final synthetic val$clientId:Ljava/lang/String;

.field final synthetic val$mediaBytes:[B


# direct methods
.method constructor <init>(Laxv;Ljava/lang/String;[B)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Laxv$2;->this$0:Laxv;

    iput-object p2, p0, Laxv$2;->val$clientId:Ljava/lang/String;

    iput-object p3, p0, Laxv$2;->val$mediaBytes:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 118
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    sget-object v2, Laxo;->MY_SNAP_VIDEO_CACHE:Laxn;

    iget-object v2, v2, Laxn;->mCacheType:Lcom/snapchat/android/util/cache/CacheType;

    invoke-virtual {v2}, Lcom/snapchat/android/util/cache/CacheType;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Laxv$2;->val$clientId:Ljava/lang/String;

    aput-object v2, v0, v1

    sget-object v0, Laxo;->MY_SNAP_VIDEO_CACHE:Laxn;

    iget-object v1, p0, Laxv$2;->val$clientId:Ljava/lang/String;

    iget-object v2, p0, Laxv$2;->val$mediaBytes:[B

    invoke-virtual {v0, v1, v2}, Laxn;->a(Ljava/lang/String;[B)V

    const/4 v0, 0x0

    return-object v0
.end method
