.class public final Lafg$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Laww;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lafg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lafg$a;

.field final synthetic b:Landroid/widget/ImageView;

.field final synthetic c:Landroid/os/Bundle;

.field final synthetic d:Lafg;


# direct methods
.method public constructor <init>(Lafg;Lafg$a;Landroid/widget/ImageView;)V
    .locals 1

    .prologue
    .line 166
    iput-object p1, p0, Lafg$2;->d:Lafg;

    iput-object p2, p0, Lafg$2;->a:Lafg$a;

    iput-object p3, p0, Lafg$2;->b:Landroid/widget/ImageView;

    const/4 v0, 0x0

    iput-object v0, p0, Lafg$2;->c:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lawm;Lawv;)V
    .locals 5

    .prologue
    .line 169
    iget-object v1, p0, Lafg$2;->a:Lafg$a;

    iget-object v2, p0, Lafg$2;->b:Landroid/widget/ImageView;

    const/4 v3, 0x0

    iget-object v4, p0, Lafg$2;->c:Landroid/os/Bundle;

    iget-object v0, p1, Lawm;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v2, v3, v4, v0}, Lafg$a;->a(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Landroid/os/Bundle;Z)V

    .line 170
    return-void

    .line 169
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
