.class final Lsa$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsa;
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

.field final synthetic this$0:Lsa;


# direct methods
.method constructor <init>(Lsa;)V
    .locals 1

    .prologue
    .line 29
    iput-object p1, p0, Lsa$a;->this$0:Lsa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iget-object v0, p0, Lsa$a;->this$0:Lsa;

    iget-object v0, v0, Lsa;->mPasscode:Ljava/lang/String;

    iput-object v0, p0, Lsa$a;->passcode:Ljava/lang/String;

    return-void
.end method
