.class final Lcom/snapchat/android/fragments/chat/ChatWithFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/fragments/chat/ChatWithFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/chat/ChatWithFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/chat/ChatWithFragment;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/snapchat/android/fragments/chat/ChatWithFragment$3;->a:Lcom/snapchat/android/fragments/chat/ChatWithFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 129
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lafy$b;

    .line 130
    iget-object v0, v0, Lafy$b;->b:Lcom/snapchat/android/model/Friend;

    .line 131
    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->a(Ljava/lang/String;)Z

    .line 132
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatWithFragment$3;->a:Lcom/snapchat/android/fragments/chat/ChatWithFragment;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/chat/ChatWithFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/LandingPageActivity;

    .line 133
    invoke-virtual {v0, v1, v1}, Lcom/snapchat/android/LandingPageActivity;->a(IZ)V

    .line 134
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatWithFragment$3;->a:Lcom/snapchat/android/fragments/chat/ChatWithFragment;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/chat/ChatWithFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    .line 135
    return-void
.end method
