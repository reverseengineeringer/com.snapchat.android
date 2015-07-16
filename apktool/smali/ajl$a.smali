.class public final Lajl$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lajl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public mBitmap:Landroid/graphics/Bitmap;

.field public final mCache:Laxn;

.field public final mKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Laxn;Ljava/lang/String;)V
    .locals 1
    .param p1    # Laxn;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lajl$a;->mBitmap:Landroid/graphics/Bitmap;

    .line 67
    invoke-static {p1}, Lco;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laxn;

    iput-object v0, p0, Lajl$a;->mCache:Laxn;

    .line 68
    invoke-static {p2}, Lco;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lajl$a;->mKey:Ljava/lang/String;

    .line 69
    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Bitmap;)Lajl$a;
    .locals 1
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 72
    invoke-static {p1}, Lco;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lajl$a;->mBitmap:Landroid/graphics/Bitmap;

    .line 73
    return-object p0
.end method
