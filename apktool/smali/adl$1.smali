.class public final Ladl$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ladm$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ladl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Landroid/widget/ImageView;

.field final synthetic d:Ladl;


# direct methods
.method public constructor <init>(Ladl;Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 278
    iput-object p1, p0, Ladl$1;->d:Ladl;

    iput-object p2, p0, Ladl$1;->a:Ljava/lang/String;

    iput-object p3, p0, Ladl$1;->b:Ljava/lang/String;

    iput-object p4, p0, Ladl$1;->c:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .prologue
    .line 297
    const-string v0, "DiscoverDeepLinkController"

    const-string v1, "DISCOVER-LINK: %s - Intro media unavailable for %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Ladl$1;->a:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Ladl$1;->b:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 301
    new-instance v0, Ladl$b;

    iget-object v1, p0, Ladl$1;->d:Ladl;

    iget-object v2, p0, Ladl$1;->a:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ladl$b;-><init>(Ladl;Ljava/lang/String;)V

    .line 302
    new-instance v1, Ladl$1$2;

    invoke-direct {v1, p0, v0}, Ladl$1$2;-><init>(Ladl$1;Ladl$b;)V

    invoke-static {v1}, Lbgp;->a(Ljava/lang/Runnable;)V

    .line 308
    return-void
.end method

.method public final a(Lcom/snapchat/android/discover/model/ChannelPage;)V
    .locals 5
    .param p1    # Lcom/snapchat/android/discover/model/ChannelPage;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 282
    const-string v0, "DiscoverDeepLinkController"

    const-string v1, "DISCOVER-LINK: %s - Intro media has become available for %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Ladl$1;->a:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Ladl$1;->b:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 285
    new-instance v0, Ladl$b;

    iget-object v1, p0, Ladl$1;->d:Ladl;

    iget-object v2, p0, Ladl$1;->a:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ladl$b;-><init>(Ladl;Ljava/lang/String;)V

    .line 286
    new-instance v1, Ladl$1$1;

    invoke-direct {v1, p0, p1, v0}, Ladl$1$1;-><init>(Ladl$1;Lcom/snapchat/android/discover/model/ChannelPage;Ladl$b;)V

    invoke-static {v1}, Lbgp;->a(Ljava/lang/Runnable;)V

    .line 293
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lcgc;
        .end annotation
    .end param

    .prologue
    .line 312
    iget-object v0, p0, Ladl$1;->d:Ladl;

    iget-object v1, p0, Ladl$1;->a:Ljava/lang/String;

    iget-object v2, p0, Ladl$1;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1}, Ladl;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1
    .annotation build Lcgb;
    .end annotation

    .prologue
    .line 319
    iget-object v0, p0, Ladl$1;->b:Ljava/lang/String;

    return-object v0
.end method
