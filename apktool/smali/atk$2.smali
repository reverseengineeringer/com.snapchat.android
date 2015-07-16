.class final Latk$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Latk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/ui/SwipeImageView;

.field final synthetic b:Lasv;

.field final synthetic c:Ljava/util/List;

.field final synthetic d:Latk;


# direct methods
.method constructor <init>(Latk;Lcom/snapchat/android/ui/SwipeImageView;Lasv;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Latk$2;->d:Latk;

    iput-object p2, p0, Latk$2;->a:Lcom/snapchat/android/ui/SwipeImageView;

    iput-object p3, p0, Latk$2;->b:Lasv;

    iput-object p4, p0, Latk$2;->c:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .prologue
    .line 83
    iget-object v1, p0, Latk$2;->d:Latk;

    iget-object v2, p0, Latk$2;->a:Lcom/snapchat/android/ui/SwipeImageView;

    iget-object v3, p0, Latk$2;->b:Lasv;

    iget-object v4, p0, Latk$2;->c:Ljava/util/List;

    new-instance v5, Ljava/util/ArrayList;

    invoke-virtual {v3}, Lasv;->b()I

    move-result v0

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v3}, Lasv;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lasm;

    invoke-virtual {v0}, Lasm;->b()Lcom/snapchat/android/ui/swipefilters/FilterPageType;

    move-result-object v7

    sget-object v8, Lcom/snapchat/android/ui/swipefilters/FilterPageType;->GEOFILTER:Lcom/snapchat/android/ui/swipefilters/FilterPageType;

    if-ne v7, v8, :cond_0

    check-cast v0, Lata;

    iget-object v0, v0, Lata;->b:Lajr;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v4, v5}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    invoke-virtual {v2}, Lcom/snapchat/android/ui/SwipeImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v4, v0}, Latk;->a(Ljava/util/List;Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v3, v2, v0}, Latk;->a(Lasv;Lcom/snapchat/android/ui/SwipeImageView;Ljava/util/List;)V

    .line 84
    return-void
.end method
