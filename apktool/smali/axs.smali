.class public final Laxs;
.super Laxn;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/snapchat/android/util/cache/CacheType;I)V
    .locals 2

    .prologue
    .line 14
    const-wide v0, 0x7fffffffffffffffL

    invoke-direct {p0, p1, v0, v1}, Laxn;-><init>(Lcom/snapchat/android/util/cache/CacheType;J)V

    .line 16
    if-gtz p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 18
    :cond_0
    new-instance v0, Laxs$1;

    invoke-direct {v0, p0, p2, p2}, Laxs$1;-><init>(Laxs;II)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Laxs;->mKeyToItemMap:Ljava/util/Map;

    .line 41
    return-void
.end method


# virtual methods
.method public final e()V
    .locals 0

    .prologue
    .line 46
    return-void
.end method
