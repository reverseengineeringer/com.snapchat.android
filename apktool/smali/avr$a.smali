.class public final Lavr$a;
.super Lavw;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lavr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lavr$a$a;
    }
.end annotation


# instance fields
.field private mBitmapPool:Lavq;


# direct methods
.method public constructor <init>(Lavq;IILandroid/graphics/Bitmap$Config;)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0, p2, p3, p4}, Lavw;-><init>(IILandroid/graphics/Bitmap$Config;)V

    .line 70
    iput-object p1, p0, Lavr$a;->mBitmapPool:Lavq;

    .line 71
    return-void
.end method


# virtual methods
.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 64
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-super {p0, p1}, Lavw;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lavr$a;->mBitmapPool:Lavq;

    invoke-virtual {v0, p1}, Lavq;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method
