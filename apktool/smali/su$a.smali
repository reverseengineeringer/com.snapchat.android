.class final Lsu$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation runtime Ltx;
.end annotation


# instance fields
.field final passcode:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "passcode"
    .end annotation
.end field

.field final passcodeConfirmation:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "passcode_confirmation_enabled"
    .end annotation
.end field

.field final synthetic this$0:Lsu;


# direct methods
.method constructor <init>(Lsu;)V
    .locals 1

    .prologue
    .line 46
    iput-object p1, p0, Lsu$a;->this$0:Lsu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iget-object v0, p0, Lsu$a;->this$0:Lsu;

    iget-boolean v0, v0, Lsu;->mPasscodeEnabled:Z

    iput-boolean v0, p0, Lsu$a;->passcodeConfirmation:Z

    .line 49
    iget-object v0, p0, Lsu$a;->this$0:Lsu;

    iget-object v0, v0, Lsu;->mPasscode:Ljava/lang/String;

    iput-object v0, p0, Lsu$a;->passcode:Ljava/lang/String;

    return-void
.end method
