.class public final Lqh$a;
.super Lqc;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lqh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation runtime Lud;
.end annotation


# instance fields
.field request_username:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "request_username"
    .end annotation
.end field

.field final synthetic this$0:Lqh;


# direct methods
.method public constructor <init>(Lqh;)V
    .locals 1

    .prologue
    .line 55
    iput-object p1, p0, Lqh$a;->this$0:Lqh;

    invoke-direct {p0}, Lqc;-><init>()V

    .line 56
    iget-object v0, p0, Lqh$a;->this$0:Lqh;

    iget-object v0, v0, Lqh;->mFriend:Lcom/snapchat/android/model/Friend;

    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->l()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lqh$a;->request_username:Ljava/lang/String;

    return-void
.end method
