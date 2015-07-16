.class public final Lcom/snapchat/android/api2/IpRoutingErrorTask$a;
.super Lqc;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/api2/IpRoutingErrorTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation runtime Lud;
.end annotation


# instance fields
.field errorMessage:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "error_message"
    .end annotation
.end field

.field final synthetic this$0:Lcom/snapchat/android/api2/IpRoutingErrorTask;


# direct methods
.method public constructor <init>(Lcom/snapchat/android/api2/IpRoutingErrorTask;)V
    .locals 2

    .prologue
    .line 37
    iput-object p1, p0, Lcom/snapchat/android/api2/IpRoutingErrorTask$a;->this$0:Lcom/snapchat/android/api2/IpRoutingErrorTask;

    invoke-direct {p0}, Lqc;-><init>()V

    .line 38
    iget-object v0, p0, Lcom/snapchat/android/api2/IpRoutingErrorTask$a;->this$0:Lcom/snapchat/android/api2/IpRoutingErrorTask;

    iget-object v0, v0, Lcom/snapchat/android/api2/IpRoutingErrorTask;->mGsonWrapper:Laum;

    iget-object v1, p0, Lcom/snapchat/android/api2/IpRoutingErrorTask$a;->this$0:Lcom/snapchat/android/api2/IpRoutingErrorTask;

    iget-object v1, v1, Lcom/snapchat/android/api2/IpRoutingErrorTask;->mErrorMap:Ljava/util/Map;

    invoke-virtual {v0, v1}, Laum;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/api2/IpRoutingErrorTask$a;->errorMessage:Ljava/lang/String;

    return-void
.end method
