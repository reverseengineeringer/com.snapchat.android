.class public final Laip$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public mBitmap:Landroid/graphics/Bitmap;

.field public final mCache:Lawp;

.field public final mKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lawp;Ljava/lang/String;)V
    .locals 1
    .param p1    # Lawp;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Laip$a;->mBitmap:Landroid/graphics/Bitmap;

    .line 67
    invoke-static {p1}, Lck;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lawp;

    iput-object v0, p0, Laip$a;->mCache:Lawp;

    .line 68
    invoke-static {p2}, Lck;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Laip$a;->mKey:Ljava/lang/String;

    .line 69
    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Bitmap;)Laip$a;
    .locals 1
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 72
    invoke-static {p1}, Lck;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Laip$a;->mBitmap:Landroid/graphics/Bitmap;

    .line 73
    return-object p0
.end method
