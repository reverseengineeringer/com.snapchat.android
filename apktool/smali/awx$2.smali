.class final Lawx$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lawx;->a(Lajm;Lbfj;)Z
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
.field final synthetic this$0:Lawx;

.field final synthetic val$clientId:Ljava/lang/String;

.field final synthetic val$mediaBytes:[B


# direct methods
.method constructor <init>(Lawx;Ljava/lang/String;[B)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lawx$2;->this$0:Lawx;

    iput-object p2, p0, Lawx$2;->val$clientId:Ljava/lang/String;

    iput-object p3, p0, Lawx$2;->val$mediaBytes:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 5

    .prologue
    .line 118
    const-string v0, "SendSnapCacheWrapper"

    const-string v1, "[%s] putting video cache [Key: %s]"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Lawq;->MY_SNAP_VIDEO_CACHE:Lawp;

    iget-object v4, v4, Lawp;->mCacheType:Lcom/snapchat/android/util/cache/CacheType;

    invoke-virtual {v4}, Lcom/snapchat/android/util/cache/CacheType;->name()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lawx$2;->val$clientId:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lawq;->MY_SNAP_VIDEO_CACHE:Lawp;

    iget-object v1, p0, Lawx$2;->val$clientId:Ljava/lang/String;

    iget-object v2, p0, Lawx$2;->val$mediaBytes:[B

    invoke-virtual {v0, v1, v2}, Lawp;->a(Ljava/lang/String;[B)V

    const/4 v0, 0x0

    return-object v0
.end method
