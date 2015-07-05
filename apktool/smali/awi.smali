.class public final Lawi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lawh;


# instance fields
.field private final mData:[B
    .annotation build Lcgb;
    .end annotation
.end field


# direct methods
.method public constructor <init>([B)V
    .locals 0
    .param p1    # [B
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lawi;->mData:[B

    .line 20
    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 29
    iget-object v0, p0, Lawi;->mData:[B

    const/4 v1, 0x0

    iget-object v2, p0, Lawi;->mData:[B

    array-length v2, v2

    invoke-static {v0, v1, v2, p1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/content/ContentResolver;Landroid/content/res/Resources;)V
    .locals 0

    .prologue
    .line 25
    return-void
.end method
