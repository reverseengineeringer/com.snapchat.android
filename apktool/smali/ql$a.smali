.class public final Lql$a;
.super Lqc;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lql;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation runtime Lud;
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

.field final synthetic this$0:Lql;


# direct methods
.method constructor <init>(Lql;)V
    .locals 1

    .prologue
    .line 55
    iput-object p1, p0, Lql$a;->this$0:Lql;

    invoke-direct {p0}, Lqc;-><init>()V

    .line 56
    iget-object v0, p1, Lql;->mFriend:Ljava/lang/String;

    iput-object v0, p0, Lql$a;->friend:Ljava/lang/String;

    .line 57
    iget-boolean v0, p1, Lql;->mHide:Z

    iput-boolean v0, p0, Lql$a;->hide:Z

    .line 58
    return-void
.end method
