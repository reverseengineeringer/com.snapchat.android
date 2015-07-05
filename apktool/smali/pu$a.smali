.class public final Lpu$a;
.super Lpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation runtime Ltn;
.end annotation


# instance fields
.field final friend:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "friend"
    .end annotation
.end field

.field final hide:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "hide"
    .end annotation
.end field

.field final synthetic this$0:Lpu;


# direct methods
.method constructor <init>(Lpu;)V
    .locals 1

    .prologue
    .line 55
    iput-object p1, p0, Lpu$a;->this$0:Lpu;

    invoke-direct {p0}, Lpl;-><init>()V

    .line 56
    iget-object v0, p1, Lpu;->mFriend:Ljava/lang/String;

    iput-object v0, p0, Lpu$a;->friend:Ljava/lang/String;

    .line 57
    iget-boolean v0, p1, Lpu;->mHide:Z

    iput-boolean v0, p0, Lpu$a;->hide:Z

    .line 58
    return-void
.end method
