.class final Lcom/snapchat/android/fragments/chat/ChatFragment$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$RecyclerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/fragments/chat/ChatFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/chat/ChatFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/chat/ChatFragment;)V
    .locals 0

    .prologue
    .line 1276
    iput-object p1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$4;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMovedToScrapHeap(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 1279
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 1280
    invoke-static {p1}, Lawf;->b(Landroid/view/View;)V

    .line 1281
    return-void
.end method
