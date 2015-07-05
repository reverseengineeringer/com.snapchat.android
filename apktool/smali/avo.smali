.class public final Lavo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final mBitmap:Landroid/graphics/Bitmap;
    .annotation build Lcgc;
    .end annotation
.end field

.field public final mIsFromPool:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 24
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lavo;-><init>(Landroid/graphics/Bitmap;Z)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;Z)V
    .locals 0
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Lcgc;
        .end annotation
    .end param

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lavo;->mBitmap:Landroid/graphics/Bitmap;

    .line 29
    iput-boolean p2, p0, Lavo;->mIsFromPool:Z

    .line 30
    return-void
.end method
