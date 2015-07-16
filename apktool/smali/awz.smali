.class public Lawz;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Landroid/util/DisplayMetrics;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 17
    iput-object p1, p0, Lawz;->mBitmap:Landroid/graphics/Bitmap;

    .line 18
    iput-object p2, p0, Lawz;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 19
    return-void
.end method


# virtual methods
.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 12
    iget-object v0, p0, Lawz;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lawz;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v2, p0, Lawz;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Laws;->a(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
