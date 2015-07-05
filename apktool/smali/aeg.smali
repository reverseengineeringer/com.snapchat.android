.class public final Laeg;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laeg$a;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# static fields
.field private static final b:Laeg;


# instance fields
.field public a:Lavp;

.field private final c:Laby;

.field private final d:Laeo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    new-instance v0, Laeg;

    invoke-direct {v0}, Laeg;-><init>()V

    sput-object v0, Laeg;->b:Laeg;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 58
    invoke-static {}, Laby;->a()Laby;

    move-result-object v0

    invoke-static {}, Laeo;->a()Laeo;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Laeg;-><init>(Laby;Laeo;)V

    .line 59
    return-void
.end method

.method private constructor <init>(Laby;Laeo;)V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Laeg;->c:Laby;

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Laeg;->a:Lavp;

    .line 67
    iput-object p2, p0, Laeg;->d:Laeo;

    .line 68
    return-void
.end method

.method public static a()Laeg;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Laeg;->b:Laeg;

    return-object v0
.end method

.method static synthetic a(Laeg;)Laeo;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Laeg;->d:Laeo;

    return-object v0
.end method

.method public static a(Lcom/snapchat/android/discover/model/ChannelPage;Z)Z
    .locals 8

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
    const-string v4, "DiscoverBrandIconProvider"

    const-string v5, "DISCOVER-MEDIA-BRAND-ICON: %s loading state %s URI %s"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p0, v6, v3

    aput-object v0, v6, v2

    const/4 v7, 0x2

    aput-object v1, v6, v7

    invoke-static {v4, v5, v6}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

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
.method public final a(Landroid/widget/ImageView;Lcom/snapchat/android/discover/model/ChannelPage;ZLaeg$a;Landroid/os/Bundle;)Z
    .locals 10
    .param p1    # Landroid/widget/ImageView;
        .annotation build Lcgb;
        .end annotation
    .end param
    .annotation build Lccm;
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 87
    invoke-static {}, Lbgp;->a()V

    .line 89
    iget-object v0, p0, Laeg;->a:Lavp;

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
    invoke-static {p2, p3}, Laeg;->a(Lcom/snapchat/android/discover/model/ChannelPage;Z)Z

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
    new-instance v0, Lavx$a;

    invoke-direct {v0}, Lavx$a;-><init>()V

    invoke-virtual {v0, v3}, Lavx$a;->a(Ljava/lang/String;)Lavx$a;

    move-result-object v0

    iput-object p1, v0, Lavx$a;->mImageView:Landroid/widget/ImageView;

    iput-boolean v8, v0, Lavx$a;->mRequireExactDimensions:Z

    iput-object p5, v0, Lavx$a;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0}, Lavx$a;->a()Lavx;

    move-result-object v9

    .line 115
    new-instance v0, Laep;

    iget-object v1, p0, Laeg;->c:Laby;

    move-object v2, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Laep;-><init>(Laby;Lcom/snapchat/android/discover/model/ChannelPage;Ljava/lang/String;ZLaeg$a;Landroid/os/Bundle;)V

    .line 118
    iget-object v1, p0, Laeg;->d:Laeo;

    invoke-virtual {v1, v3}, Laeo;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 119
    if-eqz v1, :cond_4

    .line 120
    const-string v2, "DiscoverBrandIconProvider"

    const-string v3, "DISCOVER-MEDIA-BRAND-ICON: Using cached icon for %s"

    new-array v4, v8, [Ljava/lang/Object;

    aput-object p2, v4, v7

    invoke-static {v2, v3, v4}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 121
    new-instance v2, Lavo;

    invoke-direct {v2, v1, v7}, Lavo;-><init>(Landroid/graphics/Bitmap;Z)V

    .line 122
    invoke-virtual {v0, v2, v9}, Laep;->a(Lavo;Lavx;)V

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
    const-string v1, "DiscoverBrandIconProvider"

    const-string v2, "DISCOVER-MEDIA-BRAND-ICON: Submitting request to load icon for %s"

    new-array v4, v8, [Ljava/lang/Object;

    aput-object p2, v4, v7

    invoke-static {v1, v2, v4}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 127
    iget-object v1, p0, Laeg;->a:Lavp;

    new-array v2, v8, [Lavy;

    new-instance v4, Laeg$1;

    invoke-direct {v4, p0, v0, v3}, Laeg$1;-><init>(Laeg;Laep;Ljava/lang/String;)V

    aput-object v4, v2, v7

    invoke-virtual {v1, v9, v2}, Lavp;->b(Lavx;[Lavy;)V

    move v0, v8

    .line 135
    goto :goto_0
.end method
