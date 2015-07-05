.class public final Lpv$a;
.super Lpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation runtime Ltn;
.end annotation


# instance fields
.field serializedUrlRoutingMap:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "currentUrlEntities"
    .end annotation
.end field

.field final synthetic this$0:Lpv;

.field username:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "userId"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lpv;)V
    .locals 1

    .prologue
    .line 51
    iput-object p1, p0, Lpv$a;->this$0:Lpv;

    invoke-direct {p0}, Lpl;-><init>()V

    .line 52
    invoke-static {}, Lajx;->l()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lpv$a;->username:Ljava/lang/String;

    .line 54
    iget-object v0, p0, Lpv$a;->this$0:Lpv;

    iget-object v0, v0, Lpv;->mUrlRoutingManager:Lbft;

    invoke-virtual {v0}, Lbft;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lpv$a;->serializedUrlRoutingMap:Ljava/lang/String;

    return-void
.end method
