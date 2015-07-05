.class final Lqm$a;
.super Lpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lqm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation runtime Ltn;
.end annotation


# instance fields
.field recipient:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "recipient"
    .end annotation
.end field

.field final synthetic this$0:Lqm;


# direct methods
.method constructor <init>(Lqm;)V
    .locals 1

    .prologue
    .line 27
    iput-object p1, p0, Lqm$a;->this$0:Lqm;

    invoke-direct {p0}, Lpl;-><init>()V

    .line 28
    iget-object v0, p0, Lqm$a;->this$0:Lqm;

    iget-object v0, v0, Lqm;->mFriendName:Ljava/lang/String;

    iput-object v0, p0, Lqm$a;->recipient:Ljava/lang/String;

    return-void
.end method
