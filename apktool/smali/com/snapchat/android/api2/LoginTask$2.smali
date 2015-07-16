.class final Lcom/snapchat/android/api2/LoginTask$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/api2/LoginTask;->getRequestPayload()Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/snapchat/android/api2/LoginTask;

.field final synthetic val$payload:Lcom/snapchat/android/api2/LoginTask$b;


# direct methods
.method constructor <init>(Lcom/snapchat/android/api2/LoginTask;Lcom/snapchat/android/api2/LoginTask$b;)V
    .locals 0

    .prologue
    .line 238
    iput-object p1, p0, Lcom/snapchat/android/api2/LoginTask$2;->this$0:Lcom/snapchat/android/api2/LoginTask;

    iput-object p2, p0, Lcom/snapchat/android/api2/LoginTask$2;->val$payload:Lcom/snapchat/android/api2/LoginTask$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 238
    iget-object v0, p0, Lcom/snapchat/android/api2/LoginTask$2;->this$0:Lcom/snapchat/android/api2/LoginTask;

    invoke-static {v0}, Lcom/snapchat/android/api2/LoginTask;->access$200(Lcom/snapchat/android/api2/LoginTask;)Lmp;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/snapchat/android/api2/LoginTask$2;->this$0:Lcom/snapchat/android/api2/LoginTask;

    iget-object v3, v3, Lcom/snapchat/android/api2/LoginTask;->mLoginName:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/snapchat/android/api2/LoginTask$2;->this$0:Lcom/snapchat/android/api2/LoginTask;

    invoke-static {v3}, Lcom/snapchat/android/api2/LoginTask;->access$100(Lcom/snapchat/android/api2/LoginTask;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/snapchat/android/api2/LoginTask$2;->val$payload:Lcom/snapchat/android/api2/LoginTask$b;

    invoke-virtual {v3}, Lcom/snapchat/android/api2/LoginTask$b;->a()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "/loq/login"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lmp;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
