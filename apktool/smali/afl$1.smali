.class final Lafl$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lafl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lafl;


# direct methods
.method constructor <init>(Lafl;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lafl$1;->a:Lafl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    const v3, 0x7f0a0001

    .line 117
    move-object v0, p1

    check-cast v0, Lcom/snapchat/android/discover/ui/ChannelView;

    .line 118
    const/4 v1, -0x1

    .line 119
    invoke-virtual {p1, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 120
    invoke-virtual {p1, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 122
    :cond_0
    iget-object v2, p0, Lafl$1;->a:Lafl;

    iget-object v2, v2, Lafl;->c:Lafh;

    iget-object v3, p0, Lafl$1;->a:Lafl;

    iget-object v3, v3, Lafl;->d:Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;

    sget-object v4, Lcom/snapchat/android/discover/model/EditionOpenOrigin;->DISCOVER:Lcom/snapchat/android/discover/model/EditionOpenOrigin;

    invoke-virtual {v2, v0, v3, v4, v1}, Lafh;->a(Lcom/snapchat/android/discover/ui/ChannelView;Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;Lcom/snapchat/android/discover/model/EditionOpenOrigin;I)Z

    .line 124
    return-void
.end method
