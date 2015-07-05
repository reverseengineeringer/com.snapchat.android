.class final Lse$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation runtime Ltx;
.end annotation


# instance fields
.field final phoneNumber:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "phone_number"
    .end annotation
.end field

.field final signature:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "signature"
    .end annotation
.end field

.field final synthetic this$0:Lse;


# direct methods
.method constructor <init>(Lse;)V
    .locals 1

    .prologue
    .line 48
    iput-object p1, p0, Lse$a;->this$0:Lse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iget-object v0, p0, Lse$a;->this$0:Lse;

    iget-object v0, v0, Lse;->mPhoneNumber:Ljava/lang/String;

    iput-object v0, p0, Lse$a;->phoneNumber:Ljava/lang/String;

    .line 51
    iget-object v0, p0, Lse$a;->this$0:Lse;

    iget-object v0, v0, Lse;->mSignature:Ljava/lang/String;

    iput-object v0, p0, Lse$a;->signature:Ljava/lang/String;

    return-void
.end method
