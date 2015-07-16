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

.annotation runtime Lun;
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

.field final synthetic this$0:Lsu;


# direct methods
.method constructor <init>(Lsu;)V
    .locals 1

    .prologue
    .line 48
    iput-object p1, p0, Lsu$a;->this$0:Lsu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iget-object v0, p0, Lsu$a;->this$0:Lsu;

    iget-object v0, v0, Lsu;->mPhoneNumber:Ljava/lang/String;

    iput-object v0, p0, Lsu$a;->phoneNumber:Ljava/lang/String;

    .line 51
    iget-object v0, p0, Lsu$a;->this$0:Lsu;

    iget-object v0, v0, Lsu;->mSignature:Ljava/lang/String;

    iput-object v0, p0, Lsu$a;->signature:Ljava/lang/String;

    return-void
.end method
