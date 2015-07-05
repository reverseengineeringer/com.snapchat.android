.class final Lsd$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation runtime Ltx;
.end annotation


# instance fields
.field final expiration:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "expiration"
    .end annotation
.end field

.field final pan:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "pan"
    .end annotation
.end field

.field final postalCode:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "postal_code"
    .end annotation
.end field

.field final securityCode:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "security_code"
    .end annotation
.end field

.field final synthetic this$0:Lsd;


# direct methods
.method constructor <init>(Lsd;)V
    .locals 1

    .prologue
    .line 54
    iput-object p1, p0, Lsd$a;->this$0:Lsd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iget-object v0, p0, Lsd$a;->this$0:Lsd;

    iget-object v0, v0, Lsd;->mPan:Ljava/lang/String;

    iput-object v0, p0, Lsd$a;->pan:Ljava/lang/String;

    .line 57
    iget-object v0, p0, Lsd$a;->this$0:Lsd;

    iget-object v0, v0, Lsd;->mExpiration:Ljava/lang/String;

    iput-object v0, p0, Lsd$a;->expiration:Ljava/lang/String;

    .line 59
    iget-object v0, p0, Lsd$a;->this$0:Lsd;

    iget-object v0, v0, Lsd;->mSecurityCode:Ljava/lang/String;

    iput-object v0, p0, Lsd$a;->securityCode:Ljava/lang/String;

    .line 61
    iget-object v0, p0, Lsd$a;->this$0:Lsd;

    iget-object v0, v0, Lsd;->mPostalCode:Ljava/lang/String;

    iput-object v0, p0, Lsd$a;->postalCode:Ljava/lang/String;

    return-void
.end method
