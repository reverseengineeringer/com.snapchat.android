.class final Lafg$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Laww;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lafg;->a(Landroid/widget/ImageView;Lcom/snapchat/android/discover/model/ChannelPage;ZLafg$a;Landroid/os/Bundle;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lafp;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lafg;


# direct methods
.method constructor <init>(Lafg;Lafp;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lafg$1;->c:Lafg;

    iput-object p2, p0, Lafg$1;->a:Lafp;

    iput-object p3, p0, Lafg$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lawm;Lawv;)V
    .locals 4

    .prologue
    .line 130
    iget-object v0, p0, Lafg$1;->a:Lafp;

    invoke-virtual {v0, p1, p2}, Lafp;->a(Lawm;Lawv;)V

    .line 131
    iget-object v0, p0, Lafg$1;->c:Lafg;

    invoke-static {v0}, Lafg;->a(Lafg;)Lafo;

    move-result-object v0

    iget-object v1, p0, Lafg$1;->b:Ljava/lang/String;

    iget-object v2, p1, Lawm;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    if-nez v2, :cond_1

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    new-instance v3, Lafo$1;

    invoke-direct {v3, v0, v1, v2}, Lafo$1;-><init>(Lafo;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    invoke-static {v3}, Lbhp;->b(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
