.class public final Lpq$a;
.super Lpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation runtime Ltn;
.end annotation


# instance fields
.field request_username:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "request_username"
    .end annotation
.end field

.field final synthetic this$0:Lpq;


# direct methods
.method public constructor <init>(Lpq;)V
    .locals 1

    .prologue
    .line 55
    iput-object p1, p0, Lpq$a;->this$0:Lpq;

    invoke-direct {p0}, Lpl;-><init>()V

    .line 56
    iget-object v0, p0, Lpq$a;->this$0:Lpq;

    iget-object v0, v0, Lpq;->mFriend:Lcom/snapchat/android/model/Friend;

    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->h()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lpq$a;->request_username:Ljava/lang/String;

    return-void
.end method
