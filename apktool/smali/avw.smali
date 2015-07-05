.class public Lavw;
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
.field private final mConfig:Landroid/graphics/Bitmap$Config;

.field private final mHeight:I

.field private final mWidth:I


# direct methods
.method public constructor <init>(IILandroid/graphics/Bitmap$Config;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 17
    iput p1, p0, Lavw;->mWidth:I

    .line 18
    iput p2, p0, Lavw;->mHeight:I

    .line 19
    iput-object p3, p0, Lavw;->mConfig:Landroid/graphics/Bitmap$Config;

    .line 20
    return-void
.end method


# virtual methods
.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 11
    iget v0, p0, Lavw;->mWidth:I

    iget v1, p0, Lavw;->mHeight:I

    iget-object v2, p0, Lavw;->mConfig:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Laur;->a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
