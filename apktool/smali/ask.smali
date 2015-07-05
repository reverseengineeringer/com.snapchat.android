.class public final Lask;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lasj;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lcom/snapchat/android/ui/SwipeImageView;

.field public final c:Larw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Larw",
            "<",
            "Larn;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/snapchat/android/ui/SwipeImageView;Larw;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/snapchat/android/ui/SwipeImageView;",
            "Larw",
            "<",
            "Larn;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lask;->a:Ljava/util/ArrayList;

    .line 26
    iput-object p1, p0, Lask;->b:Lcom/snapchat/android/ui/SwipeImageView;

    .line 27
    iput-object p2, p0, Lask;->c:Larw;

    .line 28
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 35
    :goto_0
    iget-object v0, p0, Lask;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 36
    iget-object v0, p0, Lask;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lasj;

    .line 37
    iget-object v2, p0, Lask;->b:Lcom/snapchat/android/ui/SwipeImageView;

    iget-object v3, p0, Lask;->c:Larw;

    invoke-virtual {v0, v2, v3}, Lasj;->a(Lcom/snapchat/android/ui/SwipeImageView;Larw;)V

    goto :goto_0

    :cond_0
    move v0, v1

    .line 39
    :goto_1
    iget-object v1, p0, Lask;->c:Larw;

    invoke-virtual {v1}, Larw;->b()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lask;->c:Larw;

    invoke-virtual {v1, v0}, Larw;->a(I)Larn;

    move-result-object v1

    invoke-virtual {v1}, Larn;->b()Lcom/snapchat/android/ui/swipefilters/FilterPageType;

    move-result-object v2

    sget-object v3, Lcom/snapchat/android/ui/swipefilters/FilterPageType;->INFOFILTER:Lcom/snapchat/android/ui/swipefilters/FilterPageType;

    if-ne v2, v3, :cond_1

    invoke-virtual {v1}, Larn;->d()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Larn;->d()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->bringToFront()V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 40
    :cond_2
    return-void
.end method

.method public final a(Lasj;)V
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lask;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    return-void
.end method
