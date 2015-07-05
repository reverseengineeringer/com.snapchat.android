.class public final Lawj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lawh;


# static fields
.field private static final TAG:Ljava/lang/String; = "CachedBitmapSource"


# instance fields
.field private mBytes:[B
    .annotation build Lcgc;
    .end annotation
.end field

.field private final mCache:Lawp;
    .annotation build Lcgb;
    .end annotation
.end field

.field private final mCacheKey:Ljava/lang/String;
    .annotation build Lcgb;
    .end annotation
.end field

.field private final mEncryptionAlgorithm:Layc;
    .annotation build Lcgc;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lawp;Ljava/lang/String;Layc;)V
    .locals 0
    .param p1    # Lawp;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p3    # Layc;
        .annotation build Lcgc;
        .end annotation
    .end param

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lawj;->mCache:Lawp;

    .line 37
    iput-object p2, p0, Lawj;->mCacheKey:Ljava/lang/String;

    .line 38
    iput-object p3, p0, Lawj;->mEncryptionAlgorithm:Layc;

    .line 39
    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    .line 55
    new-instance v1, Lmh;

    const-string v0, "CachedBitmapSource"

    const-string v2, "decodeBitmap"

    invoke-direct {v1, v0, v2}, Lmh;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lawj;->mBytes:[B

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lawj;->mBytes:[B

    const/4 v2, 0x0

    array-length v3, v0

    invoke-static {v0, v2, v3, p1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 59
    const-string v2, "decodeByteArray"

    invoke-virtual {v1, v2}, Lmh;->a(Ljava/lang/String;)V

    .line 63
    invoke-static {v1}, Lcom/snapchat/android/Timber;->a(Lmh;)V

    .line 64
    :goto_0
    return-object v0

    .line 61
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Landroid/content/ContentResolver;Landroid/content/res/Resources;)V
    .locals 3

    .prologue
    .line 43
    new-instance v0, Lmh;

    const-string v1, "CachedBitmapSource"

    const-string v2, "prepare"

    invoke-direct {v0, v1, v2}, Lmh;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    iget-object v1, p0, Lawj;->mCache:Lawp;

    iget-object v2, p0, Lawj;->mCacheKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lawp;->a(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lawj;->mBytes:[B

    .line 45
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "get "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lawj;->mCacheKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmh;->a(Ljava/lang/String;)V

    .line 46
    iget-object v1, p0, Lawj;->mBytes:[B

    if-eqz v1, :cond_0

    iget-object v1, p0, Lawj;->mEncryptionAlgorithm:Layc;

    if-eqz v1, :cond_0

    .line 47
    iget-object v1, p0, Lawj;->mEncryptionAlgorithm:Layc;

    iget-object v2, p0, Lawj;->mBytes:[B

    invoke-interface {v1, v2}, Layc;->b([B)[B

    move-result-object v1

    iput-object v1, p0, Lawj;->mBytes:[B

    .line 48
    const-string v1, "decrypt"

    invoke-virtual {v0, v1}, Lmh;->a(Ljava/lang/String;)V

    .line 50
    :cond_0
    invoke-static {v0}, Lcom/snapchat/android/Timber;->a(Lmh;)V

    .line 51
    return-void
.end method
