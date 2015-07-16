.class public Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedAdapter;
.super Landroid/support/v7/widget/RecyclerView$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedAdapter$1;,
        Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedAdapter$FeedViewType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$a",
        "<",
        "Lvt;",
        ">;"
    }
.end annotation


# instance fields
.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lvp;",
            ">;"
        }
    .end annotation
.end field

.field public d:Larm;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
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
    .line 36
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$a;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedAdapter;->c:Ljava/util/List;

    .line 38
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedAdapter;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final a(I)I
    .locals 4

    .prologue
    .line 73
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedAdapter;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvp;

    .line 74
    invoke-interface {v0}, Lvp;->B_()Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedAdapter$FeedViewType;

    move-result-object v0

    .line 75
    sget-object v1, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedAdapter$1;->a:[I

    invoke-virtual {v0}, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedAdapter$FeedViewType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 81
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unsupported view type: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 77
    :pswitch_0
    sget-object v0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedAdapter$FeedViewType;->CONVERSATION:Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedAdapter$FeedViewType;

    invoke-virtual {v0}, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedAdapter$FeedViewType;->ordinal()I

    move-result v0

    .line 79
    :goto_0
    return v0

    :pswitch_1
    sget-object v0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedAdapter$FeedViewType;->LOADING:Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedAdapter$FeedViewType;

    invoke-virtual {v0}, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedAdapter$FeedViewType;->ordinal()I

    move-result v0

    goto :goto_0

    .line 75
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final synthetic a(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$s;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 25
    invoke-static {}, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedAdapter$FeedViewType;->values()[Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedAdapter$FeedViewType;

    move-result-object v0

    aget-object v0, v0, p2

    sget-object v1, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedAdapter$1;->a:[I

    invoke-virtual {v0}, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedAdapter$FeedViewType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04005e

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    new-instance v0, Lvs;

    invoke-direct {v0, v1}, Lvs;-><init>(Landroid/view/View;)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04005d

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    new-instance v0, Lvv;

    invoke-direct {v0, v1}, Lvv;-><init>(Landroid/view/View;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic a(Landroid/support/v7/widget/RecyclerView$s;I)V
    .locals 0

    .prologue
    .line 25
    check-cast p1, Lvt;

    invoke-virtual {p0, p1, p2}, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedAdapter;->a(Lvt;I)V

    return-void
.end method

.method public final a(Larm;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedAdapter;->d:Larm;

    .line 42
    return-void
.end method

.method public a(Lvt;I)V
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lvt;->b(Z)V

    .line 64
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedAdapter;->c:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvp;

    .line 65
    invoke-virtual {p1, v0}, Lvt;->a(Lvp;)V

    .line 66
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedAdapter;->d:Larm;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedAdapter;->d:Larm;

    invoke-interface {v0, p1}, Larm;->a(Landroid/support/v7/widget/RecyclerView$s;)V

    .line 69
    :cond_0
    return-void
.end method
