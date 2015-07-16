.class public final Lawp$a;
.super Lawu;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lawp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lawp$a$a;
    }
.end annotation


# instance fields
.field private mBitmapPool:Lawo;


# direct methods
.method public constructor <init>(Lawo;IILandroid/graphics/Bitmap$Config;)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0, p2, p3, p4}, Lawu;-><init>(IILandroid/graphics/Bitmap$Config;)V

    .line 70
    iput-object p1, p0, Lawp$a;->mBitmapPool:Lawo;

    .line 71
    return-void
.end method


# virtual methods
.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 64
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-super {p0, p1}, Lawu;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lawp$a;->mBitmapPool:Lawo;

    invoke-virtual {v0, p1}, Lawo;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method
