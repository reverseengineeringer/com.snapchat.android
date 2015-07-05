.class final Lcom/snapchat/android/fragments/chat/ChatFragment$2$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/chat/ChatFragment$2$1;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/chat/ChatFragment$2$1;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/chat/ChatFragment$2$1;)V
    .locals 0

    .prologue
    .line 1214
    iput-object p1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$2$1$1;->a:Lcom/snapchat/android/fragments/chat/ChatFragment$2$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 1217
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$2$1$1;->a:Lcom/snapchat/android/fragments/chat/ChatFragment$2$1;

    iget-object v0, v0, Lcom/snapchat/android/fragments/chat/ChatFragment$2$1;->d:Lcom/snapchat/android/fragments/chat/ChatFragment$2;

    iget-object v0, v0, Lcom/snapchat/android/fragments/chat/ChatFragment$2;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    iget-object v0, v0, Lcom/snapchat/android/fragments/chat/ChatFragment;->h:Lxu;

    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$2$1$1;->a:Lcom/snapchat/android/fragments/chat/ChatFragment$2$1;

    iget-object v0, v0, Lcom/snapchat/android/fragments/chat/ChatFragment$2$1;->d:Lcom/snapchat/android/fragments/chat/ChatFragment$2;

    iget-object v0, v0, Lcom/snapchat/android/fragments/chat/ChatFragment$2;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->i(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lcom/snapchat/android/ui/CursorCallbackEditText;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$2$1$1;->a:Lcom/snapchat/android/fragments/chat/ChatFragment$2$1;

    iget v1, v1, Lcom/snapchat/android/fragments/chat/ChatFragment$2$1;->b:I

    invoke-static {v0, v1}, Lxu;->a(Landroid/widget/EditText;I)V

    .line 1218
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$2$1$1;->a:Lcom/snapchat/android/fragments/chat/ChatFragment$2$1;

    iget-object v0, v0, Lcom/snapchat/android/fragments/chat/ChatFragment$2$1;->d:Lcom/snapchat/android/fragments/chat/ChatFragment$2;

    iget-object v0, v0, Lcom/snapchat/android/fragments/chat/ChatFragment$2;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->q(Lcom/snapchat/android/fragments/chat/ChatFragment;)V

    .line 1219
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$2$1$1;->a:Lcom/snapchat/android/fragments/chat/ChatFragment$2$1;

    iget v0, v0, Lcom/snapchat/android/fragments/chat/ChatFragment$2$1;->c:I

    invoke-static {v0}, Lcom/snapchat/android/util/CashUtils;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/snapchat/android/analytics/AnalyticsEvents;->u(Ljava/lang/String;)V

    .line 1220
    return-void
.end method
