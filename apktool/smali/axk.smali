.class public final Laxk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Laxf;


# instance fields
.field private final mResourceId:I

.field private mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput p1, p0, Laxk;->mResourceId:I

    .line 20
    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 33
    iget-object v0, p0, Laxk;->mResources:Landroid/content/res/Resources;

    if-nez v0, :cond_1

    .line 34
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot decode bitmap without calling prepare!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_0
    const/4 v0, 0x0

    .line 40
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Laxk;->mResources:Landroid/content/res/Resources;

    iget v1, p0, Laxk;->mResourceId:I

    invoke-static {v0, v1, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Landroid/content/ContentResolver;Landroid/content/res/Resources;)V
    .locals 0

    .prologue
    .line 28
    iput-object p2, p0, Laxk;->mResources:Landroid/content/res/Resources;

    .line 29
    return-void
.end method
