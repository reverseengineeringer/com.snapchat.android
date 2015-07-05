.class public final Lvg;
.super Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedAdapter;
.source "SourceFile"

# interfaces
.implements Landroid/widget/Filterable;
.implements Lbfe$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvg$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedAdapter;",
        "Landroid/widget/Filterable;",
        "Lbfe$a",
        "<",
        "Lut;",
        ">;"
    }
.end annotation


# instance fields
.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lut;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lvg$a;

.field private final f:Lazo;

.field private g:Lvc;


# direct methods
.method public constructor <init>(Ljava/util/List;Lvg$a;Lazo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lut;",
            ">;",
            "Lvg$a;",
            "Lazo;",
            ")V"
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedAdapter;-><init>(Ljava/util/List;)V

    .line 36
    iput-object p1, p0, Lvg;->d:Ljava/util/List;

    .line 37
    iput-object p2, p0, Lvg;->e:Lvg$a;

    .line 38
    iput-object p3, p0, Lvg;->f:Lazo;

    .line 39
    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Landroid/support/v7/widget/RecyclerView$s;I)V
    .locals 0

    .prologue
    .line 22
    check-cast p1, Lux;

    invoke-virtual {p0, p1, p2}, Lvg;->a(Lux;I)V

    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lut;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 60
    if-nez p1, :cond_0

    .line 61
    iget-object v0, p0, Lvg;->d:Ljava/util/List;

    iput-object v0, p0, Lvg;->c:Ljava/util/List;

    .line 65
    :goto_0
    iget-object v0, p0, Lvg;->e:Lvg$a;

    invoke-interface {v0, p1}, Lvg$a;->a(Ljava/util/List;)V

    .line 66
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$a;->a:Landroid/support/v7/widget/RecyclerView$b;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$b;->b()V

    .line 67
    return-void

    .line 63
    :cond_0
    iput-object p1, p0, Lvg;->c:Ljava/util/List;

    goto :goto_0
.end method

.method public final a(Lux;I)V
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lux;->b(Z)V

    .line 45
    iget-object v0, p0, Lvg;->c:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lut;

    .line 46
    invoke-virtual {p1, v0}, Lux;->a(Lut;)V

    .line 47
    return-void
.end method

.method public final getFilter()Landroid/widget/Filter;
    .locals 3

    .prologue
    .line 51
    iget-object v0, p0, Lvg;->g:Lvc;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Lvc;

    iget-object v1, p0, Lvg;->c:Ljava/util/List;

    iget-object v2, p0, Lvg;->f:Lazo;

    invoke-direct {v0, v1, v2, p0}, Lvc;-><init>(Ljava/util/List;Lazo;Lbfe$a;)V

    iput-object v0, p0, Lvg;->g:Lvc;

    .line 54
    :cond_0
    iget-object v0, p0, Lvg;->g:Lvc;

    return-object v0
.end method
