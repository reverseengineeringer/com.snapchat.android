.class final Lcom/snapchat/android/fragments/addfriends/AddFriendsFromCameraRollFragment$1;
.super Landroid/support/v7/widget/GridLayoutManager$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/addfriends/AddFriendsFromCameraRollFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/snapchat/android/fragments/addfriends/AddFriendsFromCameraRollFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/addfriends/AddFriendsFromCameraRollFragment;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFromCameraRollFragment$1;->b:Lcom/snapchat/android/fragments/addfriends/AddFriendsFromCameraRollFragment;

    invoke-direct {p0}, Landroid/support/v7/widget/GridLayoutManager$b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 1

    .prologue
    .line 46
    if-nez p1, :cond_0

    .line 47
    const/4 v0, 0x3

    .line 49
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
