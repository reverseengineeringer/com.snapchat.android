.class final Lcom/snapchat/android/LandingPageActivity$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/LandingPageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/LandingPageActivity;


# direct methods
.method constructor <init>(Lcom/snapchat/android/LandingPageActivity;)V
    .locals 0

    .prologue
    .line 2139
    iput-object p1, p0, Lcom/snapchat/android/LandingPageActivity$7;->a:Lcom/snapchat/android/LandingPageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 2142
    instance-of v0, p2, Lcom/snapchat/android/util/chat/SecureChatService$a;

    if-eqz v0, :cond_0

    .line 2143
    check-cast p2, Lcom/snapchat/android/util/chat/SecureChatService$a;

    iget-object v0, p2, Lcom/snapchat/android/util/chat/SecureChatService$a;->this$0:Lcom/snapchat/android/util/chat/SecureChatService;

    sput-object v0, Lcom/snapchat/android/LandingPageActivity;->i:Lcom/snapchat/android/util/chat/SecureChatService;

    .line 2144
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity$7;->a:Lcom/snapchat/android/LandingPageActivity;

    invoke-static {v0, v1}, Lcom/snapchat/android/LandingPageActivity;->a(Lcom/snapchat/android/LandingPageActivity;Z)Z

    .line 2145
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity$7;->a:Lcom/snapchat/android/LandingPageActivity;

    iget-object v0, v0, Lcom/snapchat/android/LandingPageActivity;->mUser:Lajv;

    if-nez v0, :cond_1

    .line 2146
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity$7;->a:Lcom/snapchat/android/LandingPageActivity;

    invoke-static {v0, v1}, Lcom/snapchat/android/LandingPageActivity;->b(Lcom/snapchat/android/LandingPageActivity;Z)Z

    .line 2151
    :cond_0
    :goto_0
    return-void

    .line 2147
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity$7;->a:Lcom/snapchat/android/LandingPageActivity;

    invoke-virtual {v0}, Lcom/snapchat/android/LandingPageActivity;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity$7;->a:Lcom/snapchat/android/LandingPageActivity;

    iget-object v0, v0, Lcom/snapchat/android/LandingPageActivity;->mUser:Lajv;

    iget-object v0, v0, Lajv;->mMessagingGatewayInfo:Lbil;

    if-eqz v0, :cond_0

    .line 2148
    invoke-static {}, Lcom/snapchat/android/LandingPageActivity;->j()V

    goto :goto_0
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2155
    const/4 v0, 0x0

    sput-object v0, Lcom/snapchat/android/LandingPageActivity;->i:Lcom/snapchat/android/util/chat/SecureChatService;

    .line 2156
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity$7;->a:Lcom/snapchat/android/LandingPageActivity;

    invoke-static {v0, v1}, Lcom/snapchat/android/LandingPageActivity;->a(Lcom/snapchat/android/LandingPageActivity;Z)Z

    .line 2157
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity$7;->a:Lcom/snapchat/android/LandingPageActivity;

    invoke-static {v0, v1}, Lcom/snapchat/android/LandingPageActivity;->b(Lcom/snapchat/android/LandingPageActivity;Z)Z

    .line 2158
    invoke-static {}, Lyq;->a()Lyq;

    move-result-object v0

    invoke-virtual {v0}, Lyq;->c()V

    .line 2159
    return-void
.end method
