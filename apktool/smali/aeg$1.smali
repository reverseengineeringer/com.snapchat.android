.class final Laeg$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lavy;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laeg;->a(Landroid/widget/ImageView;Lcom/snapchat/android/discover/model/ChannelPage;ZLaeg$a;Landroid/os/Bundle;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Laep;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Laeg;


# direct methods
.method constructor <init>(Laeg;Laep;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Laeg$1;->c:Laeg;

    iput-object p2, p0, Laeg$1;->a:Laep;

    iput-object p3, p0, Laeg$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lavo;Lavx;)V
    .locals 4

    .prologue
    .line 130
    iget-object v0, p0, Laeg$1;->a:Laep;

    invoke-virtual {v0, p1, p2}, Laep;->a(Lavo;Lavx;)V

    .line 131
    iget-object v0, p0, Laeg$1;->c:Laeg;

    invoke-static {v0}, Laeg;->a(Laeg;)Laeo;

    move-result-object v0

    iget-object v1, p0, Laeg$1;->b:Ljava/lang/String;

    iget-object v2, p1, Lavo;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    if-nez v2, :cond_1

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    new-instance v3, Laeo$1;

    invoke-direct {v3, v0, v1, v2}, Laeo$1;-><init>(Laeo;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    invoke-static {v3}, Lbgp;->b(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
