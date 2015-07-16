.class final Latk$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Latk;->a(Lcom/snapchat/android/ui/SwipeImageView;Lasv;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/ui/SwipeImageView;

.field final synthetic b:Lasv;

.field final synthetic c:Latk;


# direct methods
.method constructor <init>(Latk;Lcom/snapchat/android/ui/SwipeImageView;Lasv;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Latk$1;->c:Latk;

    iput-object p2, p0, Latk$1;->a:Lcom/snapchat/android/ui/SwipeImageView;

    iput-object p3, p0, Latk$1;->b:Lasv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .prologue
    .line 65
    iget-object v1, p0, Latk$1;->c:Latk;

    iget-object v2, p0, Latk$1;->a:Lcom/snapchat/android/ui/SwipeImageView;

    iget-object v3, p0, Latk$1;->b:Lasv;

    iget-object v0, v1, Latk;->a:Laiy;

    invoke-interface {v0}, Laiy;->c()Ljava/util/List;

    move-result-object v0

    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lajr;

    iget-object v6, v0, Lajr;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v0, Latk$2;

    invoke-direct {v0, v1, v2, v3, v4}, Latk$2;-><init>(Latk;Lcom/snapchat/android/ui/SwipeImageView;Lasv;Ljava/util/List;)V

    invoke-static {v0}, Lbhp;->a(Ljava/lang/Runnable;)V

    .line 66
    return-void
.end method
