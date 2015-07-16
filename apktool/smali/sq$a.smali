.class final Lsq$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation runtime Lun;
.end annotation


# instance fields
.field final passcode:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "passcode"
    .end annotation
.end field

.field final synthetic this$0:Lsq;


# direct methods
.method constructor <init>(Lsq;)V
    .locals 1

    .prologue
    .line 29
    iput-object p1, p0, Lsq$a;->this$0:Lsq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iget-object v0, p0, Lsq$a;->this$0:Lsq;

    iget-object v0, v0, Lsq;->mPasscode:Ljava/lang/String;

    iput-object v0, p0, Lsq$a;->passcode:Ljava/lang/String;

    return-void
.end method
