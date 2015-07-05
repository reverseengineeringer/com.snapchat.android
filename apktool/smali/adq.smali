.class public final Ladq;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Landroid/graphics/drawable/Drawable;

.field public c:Z

.field public d:Laeg$a;

.field final e:Laeg$a;

.field private final f:Laeg;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-static {}, Laeg;->a()Laeg;

    move-result-object v0

    invoke-direct {p0, v0}, Ladq;-><init>(Laeg;)V

    .line 37
    return-void
.end method

.method private constructor <init>(Laeg;)V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Ladq;->c:Z

    .line 125
    new-instance v0, Ladq$1;

    invoke-direct {v0, p0}, Ladq$1;-><init>(Ladq;)V

    iput-object v0, p0, Ladq;->e:Laeg$a;

    .line 41
    iput-object p1, p0, Ladq;->f:Laeg;

    .line 42
    return-void
.end method

.method protected static a(I)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 159
    new-instance v0, Laqd;

    invoke-direct {v0, p0}, Laqd;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/widget/ImageView;Lcom/snapchat/android/discover/model/ChannelPage;Z)V
    .locals 6
    .param p1    # Landroid/widget/ImageView;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Lcom/snapchat/android/discover/model/ChannelPage;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    const/4 v5, 0x0

    .line 88
    if-eqz p3, :cond_0

    .line 89
    invoke-virtual {p2}, Lcom/snapchat/android/discover/model/ChannelPage;->i()Ljava/lang/String;

    move-result-object v1

    .line 90
    invoke-virtual {p2}, Lcom/snapchat/android/discover/model/ChannelPage;->l()Lcom/snapchat/android/discover/model/MediaState;

    move-result-object v0

    .line 96
    :goto_0
    iget-object v2, p0, Ladq;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    iget-object v2, p0, Ladq;->a:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 98
    iget-object v0, p0, Ladq;->b:Landroid/graphics/drawable/Drawable;

    invoke-static {p1, v0}, Lavh;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 120
    :goto_1
    return-void

    .line 92
    :cond_0
    invoke-virtual {p2}, Lcom/snapchat/android/discover/model/ChannelPage;->h()Ljava/lang/String;

    move-result-object v1

    .line 93
    invoke-virtual {p2}, Lcom/snapchat/android/discover/model/ChannelPage;->k()Lcom/snapchat/android/discover/model/MediaState;

    move-result-object v0

    goto :goto_0

    .line 102
    :cond_1
    invoke-static {p2, p3}, Laeg;->a(Lcom/snapchat/android/discover/model/ChannelPage;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 104
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 105
    const-string v0, "uri"

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const-string v0, "channel_page"

    invoke-virtual {v5, v0, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 108
    iget-object v0, p0, Ladq;->f:Laeg;

    iget-object v4, p0, Ladq;->e:Laeg$a;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Laeg;->a(Landroid/widget/ImageView;Lcom/snapchat/android/discover/model/ChannelPage;ZLaeg$a;Landroid/os/Bundle;)Z

    goto :goto_1

    .line 112
    :cond_2
    const-string v1, "ChannelViewBrandIconProvider"

    const-string v2, "DISCOVER-MEDIA-BRAND-ICON: %s\'s icon has not been downloaded yet: [%s] inverted? %b"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p2, Lcom/snapchat/android/discover/model/ChannelPage;->b:Ljava/lang/String;

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object v0, v3, v4

    const/4 v0, 0x2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 115
    const/4 v0, 0x0

    iput-object v0, p0, Ladq;->a:Ljava/lang/String;

    .line 116
    iput-boolean v5, p0, Ladq;->c:Z

    .line 117
    iget v0, p2, Lcom/snapchat/android/discover/model/ChannelPage;->h:I

    invoke-static {v0}, Ladq;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Ladq;->b:Landroid/graphics/drawable/Drawable;

    .line 118
    iget-object v0, p0, Ladq;->b:Landroid/graphics/drawable/Drawable;

    invoke-static {p1, v0}, Lavh;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method
