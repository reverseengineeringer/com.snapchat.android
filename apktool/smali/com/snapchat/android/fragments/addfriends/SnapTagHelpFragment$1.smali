.class final Lcom/snapchat/android/fragments/addfriends/SnapTagHelpFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/addfriends/SnapTagHelpFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/addfriends/SnapTagHelpFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/addfriends/SnapTagHelpFragment;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/snapchat/android/fragments/addfriends/SnapTagHelpFragment$1;->a:Lcom/snapchat/android/fragments/addfriends/SnapTagHelpFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/SnapTagHelpFragment$1;->a:Lcom/snapchat/android/fragments/addfriends/SnapTagHelpFragment;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/addfriends/SnapTagHelpFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 48
    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 51
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
