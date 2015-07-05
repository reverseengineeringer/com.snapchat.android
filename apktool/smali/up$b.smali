.class final Lup$b;
.super Lpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation

.annotation runtime Ltn;
.end annotation


# instance fields
.field iterToken:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "offset"
    .end annotation
.end field

.field final synthetic this$0:Lup;


# direct methods
.method constructor <init>(Lup;)V
    .locals 1

    .prologue
    .line 46
    iput-object p1, p0, Lup$b;->this$0:Lup;

    invoke-direct {p0}, Lpl;-><init>()V

    .line 47
    iget-object v0, p0, Lup$b;->this$0:Lup;

    iget-object v0, v0, Lup;->mIterToken:Ljava/lang/String;

    iput-object v0, p0, Lup$b;->iterToken:Ljava/lang/String;

    return-void
.end method
