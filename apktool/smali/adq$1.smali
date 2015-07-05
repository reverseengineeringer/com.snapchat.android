.class final Ladq$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Laeg$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ladq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ladq;


# direct methods
.method constructor <init>(Ladq;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Ladq$1;->a:Ladq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Landroid/os/Bundle;Z)V
    .locals 3

    .prologue
    .line 131
    const-string v0, "uri"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 132
    const-string v0, "channel_page"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/model/ChannelPage;

    .line 134
    if-nez p4, :cond_1

    .line 135
    iget-object v1, p0, Ladq$1;->a:Ladq;

    const/4 v2, 0x0

    iput-object v2, v1, Ladq;->a:Ljava/lang/String;

    .line 136
    iget-object v1, p0, Ladq$1;->a:Ladq;

    iget v0, v0, Lcom/snapchat/android/discover/model/ChannelPage;->h:I

    invoke-static {v0}, Ladq;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v1, Ladq;->b:Landroid/graphics/drawable/Drawable;

    .line 137
    iget-object v0, p0, Ladq$1;->a:Ladq;

    const/4 v1, 0x0

    iput-boolean v1, v0, Ladq;->c:Z

    .line 144
    :goto_0
    if-eqz p1, :cond_0

    .line 145
    iget-object v0, p0, Ladq$1;->a:Ladq;

    iget-object v0, v0, Ladq;->b:Landroid/graphics/drawable/Drawable;

    invoke-static {p1, v0}, Lavh;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 146
    iget-object v0, p0, Ladq$1;->a:Ladq;

    iget-object v0, v0, Ladq;->d:Laeg$a;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Ladq$1;->a:Ladq;

    iget-object v0, v0, Ladq;->d:Laeg$a;

    invoke-interface {v0, p1, p2, p3, p4}, Laeg$a;->a(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Landroid/os/Bundle;Z)V

    .line 150
    :cond_0
    return-void

    .line 139
    :cond_1
    iget-object v0, p0, Ladq$1;->a:Ladq;

    iput-object v1, v0, Ladq;->a:Ljava/lang/String;

    .line 140
    iget-object v0, p0, Ladq$1;->a:Ladq;

    iput-object p2, v0, Ladq;->b:Landroid/graphics/drawable/Drawable;

    .line 141
    iget-object v0, p0, Ladq$1;->a:Ladq;

    const/4 v1, 0x1

    iput-boolean v1, v0, Ladq;->c:Z

    goto :goto_0
.end method
