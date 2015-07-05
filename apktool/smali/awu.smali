.class public final Lawu;
.super Lawp;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/snapchat/android/util/cache/CacheType;I)V
    .locals 2

    .prologue
    .line 16
    const-wide v0, 0x7fffffffffffffffL

    invoke-direct {p0, p1, v0, v1}, Lawp;-><init>(Lcom/snapchat/android/util/cache/CacheType;J)V

    .line 18
    if-gtz p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 20
    :cond_0
    new-instance v0, Lawu$1;

    invoke-direct {v0, p0, p2, p2}, Lawu$1;-><init>(Lawu;II)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lawu;->mKeyToUri:Ljava/util/Map;

    .line 43
    return-void
.end method


# virtual methods
.method public final e()V
    .locals 0

    .prologue
    .line 48
    return-void
.end method
