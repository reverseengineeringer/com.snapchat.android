.class public final Lacy;
.super Laoq;
.source "SourceFile"


# instance fields
.field private final c:Lacz;


# direct methods
.method public constructor <init>(Landroid/content/Context;Laeh;Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;)V
    .locals 2

    .prologue
    .line 31
    invoke-direct {p0, p1}, Laoq;-><init>(Landroid/content/Context;)V

    .line 33
    new-instance v0, Lacz;

    iget-object v1, p0, Lacy;->a:Landroid/content/Context;

    invoke-direct {v0, v1, p2, p3}, Lacz;-><init>(Landroid/content/Context;Laeh;Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;)V

    iput-object v0, p0, Lacy;->c:Lacz;

    .line 34
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Lcgc;
        .end annotation
    .end param
    .param p3    # Landroid/view/LayoutInflater;
        .annotation build Lcgb;
        .end annotation
    .end param
    .annotation build Lcgb;
    .end annotation

    .prologue
    .line 63
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesViewType;->DISCOVER:Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesViewType;

    if-eq v0, v1, :cond_1

    .line 64
    :cond_0
    const v0, 0x7f040050

    const/4 v1, 0x0

    invoke-virtual {p3, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 65
    invoke-virtual {p0, p1}, Lacy;->a(Landroid/view/View;)V

    .line 69
    sget-object v0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesViewType;->DISCOVER:Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesViewType;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 72
    :cond_1
    return-object p1
.end method

.method public final a(Landroid/database/Cursor;Z)V
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lacy;->c:Lacz;

    invoke-virtual {v0, p1, p2}, Lacz;->a(Landroid/database/Cursor;Z)Landroid/database/Cursor;

    .line 38
    return-void
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 48
    return-void
.end method

.method public final c()Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesViewType;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesViewType;->DISCOVER:Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesViewType;

    return-object v0
.end method

.method public final d()V
    .locals 0

    .prologue
    .line 58
    return-void
.end method

.method public final e()Landroid/widget/BaseAdapter;
    .locals 1
    .annotation build Lcgb;
    .end annotation

    .prologue
    .line 78
    iget-object v0, p0, Lacy;->c:Lacz;

    return-object v0
.end method

.method public final f()V
    .locals 0

    .prologue
    .line 84
    return-void
.end method

.method public final g()V
    .locals 0

    .prologue
    .line 89
    return-void
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    const-string v0, "discover&"

    return-object v0
.end method

.method public final i()Lcom/snapchat/android/stories/StoriesSection;
    .locals 1

    .prologue
    .line 98
    sget-object v0, Lcom/snapchat/android/stories/StoriesSection;->DISCOVER:Lcom/snapchat/android/stories/StoriesSection;

    return-object v0
.end method

.method public final m_()Z
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lacy;->c:Lacz;

    invoke-virtual {v0}, Lacz;->isEmpty()Z

    move-result v0

    return v0
.end method
