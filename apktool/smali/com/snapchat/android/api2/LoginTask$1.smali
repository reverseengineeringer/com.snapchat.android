.class final Lcom/snapchat/android/api2/LoginTask$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/api2/LoginTask;->getGcmRegistrationId()Ljava/lang/String;
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


# direct methods
.method constructor <init>(Lcom/snapchat/android/api2/LoginTask;)V
    .locals 0

    .prologue
    .line 211
    iput-object p1, p0, Lcom/snapchat/android/api2/LoginTask$1;->this$0:Lcom/snapchat/android/api2/LoginTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 211
    iget-object v0, p0, Lcom/snapchat/android/api2/LoginTask$1;->this$0:Lcom/snapchat/android/api2/LoginTask;

    invoke-static {v0}, Lcom/snapchat/android/api2/LoginTask;->access$000(Lcom/snapchat/android/api2/LoginTask;)Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "191410808405"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->register([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
