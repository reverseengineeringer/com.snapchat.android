.class public final Laeq;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Landroid/graphics/drawable/Drawable;

.field public c:Z

.field public d:Lafg$a;

.field final e:Lafg$a;

.field private final f:Lafg;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-static {}, Lafg;->a()Lafg;

    move-result-object v0

    invoke-direct {p0, v0}, Laeq;-><init>(Lafg;)V

    .line 37
    return-void
.end method

.method private constructor <init>(Lafg;)V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Laeq;->c:Z

    .line 125
    new-instance v0, Laeq$1;

    invoke-direct {v0, p0}, Laeq$1;-><init>(Laeq;)V

    iput-object v0, p0, Laeq;->e:Lafg$a;

    .line 41
    iput-object p1, p0, Laeq;->f:Lafg;

    .line 42
    return-void
.end method

.method protected static a(I)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 159
    new-instance v0, Larc;

    invoke-direct {v0, p0}, Larc;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/widget/ImageView;Lcom/snapchat/android/discover/model/ChannelPage;Z)V
    .locals 6
    .param p1    # Landroid/widget/ImageView;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Lcom/snapchat/android/discover/model/ChannelPage;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x0

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
    iget-object v2, p0, Laeq;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    iget-object v2, p0, Laeq;->a:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 98
    iget-object v0, p0, Laeq;->b:Landroid/graphics/drawable/Drawable;

    invoke-static {p1, v0}, Lawf;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

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
    invoke-static {p2, p3}, Lafg;->a(Lcom/snapchat/android/discover/model/ChannelPage;Z)Z

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
    iget-object v0, p0, Laeq;->f:Lafg;

    iget-object v4, p0, Laeq;->e:Lafg$a;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lafg;->a(Landroid/widget/ImageView;Lcom/snapchat/android/discover/model/ChannelPage;ZLafg$a;Landroid/os/Bundle;)Z

    goto :goto_1

    .line 112
    :cond_2
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p2, Lcom/snapchat/android/discover/model/ChannelPage;->b:Ljava/lang/String;

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object v0, v1, v2

    const/4 v0, 0x2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v0

    .line 115
    const/4 v0, 0x0

    iput-object v0, p0, Laeq;->a:Ljava/lang/String;

    .line 116
    iput-boolean v3, p0, Laeq;->c:Z

    .line 117
    iget v0, p2, Lcom/snapchat/android/discover/model/ChannelPage;->h:I

    invoke-static {v0}, Laeq;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Laeq;->b:Landroid/graphics/drawable/Drawable;

    .line 118
    iget-object v0, p0, Laeq;->b:Landroid/graphics/drawable/Drawable;

    invoke-static {p1, v0}, Lawf;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method
