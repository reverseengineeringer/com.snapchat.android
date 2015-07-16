.class public final Lael$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Laem$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lael;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Landroid/widget/ImageView;

.field final synthetic d:Lael;


# direct methods
.method public constructor <init>(Lael;Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 278
    iput-object p1, p0, Lael$1;->d:Lael;

    iput-object p2, p0, Lael$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lael$1;->b:Ljava/lang/String;

    iput-object p4, p0, Lael$1;->c:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 297
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lael$1;->a:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lael$1;->b:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 301
    new-instance v0, Lael$b;

    iget-object v1, p0, Lael$1;->d:Lael;

    iget-object v2, p0, Lael$1;->a:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lael$b;-><init>(Lael;Ljava/lang/String;)V

    .line 302
    new-instance v1, Lael$1$2;

    invoke-direct {v1, p0, v0}, Lael$1$2;-><init>(Lael$1;Lael$b;)V

    invoke-static {v1}, Lbhp;->a(Ljava/lang/Runnable;)V

    .line 308
    return-void
.end method

.method public final a(Lcom/snapchat/android/discover/model/ChannelPage;)V
    .locals 3
    .param p1    # Lcom/snapchat/android/discover/model/ChannelPage;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 282
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lael$1;->a:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lael$1;->b:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 285
    new-instance v0, Lael$b;

    iget-object v1, p0, Lael$1;->d:Lael;

    iget-object v2, p0, Lael$1;->a:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lael$b;-><init>(Lael;Ljava/lang/String;)V

    .line 286
    new-instance v1, Lael$1$1;

    invoke-direct {v1, p0, p1, v0}, Lael$1$1;-><init>(Lael$1;Lcom/snapchat/android/discover/model/ChannelPage;Lael$b;)V

    invoke-static {v1}, Lbhp;->a(Ljava/lang/Runnable;)V

    .line 293
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lchd;
        .end annotation
    .end param

    .prologue
    .line 312
    iget-object v0, p0, Lael$1;->d:Lael;

    iget-object v1, p0, Lael$1;->a:Ljava/lang/String;

    iget-object v2, p0, Lael$1;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1}, Lael;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1
    .annotation build Lchc;
    .end annotation

    .prologue
    .line 319
    iget-object v0, p0, Lael$1;->b:Ljava/lang/String;

    return-object v0
.end method
