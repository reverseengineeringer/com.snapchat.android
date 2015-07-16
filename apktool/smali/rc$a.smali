.class final Lrc$a;
.super Lqc;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation runtime Lud;
.end annotation


# instance fields
.field recipient:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "recipient"
    .end annotation
.end field

.field final synthetic this$0:Lrc;


# direct methods
.method constructor <init>(Lrc;)V
    .locals 1

    .prologue
    .line 27
    iput-object p1, p0, Lrc$a;->this$0:Lrc;

    invoke-direct {p0}, Lqc;-><init>()V

    .line 28
    iget-object v0, p0, Lrc$a;->this$0:Lrc;

    iget-object v0, v0, Lrc;->mFriendName:Ljava/lang/String;

    iput-object v0, p0, Lrc$a;->recipient:Ljava/lang/String;

    return-void
.end method
