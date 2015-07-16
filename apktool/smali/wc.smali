.class public final Lwc;
.super Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedAdapter;
.source "SourceFile"

# interfaces
.implements Landroid/widget/Filterable;
.implements Lbge$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwc$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedAdapter;",
        "Landroid/widget/Filterable;",
        "Lbge$a",
        "<",
        "Lvp;",
        ">;"
    }
.end annotation


# instance fields
.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lvp;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lwc$a;

.field private final g:Lban;

.field private h:Lvy;


# direct methods
.method public constructor <init>(Ljava/util/List;Lwc$a;Lban;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lvp;",
            ">;",
            "Lwc$a;",
            "Lban;",
            ")V"
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedAdapter;-><init>(Ljava/util/List;)V

    .line 37
    iput-object p1, p0, Lwc;->e:Ljava/util/List;

    .line 38
    iput-object p2, p0, Lwc;->f:Lwc$a;

    .line 39
    iput-object p3, p0, Lwc;->g:Lban;

    .line 40
    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Landroid/support/v7/widget/RecyclerView$s;I)V
    .locals 0

    .prologue
    .line 23
    check-cast p1, Lvt;

    invoke-virtual {p0, p1, p2}, Lwc;->a(Lvt;I)V

    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lvp;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 64
    if-nez p1, :cond_0

    .line 65
    iget-object v0, p0, Lwc;->e:Ljava/util/List;

    iput-object v0, p0, Lwc;->c:Ljava/util/List;

    .line 69
    :goto_0
    iget-object v0, p0, Lwc;->f:Lwc$a;

    invoke-interface {v0, p1}, Lwc$a;->a(Ljava/util/List;)V

    .line 70
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$a;->a:Landroid/support/v7/widget/RecyclerView$b;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$b;->b()V

    .line 71
    return-void

    .line 67
    :cond_0
    iput-object p1, p0, Lwc;->c:Ljava/util/List;

    goto :goto_0
.end method

.method public final a(Lvt;I)V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lvt;->b(Z)V

    .line 46
    iget-object v0, p0, Lwc;->c:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvp;

    .line 47
    invoke-virtual {p1, v0}, Lvt;->a(Lvp;)V

    .line 48
    iget-object v0, p0, Lwc;->d:Larm;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lwc;->d:Larm;

    invoke-interface {v0, p1}, Larm;->a(Landroid/support/v7/widget/RecyclerView$s;)V

    .line 51
    :cond_0
    return-void
.end method

.method public final getFilter()Landroid/widget/Filter;
    .locals 3

    .prologue
    .line 55
    iget-object v0, p0, Lwc;->h:Lvy;

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Lvy;

    iget-object v1, p0, Lwc;->c:Ljava/util/List;

    iget-object v2, p0, Lwc;->g:Lban;

    invoke-direct {v0, v1, v2, p0}, Lvy;-><init>(Ljava/util/List;Lban;Lbge$a;)V

    iput-object v0, p0, Lwc;->h:Lvy;

    .line 58
    :cond_0
    iget-object v0, p0, Lwc;->h:Lvy;

    return-object v0
.end method
