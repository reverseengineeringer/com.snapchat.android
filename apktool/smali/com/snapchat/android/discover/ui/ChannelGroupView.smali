.class public Lcom/snapchat/android/discover/ui/ChannelGroupView;
.super Landroid/support/v7/widget/RecyclerView;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/snapchat/android/discover/ui/ChannelGroupView;->setHasFixedSize(Z)V

    .line 16
    return-void
.end method
