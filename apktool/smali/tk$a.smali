.class final Ltk$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltk;
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

.field final passcodeConfirmation:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "passcode_confirmation_enabled"
    .end annotation
.end field

.field final synthetic this$0:Ltk;


# direct methods
.method constructor <init>(Ltk;)V
    .locals 1

    .prologue
    .line 46
    iput-object p1, p0, Ltk$a;->this$0:Ltk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iget-object v0, p0, Ltk$a;->this$0:Ltk;

    iget-boolean v0, v0, Ltk;->mPasscodeEnabled:Z

    iput-boolean v0, p0, Ltk$a;->passcodeConfirmation:Z

    .line 49
    iget-object v0, p0, Ltk$a;->this$0:Ltk;

    iget-object v0, v0, Ltk;->mPasscode:Ljava/lang/String;

    iput-object v0, p0, Ltk$a;->passcode:Ljava/lang/String;

    return-void
.end method
