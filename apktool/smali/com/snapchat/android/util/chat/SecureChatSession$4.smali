.class final Lcom/snapchat/android/util/chat/SecureChatSession$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/util/chat/SecureChatSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/snapchat/android/util/chat/SecureChatSession;

.field final synthetic val$serverString:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/snapchat/android/util/chat/SecureChatSession;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 295
    iput-object p1, p0, Lcom/snapchat/android/util/chat/SecureChatSession$4;->this$0:Lcom/snapchat/android/util/chat/SecureChatSession;

    iput-object p2, p0, Lcom/snapchat/android/util/chat/SecureChatSession$4;->val$serverString:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 298
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession$4;->this$0:Lcom/snapchat/android/util/chat/SecureChatSession;

    invoke-static {v0}, Lcom/snapchat/android/util/chat/SecureChatSession;->e(Lcom/snapchat/android/util/chat/SecureChatSession;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lakp;->a(Landroid/content/Context;)Lakp;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/util/chat/SecureChatSession$4;->val$serverString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lakp;->d(Ljava/lang/String;)V

    .line 299
    return-void
.end method
