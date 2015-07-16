.class public final Lafg;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lafg$a;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# static fields
.field private static final b:Lafg;


# instance fields
.field public a:Lawn;

.field private final c:Lacy;

.field private final d:Lafo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    new-instance v0, Lafg;

    invoke-direct {v0}, Lafg;-><init>()V

    sput-object v0, Lafg;->b:Lafg;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 58
    invoke-static {}, Lacy;->a()Lacy;

    move-result-object v0

    invoke-static {}, Lafo;->a()Lafo;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lafg;-><init>(Lacy;Lafo;)V

    .line 59
    return-void
.end method

.method private constructor <init>(Lacy;Lafo;)V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lafg;->c:Lacy;

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lafg;->a:Lawn;

    .line 67
    iput-object p2, p0, Lafg;->d:Lafo;

    .line 68
    return-void
.end method

.method public static a()Lafg;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lafg;->b:Lafg;

    return-object v0
.end method

.method static synthetic a(Lafg;)Lafo;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lafg;->d:Lafo;

    return-object v0
.end method

.method public static a(Lcom/snapchat/android/discover/model/ChannelPage;Z)Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 185
    if-eqz p1, :cond_0

    .line 186
    invoke-virtual {p0}, Lcom/snapchat/android/discover/model/ChannelPage;->i()Ljava/lang/String;

    move-result-object v1

    .line 187
    invoke-virtual {p0}, Lcom/snapchat/android/discover/model/ChannelPage;->l()Lcom/snapchat/android/discover/model/MediaState;

    move-result-object v0

    .line 193
    :goto_0
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v3

    aput-object v0, v4, v2

    const/4 v5, 0x2

    aput-object v1, v4, v5

    .line 195
    sget-object v4, Lcom/snapchat/android/discover/model/MediaState;->SUCCESS:Lcom/snapchat/android/discover/model/MediaState;

    if-ne v0, v4, :cond_1

    if-eqz v1, :cond_1

    move v0, v2

    :goto_1
    return v0

    .line 189
    :cond_0
    invoke-virtual {p0}, Lcom/snapchat/android/discover/model/ChannelPage;->h()Ljava/lang/String;

    move-result-object v1

    .line 190
    invoke-virtual {p0}, Lcom/snapchat/android/discover/model/ChannelPage;->k()Lcom/snapchat/android/discover/model/MediaState;

    move-result-object v0

    goto :goto_0

    :cond_1
    move v0, v3

    .line 195
    goto :goto_1
.end method


# virtual methods
.method public final a(Landroid/widget/ImageView;Lcom/snapchat/android/discover/model/ChannelPage;ZLafg$a;Landroid/os/Bundle;)Z
    .locals 10
    .param p1    # Landroid/widget/ImageView;
        .annotation build Lchc;
        .end annotation
    .end param
    .annotation build Lcdn;
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 87
    invoke-static {}, Lbhp;->a()V

    .line 89
    iget-object v0, p0, Lafg;->a:Lawn;

    if-nez v0, :cond_1

    .line 90
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Attempt to load brand icon but bitmap loader not initialized!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v0, v7

    .line 135
    :goto_0
    return v0

    .line 96
    :cond_1
    invoke-static {p2, p3}, Lafg;->a(Lcom/snapchat/android/discover/model/ChannelPage;Z)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v7

    .line 98
    goto :goto_0

    .line 102
    :cond_2
    if-eqz p3, :cond_3

    .line 103
    invoke-virtual {p2}, Lcom/snapchat/android/discover/model/ChannelPage;->i()Ljava/lang/String;

    move-result-object v3

    .line 108
    :goto_1
    new-instance v0, Lawv$a;

    invoke-direct {v0}, Lawv$a;-><init>()V

    invoke-virtual {v0, v3}, Lawv$a;->a(Ljava/lang/String;)Lawv$a;

    move-result-object v0

    iput-object p1, v0, Lawv$a;->mImageView:Landroid/widget/ImageView;

    iput-boolean v8, v0, Lawv$a;->mRequireExactDimensions:Z

    iput-object p5, v0, Lawv$a;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0}, Lawv$a;->a()Lawv;

    move-result-object v9

    .line 115
    new-instance v0, Lafp;

    iget-object v1, p0, Lafg;->c:Lacy;

    move-object v2, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lafp;-><init>(Lacy;Lcom/snapchat/android/discover/model/ChannelPage;Ljava/lang/String;ZLafg$a;Landroid/os/Bundle;)V

    .line 118
    iget-object v1, p0, Lafg;->d:Lafo;

    invoke-virtual {v1, v3}, Lafo;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 119
    if-eqz v1, :cond_4

    .line 120
    new-array v2, v8, [Ljava/lang/Object;

    aput-object p2, v2, v7

    .line 121
    new-instance v2, Lawm;

    invoke-direct {v2, v1, v7}, Lawm;-><init>(Landroid/graphics/Bitmap;Z)V

    .line 122
    invoke-virtual {v0, v2, v9}, Lafp;->a(Lawm;Lawv;)V

    move v0, v8

    .line 123
    goto :goto_0

    .line 105
    :cond_3
    invoke-virtual {p2}, Lcom/snapchat/android/discover/model/ChannelPage;->h()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 126
    :cond_4
    new-array v1, v8, [Ljava/lang/Object;

    aput-object p2, v1, v7

    .line 127
    iget-object v1, p0, Lafg;->a:Lawn;

    new-array v2, v8, [Laww;

    new-instance v4, Lafg$1;

    invoke-direct {v4, p0, v0, v3}, Lafg$1;-><init>(Lafg;Lafp;Ljava/lang/String;)V

    aput-object v4, v2, v7

    invoke-virtual {v1, v9, v2}, Lawn;->b(Lawv;[Laww;)V

    move v0, v8

    .line 135
    goto :goto_0
.end method
