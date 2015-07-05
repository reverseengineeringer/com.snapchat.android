.class public final Laeg$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lavy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laeg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Laeg$a;

.field final synthetic b:Landroid/widget/ImageView;

.field final synthetic c:Landroid/os/Bundle;

.field final synthetic d:Laeg;


# direct methods
.method public constructor <init>(Laeg;Laeg$a;Landroid/widget/ImageView;)V
    .locals 1

    .prologue
    .line 166
    iput-object p1, p0, Laeg$2;->d:Laeg;

    iput-object p2, p0, Laeg$2;->a:Laeg$a;

    iput-object p3, p0, Laeg$2;->b:Landroid/widget/ImageView;

    const/4 v0, 0x0

    iput-object v0, p0, Laeg$2;->c:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lavo;Lavx;)V
    .locals 5

    .prologue
    .line 169
    iget-object v1, p0, Laeg$2;->a:Laeg$a;

    iget-object v2, p0, Laeg$2;->b:Landroid/widget/ImageView;

    const/4 v3, 0x0

    iget-object v4, p0, Laeg$2;->c:Landroid/os/Bundle;

    iget-object v0, p1, Lavo;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v2, v3, v4, v0}, Laeg$a;->a(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Landroid/os/Bundle;Z)V

    .line 170
    return-void

    .line 169
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
