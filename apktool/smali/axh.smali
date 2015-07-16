.class public final Laxh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Laxf;


# static fields
.field private static final TAG:Ljava/lang/String; = "CachedBitmapSource"


# instance fields
.field private mBytes:[B
    .annotation build Lchd;
    .end annotation
.end field

.field private final mCache:Laxn;
    .annotation build Lchc;
    .end annotation
.end field

.field private final mCacheKey:Ljava/lang/String;
    .annotation build Lchc;
    .end annotation
.end field

.field private final mEncryptionAlgorithm:Laza;
    .annotation build Lchd;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Laxn;Ljava/lang/String;Laza;)V
    .locals 0
    .param p1    # Laxn;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p3    # Laza;
        .annotation build Lchd;
        .end annotation
    .end param

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Laxh;->mCache:Laxn;

    .line 37
    iput-object p2, p0, Laxh;->mCacheKey:Ljava/lang/String;

    .line 38
    iput-object p3, p0, Laxh;->mEncryptionAlgorithm:Laza;

    .line 39
    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 55
    iget-object v0, p0, Laxh;->mBytes:[B

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Laxh;->mBytes:[B

    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, v2, p1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 63
    :goto_0
    return-object v0

    .line 61
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Landroid/content/ContentResolver;Landroid/content/res/Resources;)V
    .locals 2

    .prologue
    .line 43
    iget-object v0, p0, Laxh;->mCache:Laxn;

    iget-object v1, p0, Laxh;->mCacheKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Laxn;->a(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Laxh;->mBytes:[B

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "get "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Laxh;->mCacheKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    iget-object v0, p0, Laxh;->mBytes:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Laxh;->mEncryptionAlgorithm:Laza;

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Laxh;->mEncryptionAlgorithm:Laza;

    iget-object v1, p0, Laxh;->mBytes:[B

    invoke-interface {v0, v1}, Laza;->b([B)[B

    move-result-object v0

    iput-object v0, p0, Laxh;->mBytes:[B

    .line 48
    :cond_0
    return-void
.end method
