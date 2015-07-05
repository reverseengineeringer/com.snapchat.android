.class final Lcom/snapchat/android/fragments/chat/ChatWithFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 98
    iput-object p1, p0, Lcom/snapchat/android/fragments/chat/ChatWithFragment$1;->a:Lcom/snapchat/android/fragments/chat/ChatWithFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatWithFragment$1;->a:Lcom/snapchat/android/fragments/chat/ChatWithFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/chat/ChatWithFragment;->a(Lcom/snapchat/android/fragments/chat/ChatWithFragment;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 102
    return-void
.end method
